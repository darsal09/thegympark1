<?php /* Smarty version Smarty-3.1.8, created on 2014-12-31 12:57:22
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\addOpenPlayToStudent.tpl" */ ?>
<?php /*%%SmartyHeaderCode:315754a43902afc809-89465046%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd80ad9d06b85fe9c8d04b2f524e43f5ee806713e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\addOpenPlayToStudent.tpl',
      1 => 1419809155,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '315754a43902afc809-89465046',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a43902c1d901_87472462',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a43902c1d901_87472462')) {function content_54a43902c1d901_87472462($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addOpenPlayToStudent",'assign'=>"obj"),$_smarty_tpl);?>

<h1 class=program_title><i>Add Open Plays To</i> <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipant['first'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipant['last'];?>
</h1>
<p>&nbsp;</p>
<form method=post>
		<table>
		<tr><th colspan=3 class=program_title>Open Plays</td></tr>
		<tr><th>#</th><th>Title</th><th>Amount</th></tr>
			<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mOpenPlays) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
				<td>	
					<?php echo ($_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1);?>

				</td>
				<td style="text-align:left;">
					<input type=checkbox name=tgp_openplays[] value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mOpenPlays[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
"> <?php echo $_smarty_tpl->tpl_vars['obj']->value->mOpenPlays[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>

				</td>
				<td>
					<input type=text name="openplay_<?php echo $_smarty_tpl->tpl_vars['obj']->value->mOpenPlays[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
" value="" style="width:40px;">
				</td>
			</tr>
			<?php endfor; endif; ?>
		</table>
	<p>&nbsp;</p>
	<p>
		<input type=submit name="tgp_add_open_play" value="Save Open Play(s)&raquo;">
	</p>
</form>

<?php }} ?>