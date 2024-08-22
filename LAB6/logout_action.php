<?php

session_destroy();
session_start();
$_SESSION['message_type'] = 2;
  header("Location: message.php"); 
?>