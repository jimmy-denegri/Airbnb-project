<!doctype html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="css/style.css">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>StayFinder — Listings</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
</head>

  <body class="bg-light">
    <!-- Nav -->
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
          <div class="ms-auto d-flex gap-2 align-items-center">
            <a class="btn btn-outline-secondary btn-sm" href="#">Become a host</a>
            <a class="btn btn-outline-secondary btn-sm" href="login.html">Log in</a>
            <a class="btn btn-brand btn-sm" href="signup.html">Sign up</a>
          </div>
        </div>
      </div>
    </nav>

    <!-- Top filters -->
    <div class="sticky-topbar">
      <div class="container py-3">
        <div class="row g-2 align-items-center">
          <div class="col-lg-5">
            <div class="input-group">
              <span class="input-group-text"><i class="bi bi-geo-alt"></i></span>
              <input id="listingsCity" class="form-control" placeholder="Search city (e.g., Denver)" />
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <input id="listingsCheckIn" class="form-control" type="date" />
          </div>
          <div class="col-md-6 col-lg-3">
            <input id="listingsCheckOut" class="form-control" type="date" />
          </div>
          <div class="col-lg-1 d-grid">
            <button id="listingsSearchButton" class="btn btn-brand" type="button"><i class="bi bi-search"></i></button>
          </div>
        </div>

        <div class="mt-3 d-flex flex-wrap gap-2">
          <button class="btn chip rounded-pill px-3 py-2" type="button" data-category="Homes"><i class="bi bi-house-door me-1"></i> Homes</button>
          <button class="btn chip rounded-pill px-3 py-2" type="button" data-category="Cabins"><i class="bi bi-tree me-1"></i> Cabins</button>
          <button class="btn chip rounded-pill px-3 py-2" type="button" data-category="Beach"><i class="bi bi-water me-1"></i> Beach</button>
          <button class="btn chip rounded-pill px-3 py-2" type="button" data-category="Ski"><i class="bi bi-snow2 me-1"></i> Ski</button>
          <button class="btn chip rounded-pill px-3 py-2" type="button" data-category="Luxe"><i class="bi bi-gem me-1"></i> Luxe</button>

          <div class="ms-auto d-flex gap-2">
            <button class="btn btn-outline-secondary"><i class="bi bi-sliders me-1"></i> Filters</button>
            <button class="btn btn-outline-secondary"><i class="bi bi-map me-1"></i> Map</button>
          </div>
        </div>
      </div>
    </div>

    <main class="container py-4">
      <div class="row g-4">
        <!-- Sidebar -->
        <aside class="col-lg-3">
          <div class="card border-0 shadow-sm rounded-4">
            <div class="card-body">
              <h5 class="fw-bold mb-3">Filters</h5>

              <label class="form-label small text-secondary mb-1">Price / night</label>
              <div class="row g-2 mb-3">
                <div class="col-6"><input class="form-control" placeholder="Min" /></div>
                <div class="col-6"><input class="form-control" placeholder="Max" /></div>
              </div>

              <label class="form-label small text-secondary mb-1">Guests</label>
              <select class="form-select mb-3">
                <option>Any</option>
                <option>1+</option>
                <option>2+</option>
                <option>4+</option>
                <option>6+</option>
              </select></div>

              <label class="form-label small text-secondary mb-1">Amenities</label>
              <div class="vstack gap-2 mb-3">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="wifi" />
                  <label class="form-check-label" for="wifi">Wifi</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="kitchen" />
                  <label class="form-check-label" for="kitchen">Kitchen</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="hotTub" />
                  <label class="form-check-label" for="hotTub">Hot tub</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="parking" />
                  <label class="form-check-label" for="parking">Free parking</label>
                </div>
              </div>

              <div class="d-grid gap-2">
                <button class="btn btn-brand">Apply</button>
                <button class="btn btn-outline-secondary">Clear</button>
              </div>
            </div>
          </div>
        </aside>

        <!-- Grid -->
        <section class="col-lg-9">
          <div class="d-flex align-items-end justify-content-between mb-3">
            <div>
              <h2 class="h4 fw-bold mb-1">Stays in your search</h2>
              <p class="text-secondary mb-0" id="listingsSummary">Showing results based on your search.</p>
              <div class="small mt-2" id="activeFilters"></div>
            </div>
            <div class="d-flex flex-column align-items-end gap-2"><span class="small text-secondary" id="listingsCount">0 stays</span><select class="form-select w-auto">
              <option>Sort: Recommended</option>
              <option>Price: Low to High</option>
              <option>Price: High to Low</option>
              <option>Top Rated</option>
            </select>
          </div>

          <div class="row g-4" id="listingsGrid"></div>

          <!-- Pagination -->
          <nav class="mt-4">
            <ul class="pagination justify-content-center">
              <li class="page-item disabled"><a class="page-link" href="#">Prev</a></li>
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
          </nav>
        </section>
      </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
      <script src="app.js"></script>
  </body>
</html>
