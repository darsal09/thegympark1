<?php /* Smarty version Smarty-3.1.8, created on 2015-01-25 23:47:04
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\addSeason.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1737154c5c55302ee05-25226772%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '203a0e9356af3bd6c987558d0eee3e6f62c5107e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\addSeason.tpl',
      1 => 1422247616,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1737154c5c55302ee05-25226772',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54c5c553098588_14759273',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54c5c553098588_14759273')) {function content_54c5c553098588_14759273($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addSeason",'foldername'=>"admin",'assign'=>"obj"),$_smarty_tpl);?>

<div class=breadcrumb>
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
		<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</a>
	<?php endfor; endif; ?>
</div>
<div class=page-header>
	<h1>
		Add Season
		<small class=pull-right>
			<a class="btn btn-default btn-primary btn-lg" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddClasses;?>
">+Add Classes&raquo;</a>
		</small>
	</h1>
</div>
	<p>
		By creating a season here you will enable to add classes in this season. Without creating a season you won't be able to create classes for a specific season.
	</p>
	<form method=post>
	
		<p
		<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':season']){?>
			class=error
		<?php }?>
		>
			<input type=radio name=tgp_season_season value="Fall-Winter"> Fall-Winter<br/>
			<input type=radio name=tgp_season_season value="Winter-Spring"> Winter-Spring<br/>
			<input type=radio name=tgp_season_season value="Summer"> Summer<br/>
		
		</p>	
		<p
		<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':start_date']){?>
			class=error
		<?php }?>
		>
			<label>Start Date</label><br/>
			<input id=datepicker type=text name=tgp_season_start_date value="">
		</p>
		<p
		<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':end_date']){?>
			class=error
		<?php }?>
		>
			<label>End Date</label><br/>
			<input id=datepicker2 type=text name=tgp_season_end_date value="">
		</p>
		
		<p>
			<input class="btn btn-default btn-primary" type=submit name=tgp_add_season value="Save Seaosn&raquo;">
		</p>
	</form>
</fieldset>
<?php }} ?>