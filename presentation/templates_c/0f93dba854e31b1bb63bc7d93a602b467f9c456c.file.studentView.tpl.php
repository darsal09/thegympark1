<?php /* Smarty version Smarty-3.1.8, created on 2015-01-09 20:32:05
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\studentView.tpl" */ ?>
<?php /*%%SmartyHeaderCode:951354b08115d32e88-55599911%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0f93dba854e31b1bb63bc7d93a602b467f9c456c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\studentView.tpl',
      1 => 1376358312,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '951354b08115d32e88-55599911',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b08116128e06_52859105',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b08116128e06_52859105')) {function content_54b08116128e06_52859105($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"controllerStudent",'assign'=>"obj"),$_smarty_tpl);?>

<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['obj']->value->mContent, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>