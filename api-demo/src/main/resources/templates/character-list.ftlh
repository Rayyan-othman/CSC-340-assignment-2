<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Naruto Shippuden Character Gallery</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body { background:#121212; }
    .card { background:#2b2b2b; color:#fff; border:1px solid #3a3a3a; }
    .card img { object-fit: cover; width:100%; }
    .muted { color:#b9b9b9; }
  </style>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-black border-bottom border-secondary">
  <div class="container">
    <a class="navbar-brand" href="/characters">Naruto Gallery</a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#nav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div id="nav" class="collapse navbar-collapse">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link active" href="/characters">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
        <li class="nav-item"><a class="nav-link" href="/characters/create">Add a Character</a></li>
      </ul>
    </div>
  </div>
</nav>

<section class="py-5 text-center container">
  <div class="col-lg-7 col-md-9 mx-auto">
    <h1 class="fw-light text-white">Naruto Shippuden Character Gallery</h1>
    <p class="lead text-secondary">Loaded from your Spring Boot MVC app.</p>
  </div>
</section>

<div class="album py-5 bg-dark">
  <div class="container">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">

      <#list characterList as c>
        <#assign imagePath = "/img/Naruto.png">
        <#if c.name == "Sasuke Uchiha">
          <#assign imagePath = "/img/sasuke.jpg">
        <#elseif c.name == "Sakura Haruno">
          <#assign imagePath = "/img/sakura.jpg">
        <#elseif c.name == "Kakashi Hatake">
          <#assign imagePath = "/img/kakashi.jpg">
        <#elseif c.name == "Jiraiya">
          <#assign imagePath = "/img/jiraiyah.jpg">
        <#elseif c.name == "Orochimaru">
          <#assign imagePath = "/img/orochimaru.jpg">
        <#elseif c.name == "Madara Uchiha">
          <#assign imagePath = "/img/madara.jpg">
        </#if>

        <div class="col">
          <div class="card shadow-sm h-100">
            <img src="${imagePath}" height="225" alt="${c.name!'Character'}">

            <div class="card-body d-flex flex-column">
              <h5 class="mb-1">${c.name!'Unknown Character'}</h5>
              <div class="small muted mb-2">${c.role!'N/A'}</div>
              <p class="mb-3">${c.description!'No description available.'}</p>

              <div class="mt-auto d-flex gap-2">
                <a href="/characters/${c.id}" class="btn btn-sm btn-outline-light">View</a>
                <a href="/characters/update/${c.id}" class="btn btn-sm btn-warning">Edit</a>
                <a href="/characters/delete/${c.id}" class="btn btn-sm btn-danger">Delete</a>
              </div>
            </div>
          </div>
        </div>
      </#list>

    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>