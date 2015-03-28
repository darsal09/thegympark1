<?php /* Smarty version Smarty-3.1.8, created on 2014-12-29 09:41:45
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\addSchool.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1552454a16829a31606-76256993%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bd01b177801b3f52e3c89524d814acdf78174834' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\addSchool.tpl',
      1 => 1363549780,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1552454a16829a31606-76256993',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a16829a83687_33431340',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a16829a83687_33431340')) {function content_54a16829a83687_33431340($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addSchool",'assign'=>"obj"),$_smarty_tpl);?>

<form method=post>
		<p>
			<label>School Name</label><br/>
			<input type=text name=tgp_student_school>
		</p>
		<p>
			<label>Grade</label><br/>
			<input type=text name=tgp_student_grade>
		</p>
	<p>
		<input type=submit name=tgp_student_school_add value="Add School&raquo;">
	</p>
</form>
<?php }} ?>