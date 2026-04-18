<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>StayFinder — Listing Details</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css">
</head>

  <body class="bg-light">
    <nav class="navbar navbar-expand-lg bg-white border-bottom">
      <div class="container py-1">
        <a class="navbar-brand fw-bold" href="index.html">
          <i class="bi bi-house-heart-fill me-1" style="color: var(--brand)"></i>
          Stay<span style="color: var(--brand)">Finder</span>
        </a>
        <div class="ms-auto d-flex gap-2">
          <a class="btn btn-outline-secondary btn-sm" href="listings.html">Back to listings</a>
          <a class="btn btn-outline-secondary btn-sm" href="login.html">Log in</a>
        </div>
      </div>
    </nav>

    <main class="container py-4">
      <div class="d-flex justify-content-between align-items-start gap-3 mb-3">
        <div>
          <h1 class="h3 fw-bold mb-1">Cozy Loft • Downtown</h1>
          <div class="text-secondary">
            <i class="bi bi-star-fill text-warning me-1"></i>4.92 · 128 reviews · Denver, CO
          </div>
        </div>
        <div class="d-flex gap-2">
          <button id="shareButton" class="btn btn-outline-secondary" type="button"><i class="bi bi-share"></i> Share</button>
          <button id="detailsSaveButton" class="btn btn-outline-secondary" type="button"><i class="bi bi-heart"></i> Save</button>
        </div>
      </div>

      <!-- Gallery -->
      <div class="row g-3 gallery mb-4">
        <div class="col-lg-6">
          <img class="rounded-4 shadow-sm main-img"
               src="https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=1400&q=80" alt="">
        </div>
        <div class="col-lg-6">
          <div class="row g-3">
            <div class="col-6">
              <img class="rounded-4 shadow-sm"
                   src="https://images.unsplash.com/photo-1501183638710-841dd1904471?auto=format&fit=crop&w=1200&q=80" alt="">
            </div>
            <div class="col-6">
              <img class="rounded-4 shadow-sm"
                   src="https://images.unsplash.com/photo-1501183638710-841dd1904471?auto=format&fit=crop&w=1200&q=80" alt="">
            </div>
            <div class="col-6">
              <img class="rounded-4 shadow-sm"
                   src="https://images.unsplash.com/photo-1484154218962-a197022b5858?auto=format&fit=crop&w=1200&q=80" alt="">
            </div>
            <div class="col-6">
              <img class="rounded-4 shadow-sm"
                   src="https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?auto=format&fit=crop&w=1200&q=80" alt="">
            </div>
          </div>
        </div>
      </div>

      <div class="row g-4">
        <!-- Left content -->
        <div class="col-lg-7">
          <div class="card border-0 shadow-sm rounded-4">
            <div class="card-body p-4">
              <div class="d-flex justify-content-between align-items-start mb-3">
                <div>
                  <h2 class="h5 fw-bold mb-1">Entire loft hosted by Alex</h2>
                  <div class="text-secondary small">2 guests · 1 bedroom · 1 bed · 1 bath</div>
                </div>
                <div class="rounded-circle bg-secondary-subtle d-flex align-items-center justify-content-center" style="width:44px;height:44px;">
                  <i class="bi bi-person"></i>
                </div>
              </div>

              <hr>

              <div class="row g-3">
                <div class="col-md-6">
                  <div class="d-flex gap-2">
                    <i class="bi bi-wifi"></i>
                    <div>
                      <div class="fw-semibold">Fast Wifi</div>
                      <div class="text-secondary small">Great for remote work</div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="d-flex gap-2">
                    <i class="bi bi-lightning-charge"></i>
                    <div>
                      <div class="fw-semibold">Self check-in</div>
                      <div class="text-secondary small">Smart lock access</div>
                    </div>
                  </div>
                </div>
              </div>

              <hr>

              <h3 class="h6 fw-bold">About this place</h3>
              <p class="text-secondary mb-0">
                Modern loft in the heart of downtown. Walk to restaurants and attractions.
                Includes full kitchen, workspace, and super fast internet.
              </p>
            </div>
          </div>

          <div class="card border-0 shadow-sm rounded-4 mt-4">
            <div class="card-body p-4">
              <h3 class="h6 fw-bold mb-3">Reviews</h3>

              <div class="vstack gap-3">
                <div>
                  <div class="d-flex justify-content-between">
                    <div class="fw-semibold">Jamie</div>
                    <div class="small text-secondary"><i class="bi bi-star-fill text-warning me-1"></i>5</div>
                  </div>
                  <div class="text-secondary">Super clean and perfect location.</div>
                </div>

                <div>
                  <div class="d-flex justify-content-between">
                    <div class="fw-semibold">Sam</div>
                    <div class="small text-secondary"><i class="bi bi-star-fill text-warning me-1"></i>4</div>
                  </div>
                  <div class="text-secondary">Great stay. Would book again.</div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Booking card -->
        <div class="col-lg-5">
          <div class="card border-0 shadow-sm rounded-4 sticky-card">
            <div class="card-body p-4">
              <div class="d-flex justify-content-between align-items-end mb-3">
                <div>
                  <span class="h5 fw-bold">$129</span>
                  <span class="text-secondary"> / night</span>
                </div>
                <div class="small text-secondary">
                  <i class="bi bi-star-fill text-warning me-1"></i>4.92
                </div>
              </div>

              <div class="row g-2">
                <div class="col-6">
                  <label class="form-label small text-secondary mb-1">Check in</label>
                  <input id="reserveCheckIn" type="date" class="form-control">
                </div>
                <div class="col-6">
                  <label class="form-label small text-secondary mb-1">Check out</label>
                  <input id="reserveCheckOut" type="date" class="form-control">
                </div>
                <div class="col-12">
                  <label class="form-label small text-secondary mb-1">Guests</label>
                  <select id="reserveGuests" class="form-select">
                    <option>1 guest</option>
                    <option>2 guests</option>
                    <option>3 guests</option>
                    <option>4 guests</option>
                  </select>
                </div>
              </div>

              <div class="d-grid mt-3">
                <button id="reserveButton" class="btn btn-brand btn-lg" type="button">Reserve</button>
              </div>

              <div class="mt-3 small text-secondary">
                You won’t be charged yet (demo).
              </div>

              <hr>

              <div class="d-flex justify-content-between small">
                <span class="text-secondary">$129 × 2 nights</span>
                <span>$258</span>
              </div>
              <div class="d-flex justify-content-between small">
                <span class="text-secondary">Cleaning fee</span>
                <span>$25</span>
              </div>
              <div class="d-flex justify-content-between small">
                <span class="text-secondary">Service fee</span>
                <span>$18</span>
              </div>

              <hr>

              <div class="d-flex justify-content-between fw-semibold">
                <span>Total</span>
                <span>$301</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
      <script src="app.js"></script>
  </body>
</html>
