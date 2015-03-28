<?php /* Smarty version Smarty-3.1.8, created on 2015-01-02 12:06:07
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\openPlayClassAttendance.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1830054a6cfffca6484-60489283%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3570758009b97f7d37044afd28f07526bc6fb3a9' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\openPlayClassAttendance.tpl',
      1 => 1419030977,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1830054a6cfffca6484-60489283',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a6cfffd71684_26692159',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a6cfffd71684_26692159')) {function content_54a6cfffd71684_26692159($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"openPlayClassAttendance",'assign'=>"obj"),$_smarty_tpl);?>

<div class="panel panel-default">
	<div class=panel-heading><h1>Open Play Attendance</h1></div>
	<div class=panel-body>
		<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClass['weekday'];?>
, <?php echo date('F jS, Y',strtotime($_smarty_tpl->tpl_vars['obj']->value->mClassDate));?>
 at <?php echo date('g:ia',strtotime($_smarty_tpl->tpl_vars['obj']->value->mClass['start_time']));?>

	</div>
	<div class=panel-footer>
		<?php if (sizeof($_smarty_tpl->tpl_vars['obj']->value->mStudents)>0){?>
			<form method=post>
				<table>
				<tr><th>Name</th><th>Attendance</th></tr>
				<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mStudents) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
					<?php if ($_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['amount']>$_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['used']){?>
						<tr><td><?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['first'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['last'];?>
 (<?php echo ($_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['amount']-$_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['used']);?>
)</td><td><input type=checkbox name=attendance[] value=<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
></td></tr>
					<?php }?>
				<?php endfor; endif; ?>
				</table>
				<p>
					<input type=submit class="btn btn-default btn-primary" name=save_openplay_attendance value="Add Attendance&raquo;">
				</p>
			</form>
		<?php }else{ ?>
			<p>There are no participants with classes left for this open play. <a class="btn btn-default btn-warning" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToOpenPlay;?>
">Open Play Page</a></p>
		<?php }?>
	</div>
</div><?php }} ?>