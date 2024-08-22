<?php

include("db.php");

session_start();

// CSRF safeguard, expected origin URL: $_SERVER['HTTP_REFERER'] = 'http://intranet.deei.fct.ualg.pt/DAW/auth-db-sessions/signup_smarty.php'   
/*
$match=preg_match("/\/DAW\/auth-db-sessions\/signup_smarty.php$/", $_SERVER['HTTP_REFERER']);
if(!$match) {
   header("Location: index_smarty.php");
       exit;
}
*/


if(isset($_POST['reset'])) {
  // Display the user signup form
  unset($_SESSION['newname']);
  unset($_SESSION['newemail']);
  unset($_SESSION['password']);
  unset($_SESSION['passwordc']);
  header("Location: register.php");
  exit;
}

// very simple CSRF safeguard ... code above is better!
if(!isset($_POST['submitok'])) {
  // Display the user signup form
  header("Location: index.php");
  exit;
}
else {

   $password = $_POST['password'];
   $passwordc = $_POST['passwordc'];
  // Process signup submission
  // simple input validation
  if($_POST['newname'] == '' or !preg_match("/^[a-zA-Z0-9_.-]*$/", $_POST['newname'])) {
     $_SESSION['newname'] = $_POST['newname'];
   header("Location: register.php?m=0");   
   exit;
  }

  if(!preg_match("/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/", $_POST['newemail'])){
   $_SESSION['newemail'] = $_POST['newemail'];
   header("Location: register.php?m=2");
   exit;
  }

 if(empty($password)){
   $_SESSION['password'] = $_POST['password'];
   header("Location: register.php?m=3");
   exit;
  }

  if($passwordc != $password){
   $_SESSION['passwordc'] = $_POST['passwordc'];
   header("Location: register.php?m=4");
   exit;
  }
    
  $db = dbconnect($hostname,$db_name,$db_user,$db_passwd);
  
  // Check for existing user (avoid SQL injection)
  $newemail =  mysqli_real_escape_string($db,trim($_POST['newemail']));
  $query = "SELECT * FROM users WHERE email LIKE '$newemail'";
  $result = @ mysqli_query($db, $query);
  if(!$result)
     showerror($db);

  if(mysqli_num_rows($result) > 0) {
     // fail: user already exists in database
     $_SESSION['newemail'] = $_POST['newemail'];
     header("Location: register.php?m=1");
     exit;
  }

  // success: register new user 
  $password = substr(md5($_POST['password']),0,32);
  $_SESSION['password'] = $password;  //because email is deactivated !
 
  $fullname = $_POST['newname'];
  $email    = $_POST['newemail'];
  $present_date = date("Y-m-d H:i:s");

  $sql_insert = "INSERT INTO users(name,email, created_at, password_digest)
                 VALUES('".$fullname."','".$email."','".$present_date."','".$password."')";

  // Close database
  mysqli_close($db);

  $_SESSION['message_type'] = 1;
  header("Location: register_success.html");     

}
?>