<?php /* Smarty version Smarty-3.1.8, created on 2015-01-10 20:23:56
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\addOpenPlayPackage.tpl" */ ?>
<?php /*%%SmartyHeaderCode:825554b1c57988f100-08704172%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ff26b3367855d43d587b626ae57c9b7af62b842b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\addOpenPlayPackage.tpl',
      1 => 1420939383,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '825554b1c57988f100-08704172',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b1c5798d5604_15034322',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b1c5798d5604_15034322')) {function content_54b1c5798d5604_15034322($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addOpenPlayPackage",'foldername'=>"admin",'assign'=>'obj'),$_smarty_tpl);?>

<ol class=breadcrumb>
	<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mLinks) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total']);
?>
		<li><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</a></li>
	<?php endfor; endif; ?>
</ol>
<div class=page-header>
	<h1>Add Open Play Package</h1>
</div>
<form method=post role=form>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=:title class=control-label>Title</label>
		</div>
		<div class=col-md-11>
			<input type=text name=":title" class=form-control value="">
		</div>
	</div>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=price class=control-label>Price</label>
		</div>
		<div class=col-md-11>
			<div class=input-group>
				<span class="input-group-addon">$</span>
				<input type=text name=":price" class=form-control value="">
				<span class="input-group-addon">.00</span>
			</div>
		</div>
	</div>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=:amount class=control-label>Amount</label>
		</div>
		<div class=col-md-11>
			<select name=:amount>
				<option value="1">Dropping</option>
				<option value="3">3 Pack </option>
				<option value="10">10 Pack</option>
				<option value="-1">Monthly</option>
				<option value=""></option>
				<option value=""></option>
			</select>
		</div>
	</div>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=:type class=control-label>Type</label>
		</div>
		<div class=col-md-11>
			<select name=:type>
				<option value="Individual">Individual</option>
				<option value="Family">Family</option>
			</select>
		</div>
	</div>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=:valid class=control-label>Valid</label>
		</div>
		<div class=col-md-11>
			<input type=text name=":valid" class=form-control value="">
		</div>
	</div>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=:options class=control-label>Options</label>
		</div>
		<div class=col-md-11>
			<select name=:valid>
			
			</select>
			<select name=:options>
				<option value="Day">Day</option>
				<option value="Month">Month</option>
				<option value="Year">Year</option>
			</select>
		</div>
	</div>
	<p>&nbsp;</p>
	<div class="row form-group">
		<div class=col-md-1>
			
		</div>
		<div class=col-md-11>
			<input type=button id=cancel class="btn btn-warning btn-lg" name="cancel" value="Cancel"> <input class="btn btn-primary btn-lg" type=submit name=save_packages value="Save&raquo;"
		</div>
	</div>
</form><?php }} ?>