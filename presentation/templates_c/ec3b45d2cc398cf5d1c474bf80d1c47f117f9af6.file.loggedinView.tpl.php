<?php /* Smarty version Smarty-3.1.8, created on 2014-12-28 19:51:03
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\loggedinView.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3133654a0a577906346-38384147%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ec3b45d2cc398cf5d1c474bf80d1c47f117f9af6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\loggedinView.tpl',
      1 => 1376173279,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3133654a0a577906346-38384147',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a0a5779e4e15_13082856',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a0a5779e4e15_13082856')) {function content_54a0a5779e4e15_13082856($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"controllerLoggedIn",'assign'=>"obj"),$_smarty_tpl);?>

<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['obj']->value->mContent, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>