<!doctype html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="css/style.css">
  <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>StayFinder — Wishlist</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
</head>

  <body class="bg-light">
    <nav class="navbar navbar-expand-lg bg-white border-bottom">
      <div class="container py-1">
        <a class="navbar-brand fw-bold" href="index.html">
          <i class="bi bi-house-heart-fill me-1" style="color: var(--brand)"></i>
          Stay<span style="color: var(--brand)">Finder</span>
        </a>
        <div class="ms-auto d-flex gap-2">
          <a class="btn btn-outline-secondary btn-sm" href="listings.html">Browse</a>
          <a class="btn btn-outline-secondary btn-sm" href="trips.html">Trips</a>
          <a class="btn btn-outline-secondary btn-sm" href="host-dashboard.html">Host</a>
        </div>
      </div>
    </nav>

    <main class="container py-4">
      <div class="d-flex align-items-end justify-content-between mb-3">
        <div>
          <h1 class="h3 fw-bold mb-1">Wishlist</h1>
          <p class="text-secondary mb-0">Saved places (stored locally).</p>
        </div>
        <button class="btn btn-outline-secondary" id="btnClearWishlist">
          <i class="bi bi-trash3 me-1"></i> Clear wishlist
        </button>
      </div>

      <div class="row g-4" id="wishlistGrid">
        <!-- Rendered by app.js -->
      </div>

      <div class="alert alert-info mt-4 d-none" id="wishlistEmpty">
        Your wishlist is empty. Go to <a href="listings.html">Listings</a> and add some ❤️
      </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="app.js"></script>
  </body>
</html>
