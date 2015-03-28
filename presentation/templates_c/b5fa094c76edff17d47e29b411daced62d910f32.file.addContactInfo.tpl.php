<?php /* Smarty version Smarty-3.1.8, created on 2015-01-12 18:49:34
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\addContactInfo.tpl" */ ?>
<?php /*%%SmartyHeaderCode:298454b45d8e29bf85-27582169%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b5fa094c76edff17d47e29b411daced62d910f32' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\addContactInfo.tpl',
      1 => 1384919196,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '298454b45d8e29bf85-27582169',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b45d8e372d09_97221250',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b45d8e372d09_97221250')) {function content_54b45d8e372d09_97221250($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addContactInfo",'assign'=>"obj"),$_smarty_tpl);?>

	<form method=post>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':hPhone']){?> class=error<?php }?>>
				<label>Home Phone</label><br/>
				<input type=text name=tgp_student_contact_info_homePhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':hPhone'];?>
">
			
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':cPhone']){?> class=error<?php }?>>
				<label>Cell Phone</label><br/>
				<input type=text name=tgp_student_contact_info_cellPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':cPhone'];?>
">
			
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':email']){?> class=error<?php }?>>
				<label>Email</label><br/>
				<input type=text name=tgp_student_contact_info_email value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':email'];?>
">
			</p>
		<p>
			<input type=submit name=tgp_student_contact_info_add value="Add Student's Contact Info&raquo;">
		</p>
	</form><?php }} ?>