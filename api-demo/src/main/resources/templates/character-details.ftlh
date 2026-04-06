<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Character Details • Naruto Shippuden</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body { background:#121212; color:#ffffff; }
    .panel { background:#2b2b2b; border:1px solid #3a3a3a; }
    .muted { color:#c7c7c7; }
    .big-img { width:100%; max-height:520px; object-fit:cover; }
    .tag { background:#1c1c1c; border:1px solid #3a3a3a; }
  </style>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-black border-bottom border-secondary">
  <div class="container">
    <a class="navbar-brand" href="/characters">Naruto Gallery</a>

    <div class="collapse navbar-collapse">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="/characters">Home</a></li>
        <li class="nav-item"><a class="nav-link active" href="#">Details</a></li>
        <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
        <li class="nav-item"><a class="nav-link" href="/characters/create">Add a Character</a></li>
      </ul>
    </div>
  </div>
</nav>

<section class="py-5 text-center container">
  <h1 class="fw-light">${character.name}</h1>
  <p class="lead text-secondary">Character Profile</p>
</section>

<main class="pb-5">
  <div class="container">

    <div class="panel rounded-3 p-4 mb-5">
      <div class="row g-4 align-items-start">

        <!-- IMAGE -->
        <div class="col-lg-4">
          <img src="${character.imageUrl!'/img/Naruto.png'}" class="big-img rounded-3">
        </div>

        <!-- DETAILS -->
        <div class="col-lg-8">

          <h2>${character.name}</h2>

          <p class="muted">${character.description}</p>

          <div class="d-flex flex-wrap gap-2 mb-3">
            <span class="badge tag text-light">Role: ${character.role}</span>
            <span class="badge tag text-light">Universe: ${character.universe}</span>
          </div>

          <div class="mt-4 d-flex gap-2">
            <a href="/characters/update/${character.id}" class="btn btn-warning">Edit</a>
            <a href="/characters/delete/${character.id}" class="btn btn-danger">Delete</a>
            <a href="/characters" class="btn btn-outline-light">Back</a>
          </div>

        </div>

      </div>
    </div>

  </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>