<?php /* Smarty version Smarty-3.1.8, created on 2014-12-29 09:41:45
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\viewStudent.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2261954a168292a7b09-20982267%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '68a680fde849574c3b08b1869a54c3f0bdb19ea9' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\viewStudent.tpl',
      1 => 1382838562,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2261954a168292a7b09-20982267',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a1682938e281_95909896',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a1682938e281_95909896')) {function content_54a1682938e281_95909896($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"controllerStudent",'assign'=>"obj"),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['obj']->value->mContent, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>