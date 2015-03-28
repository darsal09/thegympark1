<?php /* Smarty version Smarty-3.1.8, created on 2015-01-27 22:07:13
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\updateAddress.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2747454c85088ad9580-28188548%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '48f804e74c7515d08214e2f279d0627ba90b0785' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\updateAddress.tpl',
      1 => 1422414431,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2747454c85088ad9580-28188548',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54c85088b42d02_16456815',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54c85088b42d02_16456815')) {function content_54c85088b42d02_16456815($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"updateAddress",'assign'=>"obj"),$_smarty_tpl);?>

<form method=post role=form>
	<input type=hidden name=tgp_student_address_id value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['id'];?>
">
			<p>
				<label>Street</label><br/>
				<input type=text name=tgp_student_address_street value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['street'];?>
">
			</p>
			<p>
				<label>City:</label><br/>
				<input type=text name=tgp_student_address_city value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['city'];?>
">
			</p>
			<p>
				<label>State:</label><br/>
				<input type=text name=tgp_student_address_state value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['state'];?>
">
			</p>
			<p>
				<label>Zip:</label><br/>
				<input type=text name=tgp_student_address_zip value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['zip'];?>
">
			</p>
			<p>
				<input class="btn btn-default btn-primary btn-lg" type=submit name=tgp_student_address_update value="Update Address&raquo;">
				<a class="btn btn-default btn-warning btn-lg" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToCancel;?>
">Cancel</a>
			</p>
</form><?php }} ?>