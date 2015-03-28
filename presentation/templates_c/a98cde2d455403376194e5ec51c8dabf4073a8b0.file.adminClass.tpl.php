<?php /* Smarty version Smarty-3.1.8, created on 2015-01-07 12:55:17
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\adminClass.tpl" */ ?>
<?php /*%%SmartyHeaderCode:928954ad730548c107-82626487%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a98cde2d455403376194e5ec51c8dabf4073a8b0' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\adminClass.tpl',
      1 => 1412527120,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '928954ad730548c107-82626487',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
    'i' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54ad730561e688_55150492',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54ad730561e688_55150492')) {function content_54ad730561e688_55150492($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"adminClassInfo",'assign'=>"obj"),$_smarty_tpl);?>

	<ol class=breadcrumb>
		<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mLinks) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
">&laquo;<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</a></li>
		<?php endfor; endif; ?>
	</ol>
	<h1 class=program_title>
		<small>class:</small> <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['title'];?>

		&nbsp; 
		
		<?php if (!$_smarty_tpl->tpl_vars['obj']->value->mIsEdit){?>
			<span style="float:right;">
			<form method=post>
					<?php if ($_smarty_tpl->tpl_vars['obj']->value->mClassInfo['type']=="Flexible"){?>
						<input type=submit class=" btn btn-default btn-primary" name=tgp_class_add_packages value="Add Package(s)">
					<?php }?>
					<input type=submit class="btn btn-default btn-primary" name=tgp_class_delete value="Delete&raquo;"> <input type=submit class="btn btn-default btn-primary" name=tgp_class_edit value="Edit&raquo;"> <input type=submit class="btn btn-default btn-primary" name=tgp_class_send_email value="Send Email&raquo;">
			</form>
			</span>
		<?php }?>
	</h1>
		
		<?php if (!$_smarty_tpl->tpl_vars['obj']->value->mIsEdit){?>
			<p>Age: <strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['age_group'];?>
</strong></p>
			<p>Day: <strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['weekday'];?>
</strong></p>
			<p>Time: <strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_time'];?>
 - <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['end_time'];?>
</strong></p>
			<p>Dates: <strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_date'];?>
  - <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['end_date'];?>
</strong></p>
			
			<?php if (sizeof($_smarty_tpl->tpl_vars['obj']->value->mHolidays)>0){?>
				<p>
					Holidays: <b>
					<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mHolidays) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
						<?php echo $_smarty_tpl->tpl_vars['obj']->value->mHolidays[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>

						<?php if (($_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1)<sizeof($_smarty_tpl->tpl_vars['obj']->value->mHolidays)){?>
							, &nbsp; 
						<?php }?>
					<?php endfor; endif; ?>
					</b>
				</p>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->mClassInfo['type']!=="Flexible"){?>
				<p>Price: <strong>$<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['price'];?>
</strong></p>
			<?php }?>
			
			<p align=right><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToRegister;?>
">Register &raquo;</a></p>
		<?php }else{ ?>
		
			<form method=post>
			<input type=hidden name=tgp_class_id value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassID;?>
">
				<input type=hidden name=tgp_class_title value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['title_id'];?>
">
			<p>
				<label>Weekday</label><br/>
				<select name=tgp_class_weekday id=weekday>
					<?php $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['i']->step = 1;$_smarty_tpl->tpl_vars['i']->total = (int)ceil(($_smarty_tpl->tpl_vars['i']->step > 0 ? 7+1 - (0) : 0-(7)+1)/abs($_smarty_tpl->tpl_vars['i']->step));
if ($_smarty_tpl->tpl_vars['i']->total > 0){
for ($_smarty_tpl->tpl_vars['i']->value = 0, $_smarty_tpl->tpl_vars['i']->iteration = 1;$_smarty_tpl->tpl_vars['i']->iteration <= $_smarty_tpl->tpl_vars['i']->total;$_smarty_tpl->tpl_vars['i']->value += $_smarty_tpl->tpl_vars['i']->step, $_smarty_tpl->tpl_vars['i']->iteration++){
$_smarty_tpl->tpl_vars['i']->first = $_smarty_tpl->tpl_vars['i']->iteration == 1;$_smarty_tpl->tpl_vars['i']->last = $_smarty_tpl->tpl_vars['i']->iteration == $_smarty_tpl->tpl_vars['i']->total;?>
						<option 
							<?php if ($_smarty_tpl->tpl_vars['obj']->value->mWeekdays[$_smarty_tpl->tpl_vars['i']->value]==$_smarty_tpl->tpl_vars['obj']->value->mClassInfo['weekday']){?>
								selected 
							<?php }?>
						value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mWeekdays[$_smarty_tpl->tpl_vars['i']->value];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mWeekdays[$_smarty_tpl->tpl_vars['i']->value];?>
</option>
					<?php }} ?>
				</select>
			</p>
			<p>
				<label>Start Time</label><br/>
				<input type=text class=time name=tgp_class_start_time id=start_time value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_time'];?>
">
			</p>
			<p>
				<label>Start Date</label><br/>
				<input type=text name=tgp_class_start_date id=datepicker readonly value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_date'];?>
" onChange="matchWeekday();">
			</p>
			<p>
				<label>End Date</label><br/>
				<input type=text name=tgp_class_end_date id=datepicker2 readonly value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['end_date'];?>
" onChange="matchWeekday();">
			</p>
			<p>
				<label>Price</label><br/>
				<input type=text name=tgp_class_price value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['price'];?>
">
			</p>
			<p>
				<input type=submit name=tgp_class_save value="Save Changes &raquo;"> <input type=submit name=tgp_class_edit_cancel value="Cancel">
			</p>
			</form>
		<?php }?>
		
		<?php echo $_smarty_tpl->getSubTemplate ("classStudents.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

		
			<h3 class=program_title>Similar  Classes</h3>
			<table class=tables>
				<tr><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th></tr>
				<tr>
					<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mWeek) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
						<td>
							<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['j'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['j']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['name'] = 'j';
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mWeek[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['total']);
?>
								<p><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mWeek[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']][$_smarty_tpl->getVariable('smarty')->value['section']['j']['index']]['link_to_class'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mWeek[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']][$_smarty_tpl->getVariable('smarty')->value['section']['j']['index']]['start_time'];?>
</a></p>
							<?php endfor; endif; ?>
						</td>
					<?php endfor; else: ?>
						<p>There are no similar classes available!</p>
					<?php endif; ?>
				</tr>
			</table><?php }} ?>