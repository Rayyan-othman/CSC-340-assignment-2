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
  </style>
</head>
<body>
<div class="container py-5">
  <div class="panel p-4 rounded-3 text-white">
    <h2 class="mb-4">Update Character</h2>

    <form action="/characters/update" method="post">
      <input type="hidden" name="id" value="${character.id}">

      <div class="mb-3">
        <label class="form-label">Name</label>
        <input type="text" name="name" class="form-control" value="${character.name!}" required>
      </div>

      <div class="mb-3">
        <label class="form-label">Universe</label>
        <input type="text" name="universe" class="form-control" value="${character.universe!}" required>
      </div>

      <div class="mb-3">
        <label class="form-label">Role</label>
        <input type="text" name="role" class="form-control" value="${character.role!}" required>
      </div>

      <div class="mb-3">
        <label class="form-label">Description</label>
        <textarea name="description" class="form-control" rows="4" required>${character.description!}</textarea>
      </div>

      <button type="submit" class="btn btn-warning">Update</button>
      <a href="/characters/${character.id}" class="btn btn-secondary">Cancel</a>
    </form>
  </div>
</div>
</body>
</html>