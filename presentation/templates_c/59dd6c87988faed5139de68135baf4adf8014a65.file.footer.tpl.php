<?php /* Smarty version Smarty-3.1.8, created on 2014-12-28 19:33:56
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1017354a0a174536c14-07599636%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '59dd6c87988faed5139de68135baf4adf8014a65' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\footer.tpl',
      1 => 1363213608,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1017354a0a174536c14-07599636',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a0a1745c3642_00951743',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a0a1745c3642_00951743')) {function content_54a0a1745c3642_00951743($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"footerMenu",'assign'=>"obj"),$_smarty_tpl);?>

<div class=footerMenu>
	<p align=right>
	<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAboutUs;?>
">About Us</a> |
	<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToFAQ;?>
">FAQs</a> |
	<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToContact;?>
">Contact Us</a>	
	</p>
</div><?php }} ?>