<?php /* Smarty version Smarty-3.1.8, created on 2015-01-30 20:17:19
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\removeClass.tpl" */ ?>
<?php /*%%SmartyHeaderCode:697854c7cbd6995201-68938952%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'efcd2afa8504a8b7db58378cc80b944ebfd32b4f' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\removeClass.tpl',
      1 => 1422667037,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '697854c7cbd6995201-68938952',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54c7cbd69d3a01_27014635',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54c7cbd69d3a01_27014635')) {function content_54c7cbd69d3a01_27014635($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"removeClass",'foldername'=>"admin",'assign'=>"obj"),$_smarty_tpl);?>

<div class=page-header>
	<h1>
		Removing student from class<br/>
		<small>
			<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClass['title'];?>
 on <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClass['weekday'];?>
 - <?php echo helper::getTimeFormat($_smarty_tpl->tpl_vars['obj']->value->mClass['start_time']);?>
<br/>
		</small>
	</h1>
</div>
<form method=post>

	<h3>Are you sure you want to remove <span style="color:red;"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['first'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['last'];?>
</span> from class?</h3>
	<p>
		<input class="btn btn-default btn-danger btn-lg" type=submit name=tgp_remove_class value="Remove"> &nbsp; &nbsp; &nbsp;
		<a class="btn btn-default btn-primary btn-lg" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToCancel;?>
">Cancel</a>
	</p>
</form><?php }} ?>