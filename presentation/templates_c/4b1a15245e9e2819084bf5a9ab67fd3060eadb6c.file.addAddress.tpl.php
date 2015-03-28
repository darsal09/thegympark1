<?php /* Smarty version Smarty-3.1.8, created on 2015-01-12 19:21:04
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\addAddress.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2916054b464f0bcf704-69483317%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4b1a15245e9e2819084bf5a9ab67fd3060eadb6c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\addAddress.tpl',
      1 => 1384368282,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2916054b464f0bcf704-69483317',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b464f0c3cd09_93258466',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b464f0c3cd09_93258466')) {function content_54b464f0c3cd09_93258466($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addAddress",'assign'=>"obj"),$_smarty_tpl);?>
	
<form method=post>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':street']){?>class=error<?php }?> >
				<label>Street</label><br/>
				<input type=text name=tgp_student_address_street value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':street'];?>
">
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':city']){?>class=error<?php }?>>
				<label>City</label><br/>
				<input type=text name=tgp_student_address_city  value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':city'];?>
">
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':state']){?>class=error<?php }?>>
				<label>State</label><br/>
				<input type=text name=tgp_student_address_state  value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':state'];?>
">
			</p>	
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':zip']){?>class=error<?php }?>>
				<label>Zip</label><br/>
				<input type=text name=tgp_student_address_zip value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':zip'];?>
">
			</p>	
	<p>
		<input type=submit name=tgp_student_address_add value="Add Student's Address&raquo;">
	</p>
</form>
<?php }} ?>