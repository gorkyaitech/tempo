/* Tempo service worker — precache the app shell so it works fully offline.
   Same-origin app files are network-first (updates land as soon as you're
   online, cache is the offline fallback); fonts and vendor libs are
   cache-first (immutable). */
const VERSION = 'tempo-v12-long-press-dock';
const SHELL = [
  './',
  './index.html',
  './Tempo.dc.html',
  './support.js',
  './manifest.webmanifest',
  './vendor/react.production.min.js',
  './vendor/react-dom.production.min.js',
  './_ds/modernist-2f47e5dc-f28a-496c-a118-1aa0adbf05c3/styles.css',
  './_ds/modernist-2f47e5dc-f28a-496c-a118-1aa0adbf05c3/_ds_bundle.js',
  './icons/icon-192.png',
  './icons/icon-512.png',
  './icons/icon-512-maskable.png',
  './icons/apple-touch-icon.png'
];

self.addEventListener('install', (e) => {
  e.waitUntil(
    caches.open(VERSION).then((c) => c.addAll(SHELL)).then(() => self.skipWaiting())
  );
});

self.addEventListener('activate', (e) => {
  e.waitUntil(
    caches.keys()
      .then((keys) => Promise.all(keys.filter((k) => k !== VERSION).map((k) => caches.delete(k))))
      .then(() => self.clients.claim())
  );
});

const CACHE_FIRST_HOSTS = ['fonts.googleapis.com', 'fonts.gstatic.com', 'unpkg.com'];

function putCopy(req, res) {
  const copy = res.clone();
  caches.open(VERSION).then((c) => c.put(req, copy));
  return res;
}

self.addEventListener('fetch', (e) => {
  const req = e.request;
  if (req.method !== 'GET') return;
  const url = new URL(req.url);

  // Immutable third-party assets (fonts) and vendor libs: cache-first.
  if (CACHE_FIRST_HOSTS.includes(url.hostname) || url.pathname.startsWith('/vendor/')) {
    e.respondWith(
      caches.match(req, { ignoreSearch: true }).then((hit) =>
        hit || fetch(req).then((res) => (res.ok || res.type === 'opaque') ? putCopy(req, res) : res)
      )
    );
    return;
  }

  // Same-origin app files: network-first, cache fallback for offline.
  if (url.origin === location.origin) {
    e.respondWith(
      fetch(req)
        .then((res) => res.ok ? putCopy(req, res) : res)
        .catch(() =>
          caches.match(req, { ignoreSearch: true }).then((hit) =>
            hit || (req.mode === 'navigate' ? caches.match('./Tempo.dc.html') : Response.error())
          )
        )
    );
  }
});
