<?php
include_once 'db.php';

if(session_start() != ''){

$db = dbconnect($hostname,$db_name,$db_user,$db_passwd);

$content = $_GET['Blog'];
$created_at = date("Y-m-d H:i:s");


$sql_insert = "INSERT INTO microposts (content, created_at, updated_at) 
                VALUES('".$content."','".$created_at."','".$created_at."')";


$_SESSION['message_type'] = 3;
  header("Location: message.php");
}
else{
$_SESSION['message_type'] = 4;
    header("Location: message.php");
}

mysqli_close($db);

?>