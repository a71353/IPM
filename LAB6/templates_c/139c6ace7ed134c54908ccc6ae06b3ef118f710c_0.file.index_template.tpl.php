<?php
/* Smarty version 4.2.1, created on 2022-11-02 01:06:48
  from 'C:\xampp\htdocs\a71353\demo\templates\index_template.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.2.1',
  'unifunc' => 'content_6361b498085307_34541066',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '139c6ace7ed134c54908ccc6ae06b3ef118f710c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\a71353\\demo\\templates\\index_template.tpl',
      1 => 1667324140,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6361b498085307_34541066 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<head>
  <style>
    body {
      box-sizing: border-box;
      margin: 0;
      background-color: white;
    }
    
    h1{
    	font-size: 20px;
        float: right;
        padding: 0px 10px;
    }
    
    h3{
    	font-size:15px;
        float: left;
        padding: 0px 10px;
    }
    
    h4{
    	font-size: 30px;
        float: center;
    }
    
    header {
      background-color: lightblue;
    }
    
    .topnav:after {
      clear: both;
      display: block;
      content: "";
    }
    
    .topnav a {
      float: left;
      color: white;
      text-decoration: none;
      padding: 10px 10px;
    }
    
    .topnav a:hover {
      background-color: black;
    }
    
    #topnav-right {
      float: right;
    }
  </style>
</head>

<body>
  <header>
    <div class="topnav">
      <a href="#">
        <h2>Home</h2>
      </a>
      <div id="topnav-right">
        <a href="file:///C:/Users/gonca/Desktop/UNI/Interfaces/LAB2/login_template.html">
          <h2>Log In</h2>
        </a>
        <a href="file:///C:/Users/gonca/Desktop/UNI/Interfaces/LAB2/Register_template.html">
          <h2>Register</h2>
        </a>
      </div>
    </div>

    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['users']->value, 'user');
$_smarty_tpl->tpl_vars['user']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['user']->value) {
$_smarty_tpl->tpl_vars['user']->do_else = false;
?>
    <h1><?php echo $_smarty_tpl->tpl_vars['users']->value['name'];?>
</h1>
    <h3>Created:<?php echo $_smarty_tpl->tpl_vars['users']->value['created_at'];?>
</h3>
    <h3>Updated: <?php echo $_smarty_tpl->tpl_vars['users']->value['updated_at'];?>
</h3>
    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
  </header>
  <h4>LAB 2</h4>
  

</body>

</html><?php }
}
