<?php /* Smarty version Smarty-3.1.8, created on 2015-01-04 11:42:20
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\signin.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1837054a96d6cd84a26-86105900%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8728014bf4a70452a46e32d8fdb224d36c2678cb' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\signin.tpl',
      1 => 1410487297,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1837054a96d6cd84a26-86105900',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a96d6cf075a5_81568976',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a96d6cf075a5_81568976')) {function content_54a96d6cf075a5_81568976($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"signIn",'assign'=>"obj"),$_smarty_tpl);?>

<div class=row>
	<div class=col-md-6>
		<fieldset>
			<legend><h1>Sign In</h1></legend>
			<form method=post role=form>
			
			<?php if (in_array(true,$_smarty_tpl->tpl_vars['obj']->value->mErrors)){?>
				<p class=error>
					There were errors login in. Please verify your login information
				</p>
			<?php }?>
			
			<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['tgp_signin_email']){?> has-error<?php }?>">
				<label for=tgp_signin_email class=control-label>Email</label><br/>
				<div>
					<input type=text class=form-control name=tgp_signin_email placeholder="enter your email" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['tgp_signin_email'];?>
">
				</div>
			</div>
			<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['tgp_signin_pswd']){?>has-error<?php }?>">
				<label for=tgp_sign_in_pswd  class=control-label>Password</label><br/>
				<div>
					<input type=password class=form-control name=tgp_signin_pswd placeholder="enter your password" value="">
				</div>
			</div>			
			<p>
				<input type=submit class="btn-default btn-lg btn-primary" value="Log in &raquo;" name=tgp_signIn>
			</p>
			</form>
		</fieldset>
	</div>
	<div class=col-md-6>
		<fieldset>
			<legend><h1>Helpful Links</h1></legend>
				<p>New members: <a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSignUp;?>
">sign up&raquo;</a></p>
				<p><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToRequestPassword;?>
">Request password&raquo;</a></p>
		</fieldset>
	</div>
</div><?php }} ?>