<?php

include 'db.php';

// put full path to Smarty.class.php
require('/usr/share/php/smarty/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->template_dir = 'templates';
$smarty->compile_dir = 'templates_c';

$smarty->assign('Link_1', 'index.php');
$smarty->assign('Menu_1', 'Home');
$smarty->assign('Link_2', 'login.php');
$smarty->assign('Menu_2', 'Login');
$smarty->assign('Link_3', 'register.php');
$smarty->assign('Menu_3', 'Register');
$smarty->assign('Link_4', 'logout_action.php');
$smarty->assign('Menu_4', 'Logout');



// ligação à base de dados
$db = dbconnect($hostname,$db_name,$db_user,$db_passwd);
if($db) {
  // criar query numa string
  $query  = "SELECT * FROM `microposts`,`users` WHERE microposts.id=users.id";
 
  // executar a query
  if(!($result = @ mysqli_query($db, $query)))
   showerror($db); 

   $nrows  = mysqli_num_rows($result);
   for($i=0; $i<$nrows; $i++)
     $posts[$i] = mysqli_fetch_assoc($result);

  // faz a atribuição das variáveis do template smarty
  $smarty->assign('microposts',$posts);
  // Mostra a tabela
  $smarty->display('index_template.tpl');

  // fechar a ligação à base de dados
  mysqli_close($db);
} // end if
?>