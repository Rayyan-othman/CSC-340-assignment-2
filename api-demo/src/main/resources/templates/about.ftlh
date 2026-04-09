<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>About • Naruto Shippuden Gallery</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { background:#121212; }
    .panel { background:#2b2b2b; border:1px solid #3a3a3a; }
    .muted { color:#b9b9b9; }
    .hero-img { width:100%; max-height:360px; object-fit:cover; }
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-black border-bottom border-secondary">
  <div class="container">
    <a class="navbar-brand" href="/characters">Naruto Gallery</a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div id="navbarNav" class="collapse navbar-collapse">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="/characters">Home</a></li>
        <li class="nav-item"><a class="nav-link active" href="/about">About</a></li>
        <li class="nav-item"><a class="nav-link" href="/characters/create">Add a Character</a></li>
      </ul>
    </div>
  </div>
</nav>

<section class="py-5 text-center container">
  <div class="row">
    <div class="col-lg-9 mx-auto">
      <h1 class="fw-light text-white">About This Website</h1>
      <p class="lead text-secondary">
        A Spring Boot MVC version of the Naruto Shippuden character gallery.
      </p>
    </div>
  </div>
</section>

<main class="pb-5">
  <div class="container">
    <div class="panel rounded-3 p-4 p-lg-5 shadow-sm">

      <div class="mb-4">
        <img src="/img/naruto.png" alt="Naruto themed banner" class="hero-img rounded-3">
      </div>

      <h2 class="text-white mb-3">Purpose</h2>
      <p class="muted">
        This site is an MVC web app built with Spring Boot, FreeMarker, and a database-backed character gallery.
      </p>

      <h2 class="text-white mt-4 mb-3">Design Choices</h2>
      <p class="muted">
        The site uses a dark Bootstrap layout, consistent navigation, and forms for creating and updating characters.
      </p>

      <h2 class="text-white mt-4 mb-3">How to Use the Site</h2>
      <ul class="muted">
        <li><strong>Home:</strong> Browse all characters in the gallery.</li>
        <li><strong>Details:</strong> View one character’s full profile.</li>
        <li><strong>Add a Character:</strong> Create a new character entry.</li>
      </ul>

      <div class="d-flex flex-wrap gap-2 mt-4">
        <a href="/characters" class="btn btn-outline-light">Back to Home</a>
        <a href="/characters/create" class="btn btn-outline-light">Add a Character</a>
      </div>

    </div>
  </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>