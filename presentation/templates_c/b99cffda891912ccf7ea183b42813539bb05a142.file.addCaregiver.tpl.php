<?php /* Smarty version Smarty-3.1.8, created on 2014-12-29 09:41:55
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\addCaregiver.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3067554a16833059d84-01688149%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b99cffda891912ccf7ea183b42813539bb05a142' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\addCaregiver.tpl',
      1 => 1394242651,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3067554a16833059d84-01688149',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a168330c7381_86727638',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a168330c7381_86727638')) {function content_54a168330c7381_86727638($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addCaregiver",'assign'=>"obj"),$_smarty_tpl);?>

<form method=post>
	<p>
		<input type=checkbox name=tgp_student_no_caregiver value="No"> No Caregiver
	</p>
			<p>
				<label>Name</label><br/>
				<input type=text name=tgp_student_caregiver_name>
			</p>
			<p>
				<label>Phone</label><br/>
				<input type=text name=tgp_student_caregiver_phone>
			</p>
	<p>
		<input type=submit name=tgp_student_caregiver_add value="Add Student's Caregiver&raquo;">
	</p>
</form><?php }} ?>