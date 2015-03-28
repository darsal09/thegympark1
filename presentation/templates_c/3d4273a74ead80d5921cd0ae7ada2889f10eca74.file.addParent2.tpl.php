<?php /* Smarty version Smarty-3.1.8, created on 2014-12-29 09:41:45
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\addParent2.tpl" */ ?>
<?php /*%%SmartyHeaderCode:799154a16829956a03-49661029%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3d4273a74ead80d5921cd0ae7ada2889f10eca74' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\addParent2.tpl',
      1 => 1384531031,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '799154a16829956a03-49661029',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a168299db700_71463854',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a168299db700_71463854')) {function content_54a168299db700_71463854($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addParent2",'assign'=>"obj"),$_smarty_tpl);?>

<form method=post>
<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':name']){?> class=error <?php }?> >
	<label>Name</label><br/>
	<input type=text name="tgp_parent2_name" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':name'];?>
">
</p>
<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':hPhone']){?> class=error <?php }?>>
	<label>Home Phone</label><br/>
	<input type=text name="tgp_parent2_hPhone" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':hPhone'];?>
">
</p>
<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':wPhone']){?> class=error <?php }?>>
	<label>Work Phone</label><br/>
	<input type=text name="tgp_parent2_wPhone" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':wPhone'];?>
">
</p>
<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':cPhone']){?> class=error <?php }?>>
	<label>Cell Phone</label><br/>
	<input type=text name="tgp_parent2_cPhone" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':cPhone'];?>
">
</p>
<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':email']){?> class=error <?php }?>>
	<label>Email</label><br/>
	<input type=text name="tgp_parent2_email" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':email'];?>
">
</p>
<p>
	<input type=submit name="tgp_parent2_add" value="Add Parent&raquo;">
</p>

</form>
<?php }} ?>