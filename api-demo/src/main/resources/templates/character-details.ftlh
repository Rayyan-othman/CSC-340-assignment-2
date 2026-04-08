<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Character Details</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { background:#121212; color:white; }
    .panel { background:#2b2b2b; border:1px solid #3a3a3a; }
    .muted { color:#b9b9b9; }
    .big-img { width:100%; max-height:500px; object-fit:cover; }
  </style>
</head>
<body>

<nav class="navbar navbar-dark bg-black border-bottom border-secondary">
  <div class="container">
    <a class="navbar-brand" href="/characters">Naruto Gallery</a>
    <div>
      <a href="/characters" class="btn btn-outline-light btn-sm">Home</a>
      <a href="/characters/create" class="btn btn-outline-light btn-sm">Add Character</a>
      <a href="/about" class="btn btn-outline-light btn-sm">About</a>
    </div>
  </div>
</nav>

<section class="py-5 text-center container">
  <h1>${character.name!}</h1>
  <p class="muted">Character Profile</p>
</section>

<div class="container pb-5">
  <div class="panel p-4 rounded-3">
    <div class="row g-4">
      <div class="col-md-4">
        <img src="${character.resolvedImage}" class="big-img rounded-3" alt="${character.name!}">
      </div>

      <div class="col-md-8">
        <h2>${character.name!}</h2>
        <p class="muted">${character.description!}</p>
        <p><strong>Role:</strong> ${character.role!}</p>
        <p><strong>Universe:</strong> ${character.universe!}</p>

        <div class="mt-4 d-flex gap-2 flex-wrap">
          <a href="/characters/update/${character.id}" class="btn btn-warning">Edit</a>
          <a href="/characters/delete/${character.id}" class="btn btn-danger">Delete</a>
          <a href="/characters" class="btn btn-outline-light">Back</a>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>