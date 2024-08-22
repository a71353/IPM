<!doctype html>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"></script>
<!-- Latest compiled JavaScript Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/5.2.2/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <!-- Custom styles for this template -->
    <link href="navbar-top.css" rel="stylesheet">
  </head>
  <body>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
  width: 40%;
  margin: auto;
  }
</style>
    
<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
  <div class="container">
    <div class="col-md-12 ">
    <a class="navbar-brand " href="index.php">Home</a>
  </div>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#"> Login </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#"> Logout </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="register.php"> Register </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#"> Post_Blog </a>
        </li>
      </ul>
    </div>
  </div>
</nav>

 <div id="carouselExampleControls" class="mx-auto carousel slide" data-bs-ride="carousel">

    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images\c.png" class="mx-auto d-block w-10">
      </div>
      <div class="carousel-item">
        <img src="images\c2.png" class="mx-auto d-block w-10">
      </div>
    </div>
    <button class="text-dark carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
      data-bs-slide="prev">
      <span class="text-dark carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="text-dark ">Previous</span>
    </button>
    <button class="text-dark carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
      data-bs-slide="next">
      <span class="text-dark carousel-control-next-icon" aria-hidden="true"></span>
      <span class="text-dark ">Next</span>
    </button> 
</div>


{foreach item=micropost from=$microposts}
          <div class="card">
            <div class="card-header">
              Date Created:{$micropost.created_at}  
              Date updated:{$micropost.updated_at}
            </div>
            <div class="card-body">
              <h5 class="card-title text-primary">{$micropost.name}</h5>
              <p class="card-text">{$micropost.content}</p>
            </div>
          </div>
          {/foreach}

<div class="container">
  <footer class="py-3 my-4">
    <p class="text-right text-muted fixed-bottom">Gonçalo Figueiredo</p>
  </footer>
</div>


   
  </body>
</html>
