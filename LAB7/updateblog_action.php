<?php
include_once 'db.php';

if(session_start() != ''){

$db = dbconnect($hostname,$db_name,$db_user,$db_passwd);

$content = $_GET['Blog'];
$created_at = date("Y-m-d H:i:s");
$user_id = mysqli_real_escape_string($db, $_SESSION['id']);

$sql_insert = "UPDATE microposts SET content = '".$content."' where id = $user_id";


$_SESSION['message_type'] = 6;
  header("Location: message.php");
}
else{
$_SESSION['message_type'] = 5;
    header("Location: message.php");
}

mysqli_close($db);

?>