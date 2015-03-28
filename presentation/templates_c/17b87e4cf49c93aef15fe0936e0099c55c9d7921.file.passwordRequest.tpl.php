<?php /* Smarty version Smarty-3.1.8, created on 2015-01-18 10:20:33
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\passwordRequest.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1650754bbcf412f95d5-75857962%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '17b87e4cf49c93aef15fe0936e0099c55c9d7921' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\passwordRequest.tpl',
      1 => 1414203859,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1650754bbcf412f95d5-75857962',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bbcf41445657_58020397',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bbcf41445657_58020397')) {function content_54bbcf41445657_58020397($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"requestPassword",'assign'=>"obj"),$_smarty_tpl);?>

<div class=row>
	<div class=col-md-7>
		<fieldset>
			<legend><h1>Requesting Password</h1></legend>
			<?php if (in_array(true,$_smarty_tpl->tpl_vars['obj']->value->mErrors)){?>
				<p class=error>
					Your email does not exist in our system. You can sign up by clicking <a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSignUp;?>
">here</a> to create an acount with us.
				</p>
			<?php }?>
			<p>
				In order to request password. You have to enter your name and email. If your email is in the system, we will send you the link to update your password.
			</p>
			<form method=post>
				<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':email']){?>has-error<?php }?>">
					<label class=control-label>Email</label>
					<div>
						<input type=text name=:email class=form-control placeholder="enter your email" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':email'];?>
">
					</div>
				</div>
				<div class=form-group>
					<input type=submit class="btn-default btn-lg btn-primary" name=request_password value="Request Password&raquo;">
				</div>
			</form>
		</fieldset>
	</div>
	<div class=col-md-5>
		<fieldset>
			<legend><h1>Helpful Links</h1></legend>
			<p>New members. <a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSignUp;?>
">sign up&raquo;</a></p>
			<p>Go back to <a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToLogin;?>
">login&raquo;</a></p>
		</fieldset>
	</div>
</div><?php }} ?>