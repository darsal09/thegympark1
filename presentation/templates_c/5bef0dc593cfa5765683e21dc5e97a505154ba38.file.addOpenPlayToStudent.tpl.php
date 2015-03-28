<?php /* Smarty version Smarty-3.1.8, created on 2015-01-18 17:19:14
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\addOpenPlayToStudent.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2727754bc3162445654-75151026%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5bef0dc593cfa5765683e21dc5e97a505154ba38' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\addOpenPlayToStudent.tpl',
      1 => 1419809155,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2727754bc3162445654-75151026',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bc31624be7d0_93351412',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bc31624be7d0_93351412')) {function content_54bc31624be7d0_93351412($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
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