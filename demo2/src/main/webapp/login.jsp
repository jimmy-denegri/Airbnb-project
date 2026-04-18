<!doctype html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="css/style.css">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>StayFinder - Log in</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
</head>

  <body class="bg-light">
    <nav class="navbar bg-white border-bottom">
      <div class="container py-1">
        <a class="navbar-brand fw-bold" href="index.jsp">
          <i class="bi bi-house-heart-fill me-1" style="color: var(--brand)"></i>
          Stay<span style="color: var(--brand)">Finder</span>
        </a>
      </div>
    </nav>

    <main class="container py-5" style="max-width: 520px;">
      <div class="card border-0 shadow-sm rounded-4">
        <div class="card-body p-4 p-lg-5">
          <h1 class="h4 fw-bold mb-1">Welcome back</h1>
          <p class="text-secondary mb-4">Log in to continue.</p>

		<form action="LoginRequest" method=post>
	          <div class="mb-3">
	            <label class="form-label">Email</label>
	            <input class="form-control" type="email" name="txtName" placeholder="you@example.com">
	          </div>
	
	          <div class="mb-3">
	            <label class="form-label">Password</label>
	            <input class="form-control" type="password" name="txtPwd" placeholder="Type your password">
	          </div>
	
	          <div class="d-flex justify-content-between align-items-center mb-3">
	            <div class="form-check">
	              <input class="form-check-input" type="checkbox" id="remember">
	              <label class="form-check-label" for="remember">Remember me</label>
	            </div>
	            <a href="#" class="link-secondary text-decoration-none" >Forgot password?</a>
	          </div>
	
	          <div class="d-grid">
	            <input class="btn btn-brand btn-lg" type=submit value="${hostBtn}">
	          </div>
          </form>

          <hr class="my-4">

          <div class="text-center text-secondary">
            New here? <a href="signup.html" class="text-decoration-none">Create an account</a>
          </div>
        </div>
      </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
