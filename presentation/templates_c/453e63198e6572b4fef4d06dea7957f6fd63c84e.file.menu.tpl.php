<?php /* Smarty version Smarty-3.1.8, created on 2014-12-28 19:33:56
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1879154a0a17439c8e6-29314517%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '453e63198e6572b4fef4d06dea7957f6fd63c84e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\menu.tpl',
      1 => 1378575746,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1879154a0a17439c8e6-29314517',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a0a1744d8fe4_20326392',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a0a1744d8fe4_20326392')) {function content_54a0a1744d8fe4_20326392($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"menu",'assign'=>"obj"),$_smarty_tpl);?>


<p class=topmenu>
	<?php if (!$_smarty_tpl->tpl_vars['obj']->value->mEmptyCart){?>
		<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToCart;?>
">view cart</a>|
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['obj']->value->mLogIn){?>
		<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToMyAccount;?>
">My account</a>|
		<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToMyHomePage;?>
">My main</a>|
		<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToLogOff;?>
">Log off</a>
	<?php }else{ ?>
		<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSignIn;?>
">Log in</a>
	<?php }?>
</p>
<p class=bottommenu>
	<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToIndex;?>
">Home</a>
	<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToClassSchedule;?>
">Class Schedule</a>
	<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToProgram;?>
">Programs</a>
	<a href="">Birthday Parties</a>
	<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToMembership;?>
">Memberships</a>
	<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEtiquette;?>
">Etiquette</a>
</p>
<?php }} ?>