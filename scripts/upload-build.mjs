// Uploads a signed IPA to App Store Connect via the native buildUploads
// API — no fastlane, no altool, no Xcode account layer. Auth is a plain
// ES256 JWT from the team API key.
//
// Usage: node scripts/upload-build.mjs <path-to-ipa>
// Env:   ASC_KEY_ID, ASC_ISSUER_ID, ASC_KEY_FILE (path to .p8),
//        ASC_APP_ID, BUNDLE_SHORT (e.g. 1.0), BUNDLE_VERSION (build number)
import { readFileSync, statSync, openSync, readSync, closeSync } from 'node:fs';
import { createSign, createPrivateKey, createHash } from 'node:crypto';

const ipaPath = process.argv[2];
const keyId = process.env.ASC_KEY_ID;
const issuer = process.env.ASC_ISSUER_ID;
const keyFile = process.env.ASC_KEY_FILE;
const appId = process.env.ASC_APP_ID;
const shortVersion = process.env.BUNDLE_SHORT || '1.0';
const bundleVersion = process.env.BUNDLE_VERSION;
if (!ipaPath || !keyId || !issuer || !keyFile || !appId || !bundleVersion) {
  console.error('missing args/env'); process.exit(2);
}
const pem = readFileSync(keyFile, 'utf8');

const b64u = (o) => Buffer.from(JSON.stringify(o)).toString('base64url');
function jwt() {
  const now = Math.floor(Date.now() / 1000) - 30; // backdate vs clock skew
  const unsigned = b64u({ alg: 'ES256', kid: keyId, typ: 'JWT' }) + '.' +
    b64u({ iss: issuer, iat: now, exp: now + 1200, aud: 'appstoreconnect-v1' });
  const s = createSign('SHA256'); s.update(unsigned);
  return unsigned + '.' + s.sign({ key: createPrivateKey(pem), dsaEncoding: 'ieee-p1363' }).toString('base64url');
}
async function api(method, path, body) {
  const r = await fetch('https://api.appstoreconnect.apple.com' + path, {
    method,
    headers: { Authorization: 'Bearer ' + jwt(), 'Content-Type': 'application/json' },
    body: body ? JSON.stringify(body) : undefined
  });
  const text = await r.text();
  let json = null; try { json = text ? JSON.parse(text) : null; } catch {}
  return { status: r.status, json, text };
}
function fail(step, r) {
  console.error(`FAILED at ${step}: ${r.status}\n${r.text?.slice(0, 2000)}`);
  process.exit(1);
}

const size = statSync(ipaPath).size;
const md5 = createHash('md5').update(readFileSync(ipaPath)).digest('hex');
console.log(`IPA: ${ipaPath} (${size} bytes, md5 ${md5})`);
console.log(`build ${shortVersion} (${bundleVersion}) -> app ${appId}`);

// 1. create the build upload reservation
const create = await api('POST', '/v1/buildUploads', {
  data: {
    type: 'buildUploads',
    attributes: { cfBundleShortVersionString: shortVersion, cfBundleVersion: bundleVersion, platform: 'IOS' },
    relationships: { app: { data: { type: 'apps', id: appId } } }
  }
});
if (create.status !== 201) fail('buildUploads create', create);
const buId = create.json.data.id;
console.log('buildUpload:', buId);

// 2. register the file, get upload operations
const file = await api('POST', '/v1/buildUploadFiles', {
  data: {
    type: 'buildUploadFiles',
    attributes: { fileName: 'App.ipa', fileSize: size, assetType: 'ASSET' },
    relationships: { buildUpload: { data: { type: 'buildUploads', id: buId } } }
  }
});
if (file.status !== 201) fail('buildUploadFiles create', file);
const fileId = file.json.data.id;
const ops = file.json.data.attributes.uploadOperations || [];
console.log(`buildUploadFile: ${fileId}, ${ops.length} upload operation(s)`);
if (!ops.length) fail('no uploadOperations returned', file);

// 3. upload the bytes per operation
const fd = openSync(ipaPath, 'r');
for (const [i, op] of ops.entries()) {
  const buf = Buffer.alloc(op.length);
  readSync(fd, buf, 0, op.length, op.offset);
  const headers = {};
  for (const h of (op.requestHeaders || [])) headers[h.name] = h.value;
  const r = await fetch(op.url, { method: op.method || 'PUT', headers, body: buf });
  if (r.status < 200 || r.status >= 300) {
    console.error(`chunk ${i} -> ${r.status}: ${(await r.text()).slice(0, 500)}`);
    process.exit(1);
  }
  console.log(`chunk ${i + 1}/${ops.length} uploaded (${op.length} bytes) -> ${r.status}`);
}
closeSync(fd);

// 4. commit the file
let commit = await api('PATCH', `/v1/buildUploadFiles/${fileId}`, {
  data: { type: 'buildUploadFiles', id: fileId, attributes: { uploaded: true, sourceFileChecksum: md5 } }
});
if (commit.status >= 400) {
  console.log('commit with checksum failed, retrying without:', commit.status, commit.text?.slice(0, 400));
  commit = await api('PATCH', `/v1/buildUploadFiles/${fileId}`, {
    data: { type: 'buildUploadFiles', id: fileId, attributes: { uploaded: true } }
  });
}
if (commit.status >= 400) fail('buildUploadFiles commit', commit);
console.log('file committed');

// 5. poll the upload state
for (let i = 0; i < 60; i++) {
  await new Promise(r => setTimeout(r, 10000));
  const st = await api('GET', `/v1/buildUploads/${buId}`);
  const state = st.json?.data?.attributes?.state;
  console.log(`state: ${state?.state}${state?.errors?.length ? ' errors: ' + JSON.stringify(state.errors) : ''}`);
  if (state?.errors?.length) fail('processing', st);
  if (state?.state && !['AWAITING_UPLOAD', 'UPLOAD_RECEIVED', 'PROCESSING'].includes(state.state)) {
    console.log('DONE — final state:', state.state);
    process.exit(0);
  }
}
console.log('still processing after 10 min — Apple will finish server-side; check TestFlight.');
