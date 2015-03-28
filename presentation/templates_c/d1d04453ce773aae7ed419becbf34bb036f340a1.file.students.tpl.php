<?php /* Smarty version Smarty-3.1.8, created on 2015-03-02 21:31:47
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\students.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2321454b45c42a58703-49717485%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd1d04453ce773aae7ed419becbf34bb036f340a1' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\students.tpl',
      1 => 1425349905,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2321454b45c42a58703-49717485',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b45c42ba4781_71300225',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b45c42ba4781_71300225')) {function content_54b45c42ba4781_71300225($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"students",'foldername'=>"admin",'assign'=>"obj"),$_smarty_tpl);?>

<div class=page-header>
	<h1>
		Students
		<small>
			<span class=pull-right>
				<div><input type=text name=query class="input-medium"> <input class="btn btn-default btn-primary btn-lg" type=submit value="Go"> <a class="btn btn-default btn-success btn-lg" href="">+Add Student</a></div>
			</span>
		</small>
	</h1>
</div>
	<div class=table-responsive>
		<table class=table>
		<tr><th>#</th><th><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSortByLast;?>
">Last Name</a></th><th><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSortByFirst;?>
">First Name</a></th><th><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSortByDOB;?>
">DOB : Age</a></th><th style="text-align:right;">Options</th></tr>
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
</a>
				</td>
				<td> 
					<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_to_student'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['first'];?>
</a>
				</td>
				<td>
					<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['dob'];?>
 : <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['age'];?>
 year(s)
				</td>
				<td>
					<span class=pull-right><a class="btn btn-default btn-success" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_to_student'];?>
">view&raquo;</a> <a class="btn btn-default btn-warning" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_to_email'];?>
">Email&raquo;</a></span>
				</td>
			</tr>
		<?php endfor; endif; ?>
		</table>
	</div><?php }} ?>