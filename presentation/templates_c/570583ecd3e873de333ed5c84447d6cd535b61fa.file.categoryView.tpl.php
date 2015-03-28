<?php /* Smarty version Smarty-3.1.8, created on 2015-01-09 19:41:11
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\categoryView.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2281554b07527ba0900-13939552%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '570583ecd3e873de333ed5c84447d6cd535b61fa' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\categoryView.tpl',
      1 => 1376166316,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2281554b07527ba0900-13939552',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b07527d3ab86_72285664',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b07527d3ab86_72285664')) {function content_54b07527d3ab86_72285664($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"controllerCategory",'assign'=>"obj"),$_smarty_tpl);?>

<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['obj']->value->mContent, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>