<?php /* Smarty version Smarty-3.1.8, created on 2015-01-18 16:19:58
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\newsletter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:916754bc1f7e937059-67130705%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4261086526cca7f028d37005edeee6648ff30d21' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\newsletter.tpl',
      1 => 1421615997,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '916754bc1f7e937059-67130705',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bc1f7e9b7ed1_14631589',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bc1f7e9b7ed1_14631589')) {function content_54bc1f7e9b7ed1_14631589($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"newsletter",'foldername'=>"admin",'assign'=>"obj"),$_smarty_tpl);?>

<div class=page-header>
	<h1>
		<?php echo $_smarty_tpl->tpl_vars['obj']->value->mNewsletter['title'];?>

		<small class=pull-right>
			<a class="btn btn-default btn-warning btn-lg" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mNewsletter['link_to_edit'];?>
">Edit</a>
			<a class="btn btn-default btn-primary btn-lg" href="http://www.thegympark.com/TheGymParkSystem/newsletter.php?tgp_newsletter_id=<?php echo $_smarty_tpl->tpl_vars['obj']->value->mNewsletter['newsletter_id'];?>
" target="_blank">New window</a>
		</small>
	</h1>
</div>
	<form method=post>
		<p>
			<label>Subject</label><br/>
			<input type=text name=tgp_newsletter_subject value="">
		</p>
		<p>
			<label>Filters</label><br/>
			<select name=tgp_newsletter_filter onChange="printOptions( this.value );">
				<option value="">select a filter</option>
				<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mFilters) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
					<option value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mFilters[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
"> <?php echo $_smarty_tpl->tpl_vars['obj']->value->mFilters[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</option>
				<?php endfor; endif; ?>
			</select>
		</p>

		<div id=options>
		</div>
		
		<p>&nbsp;</p>
		<p>The newsletter below will be sent: </p>
		<div style="border:1px solid black;">
			<?php echo $_smarty_tpl->tpl_vars['obj']->value->mNewsletter['message'];?>

		</div>
		<p>&nbsp;</p>
		<p>
			<input class="btn btn-default btn-primary btn-lg" type=submit name="tgp_newsletter_send" value="Send Newsletter&raquo;">
		</p>
	</form>
</fieldset><?php }} ?>