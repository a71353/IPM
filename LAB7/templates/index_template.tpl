<!doctype html>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"></script>
<!-- Latest compiled JavaScript Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/5.2.2/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/5.2.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
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
    <a class="navbar-brand " href="{$Link_1}">{$Menu_1}</a>
  </div>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2">
      <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{$Link_5}"> {$Menu_5} </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{$Link_2}"> {$Menu_2} </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="{$Link_4}">{$Menu_4} </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="{$Link_3}"> {$Menu_3} </a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#"> Welcome {$User_1} </a>
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
         <!--<div class="d-flex justify-content-between">
            <div class="container">
              <div class="card mb-3">
                <div class="row g-0 ">
                  <div class="col-sm-2">
                    <div class="card">
                        <div class="card-header">
                            {$micropost.name}
                        </div>
                        <div class="card-body">
                            <p class="card-text">Updated:{$micropost.updated_at}</p>
                            <p class="card-text">Created:{$micropost.created_at}</p>
                        </div>
                    </div>
                  </div>
                  <div class="col-sm-10">
                    <div class="card-body">
                      <p class="card-text">{$micropost.content}</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div> -->

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
