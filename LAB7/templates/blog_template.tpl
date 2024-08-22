<!doctype html>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"></script>
<!-- Latest compiled JavaScript Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<body>

<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
      <div class="col-md-12 ">
      <a class="navbar-brand " href="{$Link_1}">{$Menu_1}</a>
    </div>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="{$Link_2}">{$Menu_2}</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="{$Link_3}">{$Menu_3}</a>
          </li>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  
 <div class="row mt-5"></div>
 <form class="mx-1 mx-md-4" method="post" action="{$Action}">
 <div class="card">
  <div class="card-header">
    User
  </div>
  <div class="card-body">
    <textarea class="form-control" aria-label="With textarea">{$Blog}</textarea>
    <input class="btn btn-primary" type="submit" name="Post" value="Post"/input>
    <a href="{$Link_1}" class="btn btn-danger">Cancel</a>
  </div>
</div>
</form>
<div class="container">
  <footer class="py-3 my-4">
    <p class="text-right text-muted fixed-bottom">Gonçalo Figueiredo</p>
  </footer>
</div>
   
  </body>
</html>
