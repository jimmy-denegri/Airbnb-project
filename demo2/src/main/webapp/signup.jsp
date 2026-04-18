<!doctype html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="css/style.css">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>StayFinder — Sign up</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
</head>

  <body class="bg-light">
    <nav class="navbar bg-white border-bottom">
      <div class="container py-1">
        <a class="navbar-brand fw-bold" href="index.html">
          <i class="bi bi-house-heart-fill me-1" style="color: var(--brand)"></i>
          Stay<span style="color: var(--brand)">Finder</span>
        </a>
      </div>
    </nav>

    <main class="container py-5" style="max-width: 600px;">
      <div class="card border-0 shadow-sm rounded-4">
        <div class="card-body p-4 p-lg-5">
          <h1 class="h4 fw-bold mb-1">Create your account</h1>
          <p class="text-secondary mb-4">Join StayFinder in minutes.</p>

          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label">Name</label>
              <input class="form-control" placeholder="Your name">
            </div>
            <div class="col-md-6">
              <label class="form-label">Role</label>
              <select class="form-select">
                <option>GUEST</option>
                <option>HOST</option>
              </select>
            </div>

            <div class="col-12">
              <label class="form-label">Email</label>
              <input class="form-control" type="email" placeholder="you@example.com">
            </div>

            <div class="col-md-6">
              <label class="form-label">Password</label>
              <input class="form-control" type="password" placeholder="Create a password">
            </div>
            <div class="col-md-6">
              <label class="form-label">Confirm Password</label>
              <input class="form-control" type="password" placeholder="Repeat password">
            </div>
          </div>

          <div class="form-check mt-3">
            <input class="form-check-input" type="checkbox" id="terms">
            <label class="form-check-label" for="terms">
              I agree to the <a href="#" class="text-decoration-none">terms</a>.
            </label>
          </div>

          <div class="d-grid mt-4">
            <button class="btn btn-brand btn-lg">Create account</button>
          </div>

          <hr class="my-4">

          <div class="text-center text-secondary">
            Already have an account? <a href="login.html" class="text-decoration-none">Log in</a>
          </div>
        </div>
      </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
