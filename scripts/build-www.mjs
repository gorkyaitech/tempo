// Assembles www/ — the web assets Capacitor bundles into the native app.
// The PWA files stay untouched for GitHub Pages; this produces the native
// variant: index.html IS the app, service worker stripped, storage bridged.
import { mkdirSync, rmSync, cpSync, readFileSync, writeFileSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = join(dirname(fileURLToPath(import.meta.url)), '..');
const www = join(root, 'www');

rmSync(www, { recursive: true, force: true });
mkdirSync(www, { recursive: true });

// static assets the app needs
cpSync(join(root, 'support.js'), join(www, 'support.js'));
cpSync(join(root, 'vendor'), join(www, 'vendor'), { recursive: true });
cpSync(join(root, '_ds'), join(www, '_ds'), { recursive: true });
cpSync(join(root, 'icons'), join(www, 'icons'), { recursive: true });

// the app page, adapted for native
let html = readFileSync(join(root, 'Tempo.dc.html'), 'utf8');

// no PWA manifest / service worker inside the native shell
html = html.replace(/<link rel="manifest"[^>]*>\s*/g, '');
html = html.replace(/<script>\s*if \('serviceWorker' in navigator\)[\s\S]*?<\/script>\s*/m, '');

// support.js is injected by native-boot.js AFTER durable storage is restored
html = html.replace('<script src="./support.js"></script>', '<script src="./native-boot.js"></script>');

writeFileSync(join(www, 'index.html'), html);

// native boot: restore the Preferences backup into localStorage before the
// app boots, and mirror every future save back to Preferences. WKWebView
// localStorage can be evicted under storage pressure — Preferences cannot.
writeFileSync(join(www, 'native-boot.js'), `(function () {
  var KEY = 'tempo.v1';
  function inject() {
    var s = document.createElement('script');
    s.src = './support.js';
    document.head.appendChild(s);
  }
  var C = window.Capacitor;
  var P = C && C.Plugins && C.Plugins.Preferences;
  if (P) {
    var orig = localStorage.setItem.bind(localStorage);
    localStorage.setItem = function (k, v) {
      orig(k, v);
      if (k === KEY) { try { P.set({ key: KEY, value: v }); } catch (e) {} }
    };
    if (!localStorage.getItem(KEY)) {
      P.get({ key: KEY })
        .then(function (r) { if (r && r.value) orig(KEY, r.value); })
        .catch(function () {})
        .then(inject);
      return;
    }
  }
  inject();
})();
`);

console.log('www/ assembled for native build');
