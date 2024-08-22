<?php
include_once 'db.php';

session_start();

// make basic input validation
if( $_POST['email']=='' or $_POST['password']=='' ) {
  $_SESSION['message'] = 'Your user email and password can not be empty';
 
  if (isset($_POST['email']))
     $_SESSION['email'] = $_POST['email'];
  header("Location: login.php");
  exit();
}

// check user credentials
$db = dbconnect($hostname,$db_name,$db_user,$db_passwd);
// avoid SQL injection
$email = mysqli_real_escape_string($db,trim($_POST['email']));
$password = mysqli_real_escape_string($db,trim($_POST['password']));
$query = "SELECT * FROM users
         WHERE email = '$email'
           AND password_digest = '$password'";
$result = @ mysqli_query($db, $query);
if (!$result)
     showerror($db);

if (mysqli_num_rows($result) == 0) {
  $_SESSION['message'] = 'Your user ID or password is incorrect, or you are not a
     registered user on this site. To register for instant
     access, click <a href="signup_smarty.php">here</a>.';
  if (isset($_POST['email']))
     $_SESSION['email'] = $_POST['email'];   
  header("Location: login.php");
  exit();
}
else {
   $tupple = mysqli_fetch_assoc($result);
   $_SESSION['username'] = $tupple['fullname'];  
   unset($_SESSION['message']);
}

mysqli_close($db);

$_SESSION['message_type'] = 1;
  header("Location: message.php"); 
?>