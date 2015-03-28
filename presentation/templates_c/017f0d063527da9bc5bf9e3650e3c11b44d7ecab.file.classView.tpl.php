<?php /* Smarty version Smarty-3.1.8, created on 2015-01-07 12:55:17
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\classView.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3131254ad73052f5d05-96203292%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '017f0d063527da9bc5bf9e3650e3c11b44d7ecab' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\classView.tpl',
      1 => 1376284964,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3131254ad73052f5d05-96203292',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54ad7305441d80_07338032',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54ad7305441d80_07338032')) {function content_54ad7305441d80_07338032($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"controllerClassInfo",'assign'=>"obj"),$_smarty_tpl);?>

<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['obj']->value->mContent, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>