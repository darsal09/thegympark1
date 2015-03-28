<?php /* Smarty version Smarty-3.1.8, created on 2015-01-25 23:38:30
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\seasons.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1732054b71debc73804-99229764%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8eacd1433e95255dcf136a7073a60e3aa7fa33b4' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\seasons.tpl',
      1 => 1422247108,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1732054b71debc73804-99229764',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b71debcc5880_54415424',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b71debcc5880_54415424')) {function content_54b71debcc5880_54415424($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"seasons",'foldername'=>"admin",'assign'=>"obj"),$_smarty_tpl);?>

<div class=page-header>
	<h1>
		Seasons
		<small class="pull-right">
			<a class="btn btn-default btn-primary btn-lg" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddSeason;?>
">+Add Season&raquo;</a>
		</small>
	</h1>
</div>
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
	<div class=row style="padding:5px;">
		<div class=col-md-4><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeasons[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
"><strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeasons[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['season'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeasons[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['year'];?>
</strong></a></div>
		<div class="col-md-3"><a class="btn btn-success" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeasons[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
">View&raquo;<a/> &nbsp; <a class="btn btn-primary" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeasons[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_edit'];?>
">Edit</a> &nbsp; <a class="btn btn-warning" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeasons[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_remove'];?>
">Remove</a></div>
	</div>
<?php endfor; endif; ?><?php }} ?>