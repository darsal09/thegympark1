<?php /* Smarty version Smarty-3.1.8, created on 2015-01-18 10:20:44
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\passwordSent.tpl" */ ?>
<?php /*%%SmartyHeaderCode:783254bbcf4c57de50-71989532%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '68b944fbac605b28ac6bdfdda59e66217e837dc9' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\passwordSent.tpl',
      1 => 1414204333,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '783254bbcf4c57de50-71989532',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bbcf4c6451d5_72238535',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bbcf4c6451d5_72238535')) {function content_54bbcf4c6451d5_72238535($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"sentPassword",'assign'=>"obj"),$_smarty_tpl);?>

<div class=row>
	<div class=col-md-6>
		<fieldset>
			<legend><h1>Password Sent</h1></legend>
			<p>
				<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['name'];?>
,<br/>
				Your password as been sent to <?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['email'];?>
.
			</p>
			<p>
				Check your email account to get the password and
				click <a href="<?php echo Link::Build('sign-in');?>
">here</a> to log in to your account.
			</p>
		</fieldset>
	</div>
	
	<div class=col-md-6>
		<br/>
		<div class="panel-default">
			<div class=panel-heading>Quick Links</div>
			<div class=panel-body>
				<a href="<?php echo Link::Build('sign-in');?>
">Login&raquo;</a>
			</div>
			<div class=panel-footer>
			
			</div>
		</div>
	</div>
</div><?php }} ?>