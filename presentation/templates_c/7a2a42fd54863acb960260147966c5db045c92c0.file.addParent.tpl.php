<?php /* Smarty version Smarty-3.1.8, created on 2014-12-29 09:41:45
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\addParent.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2975054a1682985ca08-99052223%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7a2a42fd54863acb960260147966c5db045c92c0' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\addParent.tpl',
      1 => 1384530046,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2975054a1682985ca08-99052223',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a16829910502_43183739',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a16829910502_43183739')) {function content_54a16829910502_43183739($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addParent",'assign'=>"obj"),$_smarty_tpl);?>

<form method=post>
<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':name']){?> class=error <?php }?> >
	<label>Name</label><br/>
	<input type=text name="tgp_parent_name" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':name'];?>
">
</p>
<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':hPhone']){?> class=error <?php }?>>
	<label>Home Phone</label><br/>
	<input type=text name="tgp_parent_hPhone" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':hPhone'];?>
">
</p>
<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':wPhone']){?> class=error <?php }?>>
	<label>Work Phone</label><br/>
	<input type=text name="tgp_parent_wPhone" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':wPhone'];?>
">
</p>
<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':cPhone']){?> class=error <?php }?>>
	<label>Cell Phone</label><br/>
	<input type=text name="tgp_parent_cPhone" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':cPhone'];?>
">
</p>
<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':email']){?> class=error <?php }?>>
	<label>Email</label><br/>
	<input type=text name="tgp_parent_email" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':email'];?>
">
</p>
<p>
	<input type=submit name="tgp_parent_add" value="Add Parent&raquo;">
</p>

</form>
<?php }} ?>