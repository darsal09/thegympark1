<?php /* Smarty version Smarty-3.1.8, created on 2014-12-29 09:41:45
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\studentClasses.tpl" */ ?>
<?php /*%%SmartyHeaderCode:456154a16829785c83-65210727%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd34425503e2dda564ac0e4f3367d5ef7f8b817c1' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\studentClasses.tpl',
      1 => 1411355719,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '456154a16829785c83-65210727',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a16829849186_75733606',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a16829849186_75733606')) {function content_54a16829849186_75733606($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"studentClasses",'assign'=>"obj"),$_smarty_tpl);?>


<div class=classes>
	<h3 class=program_title>
			Class(es) &nbsp;
			<span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddClass;?>
" title="add class to student"><span class="glyphicon glyphicon-plus"></span></a></span>
	</h3>
	<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mClasses) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
		<p <?php if ($_smarty_tpl->getVariable('smarty')->value['section']['i']['index']%2==0){?>
			class=classeven
			<?php }?>
		><span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_to_remove'];?>
" title="remove student from this class"><span class="glyphicon glyphicon-remove"></span></a><br/><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['move'];?>
" title="Click to move kid from this class to another"><img src="<?php echo Link::Build('images');?>
/move.png"></a></span><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_to_class'];?>
"><b><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</b> for <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['age_group'];?>
<br/><?php echo substr($_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['weekday'],0,3);?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['start_time'];?>
</a></p>
	<?php endfor; else: ?>
		<p>This participant doesn't have classes yet!</p>
	<?php endif; ?>
</div><?php }} ?>