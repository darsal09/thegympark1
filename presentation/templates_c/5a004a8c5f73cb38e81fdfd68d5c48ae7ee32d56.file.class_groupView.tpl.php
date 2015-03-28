<?php /* Smarty version Smarty-3.1.8, created on 2015-01-09 19:41:44
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\class_groupView.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2836254b07548528502-60808844%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5a004a8c5f73cb38e81fdfd68d5c48ae7ee32d56' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\class_groupView.tpl',
      1 => 1376353856,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2836254b07548528502-60808844',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b0754860ec83_26318755',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b0754860ec83_26318755')) {function content_54b0754860ec83_26318755($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"controllerClassGroup",'assign'=>"obj"),$_smarty_tpl);?>

<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['obj']->value->mContent, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>