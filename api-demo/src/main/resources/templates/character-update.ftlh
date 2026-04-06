<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Update Character • Naruto Shippuden Gallery</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body { background:#121212; }
    .panel { background:#2b2b2b; border:1px solid #3a3a3a; }
    .muted { color:#b9b9b9; }
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
        <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
        <li class="nav-item"><a class="nav-link" href="/characters/create">Add a Character</a></li>
      </ul>
    </div>
  </div>
</nav>

<section class="py-5 text-center container">
  <div class="row">
    <div class="col-lg-8 mx-auto">
      <h1 class="fw-light text-white">Update Character</h1>
      <p class="lead text-secondary">
        Edit the character information below and submit your changes.
      </p>
    </div>
  </div>
</section>

<main class="pb-5">
  <div class="container">
    <div class="panel rounded-3 p-4 p-lg-5 shadow-sm">

      <form action="/characters/update" method="post">

        <input type="hidden" name="id" value="${character.id}">

        <div class="mb-3">
          <label for="name" class="form-label text-white">Character Name</label>
          <input
            type="text"
            class="form-control"
            id="name"
            name="name"
            value="${character.name!}"
            required
          >
        </div>

        <div class="mb-3">
          <label for="universe" class="form-label text-white">Universe</label>
          <input
            type="text"
            class="form-control"
            id="universe"
            name="universe"
            value="${character.universe!}"
            required
          >
        </div>

        <div class="mb-3">
          <label for="role" class="form-label text-white">Role</label>
          <input
            type="text"
            class="form-control"
            id="role"
            name="role"
            value="${character.role!}"
            required
          >
        </div>

        <div class="mb-3">
          <label for="description" class="form-label text-white">Description</label>
          <textarea
            class="form-control"
            id="description"
            name="description"
            rows="4"
            required
          >${character.description!}</textarea>
        </div>

        <div class="d-flex flex-wrap gap-2 mt-4">
          <button type="submit" class="btn btn-warning">
            Update Character
          </button>
          <a href="/characters/${character.id}" class="btn btn-outline-light">
            Cancel
          </a>
        </div>

      </form>

    </div>
  </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>