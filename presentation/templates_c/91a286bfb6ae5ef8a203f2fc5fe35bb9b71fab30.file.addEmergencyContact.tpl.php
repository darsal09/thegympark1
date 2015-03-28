<?php /* Smarty version Smarty-3.1.8, created on 2015-01-12 19:21:04
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\addEmergencyContact.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2457754b464f0cf8504-57870244%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '91a286bfb6ae5ef8a203f2fc5fe35bb9b71fab30' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\addEmergencyContact.tpl',
      1 => 1384819504,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2457754b464f0cf8504-57870244',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b464f0da8189_21840832',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b464f0da8189_21840832')) {function content_54b464f0da8189_21840832($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addEmergencyInfo",'assign'=>"obj"),$_smarty_tpl);?>

<form method=post>
		<p>
			Someone other than parent if participant is under 18.
		</p>
		
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':eName']){?>class=error<?php }?>>
			<label>Name</label><br/>
			<input type=text name=tgp_student_emergency_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':eName'];?>
">
		</p>
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':eRelation']){?>class=error<?php }?>>
			<label>Relation</label><br/>
			<input type=radio name=tgp_student_emergency_relation <?php if ($_smarty_tpl->tpl_vars['obj']->value->mP[':eRelation']==="Family"){?>checked<?php }?> value="Family"> Family &nbsp; &nbsp;
			<input type=radio name=tgp_student_emergency_relation <?php if ($_smarty_tpl->tpl_vars['obj']->value->mP[':eRelation']==="Friend"){?>checked<?php }?> value="Friend"> Friend
		</p>
		
		<div <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['combined']){?> class=error<?php }?>>
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['combined']){?>
				<p> At least one of the fields below must filled out!</p>
			<?php }?>
			<p>
				<label>Home Phone</label><br/>
				<input type=text name=tgp_student_emergency_homePhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':ehPhone'];?>
">
			</p>
			<p>
				<label>Cell Phone</label><br/>
				<input type=text name=tgp_student_emergency_cellPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':ecPhone'];?>
">
			</p>
			<p>
				<label>Work Phone</label><br/>
				<input type=text name=tgp_student_emergency_workPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':ewPhone'];?>
">
			</p>
		</div>
	<p>
		<input type=submit name=tgp_student_emergency_contact_add value="Add Emergency Contact&raquo;">
	</p>
</form><?php }} ?>