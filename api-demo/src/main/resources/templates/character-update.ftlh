<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Update Character</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body { background:#121212; }
    .panel { background:#2b2b2b; border:1px solid #3a3a3a; }
    .muted { color:#b9b9b9; }
  </style>
</head>

<body>

<nav class="navbar navbar-dark bg-black border-bottom border-secondary">
  <div class="container">
    <a class="navbar-brand" href="/characters">Naruto Gallery</a>
  </div>
</nav>

<div class="container py-5">
  <div class="panel p-4 rounded-3">

    <h2 class="text-white mb-4">Update Character</h2>

    <form action="/characters/update" method="post">

      <!-- IMPORTANT: hidden ID -->
      <input type="hidden" name="id" value="${character.id}">

      <div class="mb-3">
        <label class="form-label text-white">Name</label>
        <input type="text" name="name" class="form-control" value="${character.name}" required>
      </div>

      <div class="mb-3">
        <label class="form-label text-white">Universe</label>
        <input type="text" name="universe" class="form-control" value="${character.universe}" required>
      </div>

      <div class="mb-3">
        <label class="form-label text-white">Role</label>
        <input type="text" name="role" class="form-control" value="${character.role}" required>
      </div>

      <div class="mb-3">
        <label class="form-label text-white">Image URL</label>
        <input type="text" name="imageUrl" class="form-control" value="${character.imageUrl}">
      </div>

      <div class="mb-3">
        <label class="form-label text-white">Description</label>
        <textarea name="description" class="form-control" rows="4">${character.description}</textarea>
      </div>

      <div class="d-flex gap-2">
        <button class="btn btn-warning">Update</button>
        <a href="/characters/${character.id}" class="btn btn-outline-light">Cancel</a>
      </div>

    </form>

  </div>
</div>

</body>
</html>