<?php /* Smarty version Smarty-3.1.8, created on 2015-01-07 12:54:40
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\weekly.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2254754ad72e0791804-29106273%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2a7b101323fed19e8ef477725a72e7969a25e18c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\weekly.tpl',
      1 => 1414197360,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2254754ad72e0791804-29106273',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
    'j' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54ad72e09c4009_25046944',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54ad72e09c4009_25046944')) {function content_54ad72e09c4009_25046944($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"weekly",'assign'=>"obj"),$_smarty_tpl);?>

<table class=tables>
<thead>
	<tr>
		<th colspan=8><h3><?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeason['season'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeason['year'];?>
: <i><?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeason['start_date'];?>
 to <?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeason['end_date'];?>
</i></h3></th>
	</tr>
	<tr class=classHeader>
		<th>class title</th><th>Mon</th><th>Tues</th><th>Wed</th><th>Thur</th><th>Fri</th><th>Sat</th><th>Sun</th>
	</tr>
</thead>
<tbody>
<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->classes) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
	<tr style="background-color:<?php echo $_smarty_tpl->tpl_vars['obj']->value->classes[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]->mColor;?>
;">
	<td>
		<?php if ($_smarty_tpl->tpl_vars['obj']->value->mIsAdmin){?>
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->classes[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]->mType=="Flexible"){?>
				<p align=right><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->classes[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]->mLinkToAddPackageToClass;?>
">add class package&raquo;</a></p>
			<?php }?>
		<?php }?>
		<a class=classes href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->classes[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]->mLinkToClass;?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->classes[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]->mTitle;?>
&raquo;</a><br/><span style="font-size:15px;"><?php echo $_smarty_tpl->tpl_vars['obj']->value->classes[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]->mAgeGroup;?>
</span>
	</td>

	<?php $_smarty_tpl->tpl_vars['j'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['j']->step = 1;$_smarty_tpl->tpl_vars['j']->total = (int)ceil(($_smarty_tpl->tpl_vars['j']->step > 0 ? 7+1 - (1) : 1-(7)+1)/abs($_smarty_tpl->tpl_vars['j']->step));
if ($_smarty_tpl->tpl_vars['j']->total > 0){
for ($_smarty_tpl->tpl_vars['j']->value = 1, $_smarty_tpl->tpl_vars['j']->iteration = 1;$_smarty_tpl->tpl_vars['j']->iteration <= $_smarty_tpl->tpl_vars['j']->total;$_smarty_tpl->tpl_vars['j']->value += $_smarty_tpl->tpl_vars['j']->step, $_smarty_tpl->tpl_vars['j']->iteration++){
$_smarty_tpl->tpl_vars['j']->first = $_smarty_tpl->tpl_vars['j']->iteration == 1;$_smarty_tpl->tpl_vars['j']->last = $_smarty_tpl->tpl_vars['j']->iteration == $_smarty_tpl->tpl_vars['j']->total;?>
		<td>
			<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['k'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['k']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['k']['name'] = 'k';
$_smarty_tpl->tpl_vars['smarty']->value['section']['k']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->classes[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]->mWeekdays[$_smarty_tpl->tpl_vars['j']->value]) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['k']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['k']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['k']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['k']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['k']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['k']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['k']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['k']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['k']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['k']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['k']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['k']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['k']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['k']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['k']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['k']['total']);
?>
				<a class=classes href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->classes[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]->mWeekdays[$_smarty_tpl->tpl_vars['j']->value][$_smarty_tpl->getVariable('smarty')->value['section']['k']['index']]->mLinkToClass;?>
"> <?php echo $_smarty_tpl->tpl_vars['obj']->value->classes[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]->mWeekdays[$_smarty_tpl->tpl_vars['j']->value][$_smarty_tpl->getVariable('smarty')->value['section']['k']['index']]->mTime;?>
&raquo;</a><br/>
			<?php endfor; endif; ?>
		</td>
	<?php }} ?>
	</tr>
<?php endfor; else: ?>
	<tr><td colspan=8>no classes available</td></tr>
<?php endif; ?>
</tbody>
</table><?php }} ?>