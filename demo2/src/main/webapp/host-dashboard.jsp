<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>StayFinder — Host Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
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
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#nav">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="nav">
          <div class="ms-auto d-flex gap-2">
            <a class="btn btn-outline-secondary btn-sm" href="listings.html">Browse</a>
            <a class="btn btn-outline-secondary btn-sm" href="trips.html">Trips</a>
            <a class="btn btn-outline-secondary btn-sm" href="wishlist.html">Wishlist</a>
          </div>
        </div>
      </div>
    </nav>

    <main class="container py-4">
      <div class="d-flex flex-wrap align-items-end justify-content-between gap-2 mb-3">
        <div>
          <h1 class="h3 fw-bold mb-1">Host Dashboard</h1>
          <p class="text-secondary mb-0">Manage your listings and create new ones (demo UI).</p>
        </div>
        <div class="d-flex gap-2">
          <button class="btn btn-outline-secondary"><i class="bi bi-gear"></i> Settings</button>
          <button class="btn btn-brand"><i class="bi bi-plus-lg me-1"></i> New listing</button>
        </div>
      </div>

      <div class="row g-4">
        <!-- Create listing form -->
        <div class="col-lg-5">
          <div class="card border-0 shadow-sm rounded-4">
            <div class="card-body p-4">
              <h2 class="h5 fw-bold mb-3">Create a listing</h2>

              <div class="mb-3">
                <label class="form-label">Title</label>
                <input class="form-control" id="hostTitle" placeholder="e.g., Cozy Loft Downtown" />
              </div>

              <div class="mb-3">
                <label class="form-label">Description</label>
                <textarea class="form-control" id="hostDesc" rows="3" placeholder="Tell guests what’s special..."></textarea>
              </div>

              <div class="row g-3">
                <div class="col-md-6">
                  <label class="form-label">City</label>
                  <input class="form-control" id="hostCity" placeholder="Denver" />
                </div>
                <div class="col-md-6">
                  <label class="form-label">Price / night</label>
                  <input class="form-control" id="hostPrice" placeholder="129" />
                </div>

                <div class="col-4">
                  <label class="form-label">Guests</label>
                  <input class="form-control" id="hostGuests" placeholder="2" />
                </div>
                <div class="col-4">
                  <label class="form-label">Beds</label>
                  <input class="form-control" id="hostBeds" placeholder="1" />
                </div>
                <div class="col-4">
                  <label class="form-label">Baths</label>
                  <input class="form-control" id="hostBaths" placeholder="1" />
                </div>
              </div>

              <div class="mt-3">
                <label class="form-label">Amenities</label>
                <div class="d-flex flex-wrap gap-2">
                  <button type="button" class="btn pill rounded-pill px-3 py-2" data-amenity="Wifi">
                    <i class="bi bi-wifi me-1"></i> Wifi
                  </button>
                  <button type="button" class="btn pill rounded-pill px-3 py-2" data-amenity="Kitchen">
                    <i class="bi bi-cup-hot me-1"></i> Kitchen
                  </button>
                  <button type="button" class="btn pill rounded-pill px-3 py-2" data-amenity="Parking">
                    <i class="bi bi-p-square me-1"></i> Parking
                  </button>
                  <button type="button" class="btn pill rounded-pill px-3 py-2" data-amenity="Hot tub">
                    <i class="bi bi-droplet me-1"></i> Hot tub
                  </button>
                </div>
                <div class="form-text">Click to toggle amenities (stored locally).</div>
              </div>

              <div class="mt-3">
                <label class="form-label">Cover image URL</label>
                <input class="form-control" id="hostImg" placeholder="Paste an image URL (optional)" />
              </div>

              <div class="d-grid mt-4">
                <button class="btn btn-brand btn-lg" id="btnCreateListing">
                  <i class="bi bi-check2-circle me-1"></i> Create listing
                </button>
              </div>

              <div class="alert alert-success mt-3 d-none" id="hostSuccess">
                Listing created locally (demo). Go to “Your listings” below.
              </div>
            </div>
          </div>
        </div>

        <!-- Your listings -->
        <div class="col-lg-7">
          <div class="card border-0 shadow-sm rounded-4">
            <div class="card-body p-4">
              <div class="d-flex align-items-center justify-content-between mb-3">
                <h2 class="h5 fw-bold mb-0">Your listings</h2>
                <div class="d-flex gap-2">
                  <button class="btn btn-outline-secondary btn-sm" id="btnSeedHost">
                    <i class="bi bi-lightning-charge me-1"></i> Load demo listings
                  </button>
                  <button class="btn btn-outline-secondary btn-sm" id="btnClearHost">
                    <i class="bi bi-trash3 me-1"></i> Clear
                  </button>
                </div>
              </div>

              <div class="row g-4" id="hostListingsGrid">
                <!-- Rendered by app.js -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  
  </body>
</html>
