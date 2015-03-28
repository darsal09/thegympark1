<?php /* Smarty version Smarty-3.1.8, created on 2015-01-09 22:25:02
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\singleEmail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2168154b09b8e48c102-54981806%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0aa10becd721e970c48d884c047492e80ee20740' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\singleEmail.tpl',
      1 => 1385143540,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2168154b09b8e48c102-54981806',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b09b8e562e88_17817295',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b09b8e562e88_17817295')) {function content_54b09b8e562e88_17817295($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"singleEmail",'assign'=>"obj"),$_smarty_tpl);?>

<p>
	<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToParticipant;?>
">&laquo;Participant Info</a>
</p>
<?php if (in_array(true,$_smarty_tpl->tpl_vars['obj']->value->mErrors)){?>
	<p class=error>Please make sure you fill out all fields</p>
<?php }?>
<h1><i>Email </i>
	<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentInfo['first'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentInfo['last'];?>

</h1>
<form method=post>
<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':subject']){?> class=error<?php }?>>
	<label>Subject</label><br/>
	<input type=text name=tgp_email_subject value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':subject'];?>
">
</p>

<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':message']){?> class=error<?php }?>>
	<label>Message</label><br/>
	<textarea name=tgp_email_message><?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':message'];?>
</textarea>
</p>

<p>
	<input type=submit name=tgp_email_send value="Send  Email&raquo;">
</p>
</form>
<?php }} ?>