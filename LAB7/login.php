<?php

session_start();

// put full path to Smarty.class.php
require_once('/usr/share/php/smarty/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->template_dir = 'templates';
$smarty->compile_dir = 'templates_c';

    $smarty->assign('Link_1', 'index.php');
    $smarty->assign('Menu_1', 'Home');
    $smarty->assign('Link_2', 'login.php');
    $smarty->assign('Menu_2', 'Login');
    $smarty->assign('Link_3', 'register.php');
    $smarty->assign('Menu_3', 'Register');
      
   if ( isset($_SESSION['message']) )
       $smarty->assign('MESSAGE', $_SESSION['message']);
   else
       $smarty->assign('MESSAGE', '');

    if ( isset($_SESSION['email']) )
       $smarty->assign('email', $_SESSION['email']);
   else
       $smarty->assign('email', '');
  

  // Actualiza o template
  $smarty->display('login_template.tpl');
 
?>