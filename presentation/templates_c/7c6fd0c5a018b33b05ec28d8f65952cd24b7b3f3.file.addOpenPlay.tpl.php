<?php /* Smarty version Smarty-3.1.8, created on 2015-01-27 14:03:49
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\addOpenPlay.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1813454b1b90b7e7186-76305016%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7c6fd0c5a018b33b05ec28d8f65952cd24b7b3f3' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\addOpenPlay.tpl',
      1 => 1422249781,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1813454b1b90b7e7186-76305016',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b1b90b84ca80_13085402',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b1b90b84ca80_13085402')) {function content_54b1b90b84ca80_13085402($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addOpenPlay",'foldername'=>'admin','assign'=>"obj"),$_smarty_tpl);?>

<div class=page-header>
	<h1>Add Open Play</h1>
</div>
<form method=post role=form>
	<p>
		You can add open play for than one season
	</p>
	<div class=form-group>
		<div class=col-md-1>
			<label>Season</label>
		</div>
		<div class=col-md-11>
			<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mSeasons) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
				<label><input type=checkbox name=tgp_seasons[] value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeasons[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
"> <?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeasons[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</label><br/>
			<?php endfor; endif; ?>
		</div>
	</div>
	<div class=form-group>
		<div class=col-md-1>
			<label>Title</label>
		</div>
		<div class=col-md-11>
			<input type=text name=open_play_title value="">
		</div>
	</div>
	<p>&nbsp;</p>
	<div class=form-group>
		<div class=col-md-1></div>
		<div class=col-md-11>
			<input class="btn btn-default btn-primary btn-lg" type=submit name="tgp_add_open_play" value="Save Open Play(s)&raquo;">
		</div>
	</div>
</form><?php }} ?>