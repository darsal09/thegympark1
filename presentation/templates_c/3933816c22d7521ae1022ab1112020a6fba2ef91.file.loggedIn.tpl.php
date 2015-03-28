<?php /* Smarty version Smarty-3.1.8, created on 2015-01-18 10:22:30
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\loggedIn.tpl" */ ?>
<?php /*%%SmartyHeaderCode:177754bbcfb6c8a956-10336437%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3933816c22d7521ae1022ab1112020a6fba2ef91' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\loggedIn.tpl',
      1 => 1414601395,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '177754bbcfb6c8a956-10336437',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bbcfb6d46150_05863889',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bbcfb6d46150_05863889')) {function content_54bbcfb6d46150_05863889($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"loggedIn",'assign'=>"obj"),$_smarty_tpl);?>

<fieldset>
	<legend><h1>Welcome, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mUserName;?>
!</h1></legend>

	<div class="row">
		<div class="col-md-8">
			<!--	<?php echo $_smarty_tpl->getSubTemplate ("memberships.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
 -->
				<?php echo $_smarty_tpl->getSubTemplate ("notices.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

				<?php echo $_smarty_tpl->getSubTemplate ("kids.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

				<?php echo $_smarty_tpl->getSubTemplate ("register.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

		</div>
		<div class=col-md-4>
		
		</div>
	</div>
</fieldset><?php }} ?>