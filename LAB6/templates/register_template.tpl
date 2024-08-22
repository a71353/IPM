<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"></script>
<!-- Latest compiled JavaScript Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">



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

  {if $MESSAGE != ''}
  <div class = "text-bg-danger text-center mb-1">
    {$MESSAGE}
  </div>
  {/if}


<section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Register</p>

                <form class="mx-1 mx-md-4" action="register_action.php" method="post">
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="name">Name:</label>
                        <td>
                      <input name="newname" value="{$newname}" type="text" maxlength="100" size="30" class="form-control"/>
                        </td>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="email" for="email">Email:</label>
                       <td>
                          <input name="newemail" value="{$newemail}" type="text" maxlength="100" size="30" class="form-control" required/>
                        </td>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="password">Password:</label>
                      <input type="password" id="password" class="form-control" name="password"/>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="password">Password Confirmation:</label>
                      <input type="password" id="passwordc" class="form-control" name="passwordc" />
                    </div>
                  </div>
                  

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <input type="submit" class="btn btn-primary btn-lg" name="submitok" value="Register" /input>
                   
                  </div>

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <input type="submit" class="btn btn-primary btn-lg" name="reset" value="Clear" /input>
                  </div>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="images/c3.png" class="img-fluid" alt="Sample image">


              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>