'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "bb2eae15afcd111465d6608520093f18",
"assets/AssetManifest.bin.json": "6b1a41e679a83c323938852a8e65c209",
"assets/AssetManifest.json": "c10cb89fb787d060ccff674dc3f5db9f",
"assets/FontManifest.json": "0d22461e93424c942f6a80010ce669e6",
"assets/fonts/MaterialIcons-Regular.otf": "1e70d4050749b1295d5befde4417d628",
"assets/lib/assets/fonts/SFPRODISPLAYBOLD.otf": "644563f48ab5fe8e9082b64b2729b068",
"assets/lib/assets/fonts/SFPRODISPLAYHEAVY.otf": "c8726a1648245d525220831f47acf2d6",
"assets/lib/assets/fonts/SFPRODISPLAYREGULAR.otf": "aaeac71d99a345145a126a8c9dd2615f",
"assets/lib/assets/icons/desktop.png": "3f64cb18e7f5ba6e45f7f38f25f2f226",
"assets/lib/assets/icons/like.svg": "cad91611b845cbcaab1d869b8028d386",
"assets/lib/assets/icons/logo.png": "0ef46e6de83b25fb1389463dde0d85e1",
"assets/lib/assets/icons/mail.svg": "48f9a1a45f9d43eeb2de1b091a49d683",
"assets/lib/assets/icons/whatsapp.svg": "840ba0d9d6b12712fc5880a89a4102a0",
"assets/lib/assets/images/anything1.png": "b68729a013c8fa3caf95db7268df54b1",
"assets/lib/assets/images/anything2.png": "955ee123422f3c8526b90903700d4ea6",
"assets/lib/assets/images/child.png": "f73d6fd601fe8a532a30fe3dfbc81641",
"assets/lib/assets/images/dashboard.png": "c589827c6472510dc8728113a95d8614",
"assets/lib/assets/images/discover1.png": "5fc94133e350b1cc3c8dbdbddafe7f35",
"assets/lib/assets/images/discover2.png": "1d0201ab573737bbc65bb3a8e193bb00",
"assets/lib/assets/images/discover3.png": "1511282b67a1d5036795309933f52df8",
"assets/lib/assets/images/discover4.png": "a318217e7ac49adbf31c05932fa7ea96",
"assets/lib/assets/images/iphone.png": "1fc786851ee62761d9c1cc8ee67aa02f",
"assets/lib/assets/images/parent.png": "11b5769fc40fe2390f21cfb1ea5284ea",
"assets/lib/assets/images/qr.png": "3a78cce37726aed3882af39fdbc2f7d0",
"assets/lib/assets/images/vision1.png": "c589827c6472510dc8728113a95d8614",
"assets/lib/assets/images/vision2.png": "11b5769fc40fe2390f21cfb1ea5284ea",
"assets/lib/assets/images/vision3.png": "f73d6fd601fe8a532a30fe3dfbc81641",
"assets/NOTICES": "1564ed702ca71124af15d98a3a1519fb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "cdc5b78c6b67ab07a001c417dcb188cc",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "c5e7e28c9b5152956c895e2182521533",
"/": "c5e7e28c9b5152956c895e2182521533",
"main.dart.js": "cfcde0e9b879c67149c8bc776d08ac00",
"manifest.json": "597e8f4b04f8807501d09c12e764edc1",
"version.json": "3c4feadb8783a4370d45795bce95435b"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
