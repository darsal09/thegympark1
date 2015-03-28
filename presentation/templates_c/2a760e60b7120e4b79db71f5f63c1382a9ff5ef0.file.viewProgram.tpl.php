<?php /* Smarty version Smarty-3.1.8, created on 2015-01-09 20:24:15
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\viewProgram.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1648254b07f3f66c889-64508329%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2a760e60b7120e4b79db71f5f63c1382a9ff5ef0' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\viewProgram.tpl',
      1 => 1376161074,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1648254b07f3f66c889-64508329',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b07f3f850e81_44423819',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b07f3f850e81_44423819')) {function content_54b07f3f850e81_44423819($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"controllerProgram",'assign'=>"obj"),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['obj']->value->mContent, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>