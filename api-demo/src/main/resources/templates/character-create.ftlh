<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Add a Character • Naruto Shippuden Gallery</title>
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
        <li class="nav-item"><a class="nav-link active" href="/characters/create">Add a Character</a></li>
      </ul>
    </div>
  </div>
</nav>

<section class="py-5 text-center container">
  <div class="row">
    <div class="col-lg-8 mx-auto">
      <h1 class="fw-light text-white">Add a New Character</h1>
      <p class="lead text-secondary">
        Fill out the form below to add a new character to the gallery.
      </p>
    </div>
  </div>
</section>

<main class="pb-5">
  <div class="container">
    <div class="panel rounded-3 p-4 p-lg-5 shadow-sm">

      <form action="/characters/create" method="post">

        <div class="mb-3">
          <label for="name" class="form-label text-white">Character Name</label>
          <input
            type="text"
            class="form-control"
            id="name"
            name="name"
            placeholder="Example: Itachi Uchiha"
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
            value="Naruto Shippuden"
            required
          >
        </div>

        <div class="mb-3">
          <label for="role" class="form-label text-white">Role</label>
          <select id="role" name="role" class="form-select" required>
            <option value="" selected disabled>Select a role</option>
            <option>Protagonist</option>
            <option>Rival</option>
            <option>Sensei</option>
            <option>Medical Ninja</option>
            <option>Villain</option>
            <option>Support Character</option>
          </select>
        </div>

        <div class="mb-3">
          <label for="imageUrl" class="form-label text-white">Image URL</label>
          <input
            type="url"
            class="form-control"
            id="imageUrl"
            name="imageUrl"
            placeholder="https://example.com/character-image.jpg"
            required
          >
          <div class="form-text muted">
            Use a direct link to an image.
          </div>
        </div>

        <div class="mb-3">
          <label for="description" class="form-label text-white">Short Description</label>
          <textarea
            class="form-control"
            id="description"
            name="description"
            rows="4"
            placeholder="Write a short summary of the character’s abilities, personality, and role."
            required
          ></textarea>
        </div>

        <div class="d-flex flex-wrap gap-2 mt-4">
          <button type="submit" class="btn btn-outline-light">
            Submit
          </button>
          <a href="/characters" class="btn btn-outline-light">
            Back to Home
          </a>
        </div>

      </form>

    </div>
  </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
