<?php /* Smarty version Smarty-3.1.8, created on 2015-01-21 21:38:08
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\myAccount.tpl" */ ?>
<?php /*%%SmartyHeaderCode:906754c062903a9806-46999669%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7b597fd3bd0a2de20ef8a7b505dfc1018045cc26' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\myAccount.tpl',
      1 => 1362528549,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '906754c062903a9806-46999669',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54c06290510e03_85943957',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54c06290510e03_85943957')) {function content_54c06290510e03_85943957($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"myAccount",'assign'=>"obj"),$_smarty_tpl);?>

<fieldset>
	<legend><h1>
		<?php if ($_smarty_tpl->tpl_vars['obj']->value->mEdit){?>
			Update My Information
		<?php }elseif($_smarty_tpl->tpl_vars['obj']->value->mEditPassword){?>
			Change Password
		<?php }else{ ?>
			My Information
		<?php }?>
		</h1>
	</legend>

<form method=post action="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAction;?>
">
<?php if ($_smarty_tpl->tpl_vars['obj']->value->mEditPassword){?>
	<?php if ($_smarty_tpl->tpl_vars['obj']->value->mUpdatePasswordError){?>
		<p class=error>Error changing password</p>
	<?php }?>
	<p>
		<lable for=lms_edit_opswd>Current password</label><br/>
		<input type=password name=tgp_edit_opswd value="">
	</p>
	<p>
		<lable for=lms_edit_opswd>New password</label><br/>
		<input type=password name=tgp_edit_npswd value="">
	</p>
	<p>
		<lable for=lms_edit_opswd>Re-typ new password</label><br/>
		<input type=password name=tgp_edit_re_npswd value="">
	</p>
	<p>
		<input type=submit name=tgp_change_pswd value="Change Password &raquo;">
	</p>
	
<?php }else{ ?>
<p>
	<label>Name:</label><br/>
	<?php if ($_smarty_tpl->tpl_vars['obj']->value->mEdit){?>	
		<input type=text name=tgp_edit_user_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mUserInfo['uName'];?>
">
	<?php }else{ ?>
		<?php echo $_smarty_tpl->tpl_vars['obj']->value->mUserInfo['uName'];?>

	<?php }?>
</p>
<p>
	<label>Email:</label><br/>
	<?php if ($_smarty_tpl->tpl_vars['obj']->value->mEdit){?>
		<input type=text name=tgp_edit_user_email value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mUserInfo['uEmail'];?>
">
	<?php }else{ ?>
		<?php echo $_smarty_tpl->tpl_vars['obj']->value->mUserInfo['uEmail'];?>

	<?php }?>
</p>
	<?php if ($_smarty_tpl->tpl_vars['obj']->value->mEdit){?>
		<p><input type=submit name="tgp_update_user" value="Save Changes &raquo;"></p>
	<?php }else{ ?>
		<p><input type=submit name="tgp_edit_user" value="Edit Info &raquo;"></p>
		<p><input type=submit name="tgp_edit_pswd" value="Change Password &raquo;"></p>
	<?php }?>
<?php }?>
</form>
</fieldset><?php }} ?>