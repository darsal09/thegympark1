<?php /* Smarty version Smarty-3.1.8, created on 2015-01-18 12:52:19
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\addProgram.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1044854bbf2d3ba8052-58763181%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '41fa661182e9419869a01648fc2fa81ebbf36e6a' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\addProgram.tpl',
      1 => 1411526314,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1044854bbf2d3ba8052-58763181',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bbf2d3cb1a52_82775949',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bbf2d3cb1a52_82775949')) {function content_54bbf2d3cb1a52_82775949($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addProgram",'assign'=>"obj"),$_smarty_tpl);?>

<ol class=breadcrumb>
		<li><a href="<?php echo Link::Build('admin');?>
">Admin</a></li>
		<li><a href="<?php echo Link::Build('admin/programs');?>
">Programs</a></li>		
</ol>

<div class=row>
	<div class=col-md-6>
		<fieldset>
			<legend><h1>Add Program</h1></legend>
			
			<?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mErrorMessage)){?>
				<p class=attention><?php echo $_smarty_tpl->tpl_vars['obj']->value->mErrorMessage;?>
</p>
			<?php }?>
			
			<form method=post role=form>
				<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':pTitle']){?>has-error<?php }?>">
					<label class=control-label>Title</label>
					<input type=text class=form-control name=tgp_program_title>
				</div>
				<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':pDesc']){?>has-error<?php }?>">
					<label class=control-label>Description</label>
					<textarea class=form-control name=tgp_program_description></textarea>
				</div>
				<p>
					<input type=submit class="btn btn-default btn-primary btn-lg" name=tgp_program_addProgram value="Save Program &raquo;">
				</p>
			</form>
		</fieldset>
	</div>
</div><?php }} ?>