<?php

session_start();

// put full path to Smarty.class.php
require_once('/usr/share/php/smarty/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->template_dir = 'templates';
$smarty->compile_dir = 'templates_c';

      
      
   if ($_GET['m'] == "0") {$smarty->assign('MESSAGE', 'O nome tem que ser preenchido');}
   elseif ($_GET['m'] == "1") {$smarty->assign('MESSAGE', 'Email já existe na base de dados');}
   elseif ($_GET['m'] == "2") {$smarty->assign('MESSAGE', 'Email tem formato incorreto');}
   elseif ($_GET['m'] == "3") {$smarty->assign('MESSAGE', 'Password em branco');}
   elseif ($_GET['m'] == "4") {$smarty->assign('MESSAGE', 'Passwords não coincidem');}
   else {$smarty->assign('MESSAGE', '');}

   if (isset($_SESSION['newname']))
       $smarty->assign('newname', $_SESSION['newname']);
   else
       $smarty->assign('newname', '');

   if (isset($_SESSION['newemail']))
       $smarty->assign('newemail', $_SESSION['newemail']);
   else
       $smarty->assign('newemail', '');

    if (isset($_SESSION['password']))
       $smarty->assign('password', $_SESSION['password']);
   else
       $smarty->assign('password', '');

    if (isset($_SESSION['passwordc']))
       $smarty->assign('passwordc', $_SESSION['passwordc']);
   else
       $smarty->assign('passwordc', '');

  // Actualiza o template
  $smarty->display('register.tpl');
 
?>