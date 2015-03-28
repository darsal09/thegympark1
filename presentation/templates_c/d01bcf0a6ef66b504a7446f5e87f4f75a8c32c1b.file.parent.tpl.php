<?php /* Smarty version Smarty-3.1.8, created on 2015-01-26 18:32:17
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\parent.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1475654c6cdfabb8007-74718642%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd01bcf0a6ef66b504a7446f5e87f4f75a8c32c1b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\parent.tpl',
      1 => 1422315075,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1475654c6cdfabb8007-74718642',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54c6cdfac48884_27394534',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54c6cdfac48884_27394534')) {function content_54c6cdfac48884_27394534($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"parentController",'foldername'=>'admin','assign'=>"obj"),$_smarty_tpl);?>

<div class=page-header>
	<h1><?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent['name'];?>
</h1>
</div><?php }} ?>