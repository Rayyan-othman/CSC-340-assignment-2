<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Create Character</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { background:#121212; }
    .panel { background:#2b2b2b; border:1px solid #3a3a3a; }
  </style>
</head>
<body>

<div class="container py-5">
  <div class="panel p-4 rounded-3 text-white">
    <h2 class="mb-4">Create Character</h2>

    <form action="/characters/create" method="post">
      <div class="mb-3">
        <label class="form-label">Name</label>
        <input type="text" name="name" class="form-control" required>
      </div>

      <div class="mb-3">
        <label class="form-label">Universe</label>
        <input type="text" name="universe" class="form-control" required>
      </div>

      <div class="mb-3">
        <label class="form-label">Role</label>
        <input type="text" name="role" class="form-control" required>
      </div>

      <div class="mb-3">
        <label class="form-label">Description</label>
        <textarea name="description" class="form-control" rows="4" required></textarea>
      </div>

      <div class="mb-3">
        <label class="form-label">Image URL</label>
        <input type="text" name="imageUrl" class="form-control" placeholder="/img/naruto.png">
      </div>

      <button type="submit" class="btn btn-outline-light">Create</button>
      <a href="/characters" class="btn btn-secondary">Cancel</a>
    </form>
  </div>
</div>

</body>
</html>