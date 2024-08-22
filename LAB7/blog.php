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
      

if(!isset($_GET['Blog'])){
    $smarty->assign('Blog', '');
    $smarty->assign('Action', 'newblog_action.php');
}
else{
    $smarty->assign('Blog',  $_SESSION['Blog']);
    $smarty->assign('Action', 'updateblog_action.php');
}

  // Actualiza o template
  $smarty->display('blog_template.tpl');

?>