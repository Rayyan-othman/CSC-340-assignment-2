<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Naruto Gallery</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body { background:#121212; }
    .card { background:#2b2b2b; border:1px solid #3a3a3a; }
    .muted { color:#b9b9b9; }
    .card img { height:260px; object-fit:cover; }
  </style>
</head>

<body>

<!-- NAVBAR -->
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

<!-- HEADER -->
<section class="py-5 text-center container">
  <h1 class="text-white">Character Gallery</h1>
  <p class="muted">Dynamic MVC version</p>
</section>

<!-- GRID -->
<div class="container pb-5">
  <div class="row row-cols-1 row-cols-md-3 g-4">

    <#list characterList as c>
    <div class="col">
      <div class="card shadow-sm text-white">

        <!-- IMAGE FIX -->
        <img src="${c.imageUrl!'/img/naruto.png'}" class="card-img-top">

        <div class="card-body">
          <h5>${c.name!}</h5>
          <p class="muted">${c.role!}</p>
          <p class="small">${c.description!}</p>

          <div class="d-flex flex-wrap gap-2 mt-3">
            <a href="/characters/${c.id}" class="btn btn-outline-light btn-sm">View</a>
            <a href="/characters/update/${c.id}" class="btn btn-warning btn-sm">Edit</a>
            <a href="/characters/delete/${c.id}" class="btn btn-danger btn-sm">Delete</a>
          </div>
        </div>

      </div>
    </div>
    </#list>

  </div>
</div>

</body>
</html>