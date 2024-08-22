<?php

session_start();

// put full path to Smarty.class.php
require_once('/usr/share/php/smarty/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->template_dir = 'templates';
$smarty->compile_dir = 'templates_c';
unset($_SESSION['message']);
if ($_SESSION['message_type'] == 1 )   
   $message="<p><strong>Welcome Back!</strong></p>";

if ($_SESSION['message_type'] == 2 ) {
     session_destroy();
     $message="<h1>Thank you for your visit</h1>
               <p>To log in again click <a href=\"login.php\">here</a>.</p>";
}

if ($_SESSION['message_type'] == 3 ) {
  session_destroy();
  $message="<h1>SUCCESS: New post submitted</h1>";
}

if ($_SESSION['message_type'] == 4 ) {
  session_destroy();
  $message="<h1>ERROR: Login first</h1>";
}

if ($_SESSION['message_type'] == 5 ) {
  session_destroy();
  $message="<h1>ERROR: Not Allowed</h1>";
}

if ($_SESSION['message_type'] == 6 ) {
  session_destroy();
  $message="<h1>SUCCESS: Post updated</h1>";
}
 
  $smarty->assign('message', $message);
  $smarty->assign('message_type', $_SESSION['message_type']);   
 
  // Actualiza o template
  $smarty->display('message.tpl');
 
?>