<?php /* Smarty version Smarty-3.1.8, created on 2015-01-07 12:55:17
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\classStudents.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2491054ad730579d385-98077199%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '648c7bfa960fd35c29bfc95608e1d42ed2b3f03d' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\classStudents.tpl',
      1 => 1411335192,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2491054ad730579d385-98077199',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54ad7305841481_20329692',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54ad7305841481_20329692')) {function content_54ad7305841481_20329692($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"classStudents",'assign'=>"obj"),$_smarty_tpl);?>

	<h3 class=program_title>
		Students
		<span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddExistingParticipant;?>
">Add Existing Participant&raquo;<a/> :: <a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddChild;?>
">+Add New Participant&raquo;</a></span>
	</h3>
	
	<?php if (sizeof($_smarty_tpl->tpl_vars['obj']->value->mStudents)>0){?>	
		<table class=tables>
		<tr><th>#</th><th>Name</th><th>Age</th><th style="text-align:right;">Options</th></tr>
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
			<tr>
				<td><?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>
.</td>
				<td>
					<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_to_student'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['last'];?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['first'];?>
</a>
				</td>
				<td>
					<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['age'];?>

				</td>
				<td align=right>
					<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_to_student'];?>
">view</a>
					:: <a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_to_remove'];?>
">remove</a>
				</td>
			</tr>
		<?php endfor; endif; ?>
		</table>
	<?php }else{ ?>
		<p>No students in this class yet!</p>
	<?php }?>
	<p>&nbsp;</p><?php }} ?>