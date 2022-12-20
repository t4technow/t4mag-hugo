const version = "0.6.27";

self.addEventListener("install", (event) => {
  event.waitUntil(
    caches
      .open(`precache-${version}`)
      .then((cache) => {
        return cache.addAll([
          "./",
          "/404.html",
          "/css/style.css",
          "/css/bootstrap.min.css",
          "/css/all.min.css",
          "/css/animate.min.css",
          "/css/swiper.min.css",
          "/css/magnific-popup.css",
          "/js/jquery.min.js",
          "/js/popper.min.js",
          "/js/bootstrap.min.js",
          "/js/appear.min.js",
          "/js/swiper.min.js",
          "/js/masonry.min.js",
          "/js/magnific-popup.min.js",
          "/js/resize-sensor.min.js",
          "/js/theia-sticky-sidebar.min.js",
          "/js/validator.min.js",
          "/js/tween-max.js",
          "/js/lazysizes.min.js",
          "/js/wow.min.js",
          "/js/app.js",
          "/js/code-copy.js",
        ]);
      })
      .then(self.skipWaiting())
  );
});

self.addEventListener("activate", (event) => {
  const currentCaches = [`precache-${version}`, "runtime"];
  event.waitUntil(
    caches
      .keys()
      .then((cacheNames) => {
        return cacheNames.filter(
          (cacheName) => !currentCaches.includes(cacheName)
        );
      })
      .then((cachesToDelete) => {
        return Promise.all(
          cachesToDelete.map((cacheToDelete) => {
            return caches.delete(cacheToDelete);
          })
        );
      })
      .then(() => self.clients.claim())
    );
  });

self.addEventListener("fetch", event => {
  if (event.request.url.startsWith(self.location.origin)) {
    event.respondWith(
      caches
        .match(event.request)
        .then((cachedResponse) => {
          if (cachedResponse) {
            return cachedResponse;
          }
          return caches.open("runtime").then((cache) => {
            return fetch(event.request)
              .then((response) => {
                return cache.put(event.request, response.clone()).then(() => {
                  return response;
                });
              })
              .catch(() => {
                  return caches.open(`precache-${version}`).then((cache) => {
                    return cache.match("/offline/");
                    console.log("Fetch failed; returning offline page instead.");
                  });
                  return new Response('Network error', {
                    status: 408,
                    headers: { 'Content-Type': 'text/plain' },
                  });
              });
            });
          })
        );
      }
    });