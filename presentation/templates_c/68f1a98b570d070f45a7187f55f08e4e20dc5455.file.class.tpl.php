<?php /* Smarty version Smarty-3.1.8, created on 2015-03-02 21:20:36
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\class.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1194654bbedebd22ed4-23755254%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '68f1a98b570d070f45a7187f55f08e4e20dc5455' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\class.tpl',
      1 => 1425145342,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1194654bbedebd22ed4-23755254',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bbedec049dd9_07293247',
  'variables' => 
  array (
    'obj' => 0,
    'i' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bbedec049dd9_07293247')) {function content_54bbedec049dd9_07293247($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"classInfo",'foldername'=>"admin",'assign'=>"obj"),$_smarty_tpl);?>

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
	<div class=page-header>
		<h1>Classes</h1>
	</div>
	<div class="panel panel-default">
		<div class=panel-heading>
			<h1>
				<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['title'];?>

				<small>
					<?php if (!$_smarty_tpl->tpl_vars['obj']->value->mIsEdit){?>
						<span class=pull-right>
						<form method=post>
								<?php if ($_smarty_tpl->tpl_vars['obj']->value->mClassInfo['type']=="Flexible"){?>
									<input type=submit class=" btn btn-default btn-primary btn-lg" name=tgp_class_add_packages value="Add Package(s)">
								<?php }?>
								<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToDelete;?>
" id=classID_<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassID;?>
 class="btn btn-default btn-danger btn-lg delete">Delete&raquo;</a> 
								<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEdit;?>
" class="btn btn-default btn-warning btn-lg editClass">Edit&raquo</a> 
								<a class="btn btn-default btn-success btn-lg email" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEmailClass;?>
">Send Email&raquo;</a>
						</form>
						</span>
					<?php }?>
				</small>
			</h1>		
		</div>
		<div class=panel-body>
			<?php if (!$_smarty_tpl->tpl_vars['obj']->value->mIsEdit){?>
				<p>Age: <strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['age_group'];?>
</strong></p>
				<p>Day and Time: <strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['weekday'];?>
s</strong> <strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_time'];?>
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
					<p>Full Season Price: <strong>$<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['price'];?>
</strong></p>
					<p>Half Season Price: <strong>$<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['9WeekPrice'];?>
</strong></p>
				<?php }?>				
			<?php }else{ ?>
				<form method=post role=form>
					<input type=hidden name=tgp_class_id value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassID;?>
">
					<input type=hidden name=tgp_class_title value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['title_id'];?>
">
				<div class=group-form>
					<div class=col-md-3>
						<label>Weekday</label>
					</div>
					<div  class=col-md-9>
						<select name=tgp_class_weekday id=weekday class="form-control" >
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
					</div>
				</div>
				<div class=group-form>
						<div class=col-md-3>
							<label>Start Time</label>
						</div>
						<div class=col-md-9>
							<input type=text name=tgp_class_start_time id=start_time class="time form-control" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_time'];?>
">
						</div>
				</div>	
				<div class=group-form>
						<div class=col-md-3>
							<label>Start Date</label>
						</div>
						<div class=col-md-9>
							<input type=text name=tgp_class_start_date id=datepicker class="form-control"  readonly value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_date'];?>
" onChange="matchWeekday();">
						</div>
				</div>
				<div class=group-form>
						<div class=col-md-3>
							<label>End Date</label>
						</div>
						<div class=col-md-9>
							<input type=text name=tgp_class_end_date id=datepicker2 class="form-control" readonly value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['end_date'];?>
" onChange="matchWeekday();">
						</div>
				</div>
				<div class=group-form>
						<div class=col-md-3>
							<label>Price</label>
						</div>
						<div class=col-md-9>
							<div class=input-group>
							<div class="input-group-addon">
								$
							</div>
							<input type=text name=tgp_class_price class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['price'];?>
">
							<div class="input-group-addon">
							.00
							</div>
						</div>
					</div>
				</div>
				<p>&nbsp;</p>
				<div class=group-form>
						<div class=col-md-3>
						</div>
						<div class=col-md-9>
							<input class="btn btn-default btn-primary btn-lg" type=submit name=tgp_class_save value="Save Changes &raquo;"> <a class="btn btn-warning btn-lg" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToCancel;?>
">Cancel</a>
						</div>
				</div>
				</form>
			<?php }?>
		</div>
		<div class=panel-footer>
		
			<?php echo $_smarty_tpl->getSubTemplate ("admin/classStudents.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

		
			<h3>Similar  Classes</h3>
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
			</table>
		</div>
	</div>
	
<!-- MODAL FOR EDITING STUDENT INFORMATION -->
				<div class="modal fade" id=editClass tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="edit_myModalLabel">Update Class</h3>
						</div>
						<div class=modal-content style="padding:5px;">							
							<form id=updateClass>
								<input type=hidden name=classID value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassID;?>
">
								<div class=row>
									<div class="col-md-6 form-group">
										<label class=control-label>Age Group</label><br/>
										<input type=text id=class_ageGroup class=form-control name="age_group" value="">
									</div>
									<div class="col-md-6 form-group">
										<label class=control-label>Day</label><br/>
										<select name=weekday id=class_weekday class=form-control>										
											<option value="Monday">Monday</option>
											<option value="Tuesday">Tuesday</option>
											<option value="Wednesday">Wednesday</option>
											<option value="Thursday">Thursday</option>
											<option value="Friday">Friday</option>
											<option value="Saturday">Saturday</option>
											<option value="Sunday">Sunday</option>
										</select>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 form-group">
										<label  class=control-label>Start Time</label><br/>
										<input type=text id=class_startTime class=form-control name=start_time value="">
									</div>
									<div class="col-md-6 form-group">
										<label  class=control-label>End Time</label><br/>
										<input type=text id=class_endTime class=form-control name=end_time value="">
									</div>
								</div>
								<div class="row form-group">
									<div class=col-md-6>
										<label>Start Date</label>
										<input type=text id=class_startDate name=startDate placeholder="mm/dd/yyyy" value="">
									</div>
									<div class=col-md-6>
										<label>End Date</label>
										<input type=text id=class_endDate name=endDate placeholder="mm/dd/yyyy" value="">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-md-6">
										<label>Full Season Price</label><br/>
										<div class=input-group>
											<span class=input-group-addon>$</span>
											<input type=text id=class_fullPrice name=price class=form-control value="">
											<span class=input-group-addon>.00</span>
										</div>
									</div>
									<div class="col-md-6">
										<label>Half Season Price</label><br/>
										<div class=input-group>
											<span class=input-group-addon>$</span>
											<input type=text id=class_halfPrice name=halfPrice class=form-control value="">
											<span class=input-group-addon>.00</span>
										</div>
									</div>
								</div>
								<div class=form-group>
									<a class='btn btn-default btn-primary btn-lg updateClass' href="">Update&laquo;</a>
									<a class='btn btn-default btn-primary btn-lg cancel' id=editClass_modal href="">Cancel</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	
	
<!-- MODAL TO SEND EMAIL -->
				<div class="modal fade" id=sendEmail tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="edit_myModalLabel">Send Email</h3>
						</div>
						<div class=modal-content style="padding:5px;">							
							<form id=sendEmails>
										<input type=hidden name="tgp_class[]" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassID;?>
">
									<div class=form-group>
										<label class=control-label>Subject</label><br/>
										<input type=text class=form-control name=subject>
									</div>									
									<div class=form-group>
										<label class=control-label>Message</label><br/>
										<textarea class="tinymce form-control" style="height:50px;" id=class_emailMessage name=message></textarea>
									</div>
									<div class=form-group>
										<a class='btn btn-default btn-primary btn-lg sendEmail' href="">Send Meail&raquo;</a>
										<a class='btn btn-default btn-primary btn-lg cancel' id=sendEmail_modal href="">Cancel</a>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	
	
<script>
$( document ).ready( function ()
{
	$( '.email' ).click( function( e )
	{
		e.preventDefault();
		
		showModal( 'sendEmail' );
		
	});
	
	$( '.sendEmail' ).click( function( e )
	{
		e.preventDefault();
		
		$.post( "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSendEmail;?>
",
			$( '#sendEmails' ).serialize(),
			function ( data, status )
			{
				data = jQuery.parseJSON( data );
				
				alert( data.message );
				
				if( !data.success )
					return false;
					
				closeModal( 'sendEmail' );
			});
	});
	
	$( '.delete' ).click( function( e )
	{
		e.preventDefault();
		
		if( confirm( 'Delete class?' ) )
		{
			var index = this.id.indexOf( '_' );
			
			var ids = this.id.substring( ( index + 1 ), this.id.length );
			
			$.post( "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToDelete;?>
",
				{
					classID:ids
				},
				function( data, status )
				{
					return alert( data );
					
					if( data.success )
						goTo( "<?php echo Link::Build('admin/classes');?>
" );
				});
		}
	});
	
	$( '.editClass' ).click( function( e )
	{
		e.preventDefault();
		
		showModal( 'editClass' );
		
		$( '#class_weekday' ).val( classes.weekday );
		$( '#class_ageGroup' ).val( classes.ageGroup );
		$( '#class_startTime' ).val( classes.startTime );
		$( '#class_endTime' ).val( classes.endTime );
		$( '#class_startDate' ).val( classes.startDate );
		$( '#class_endDate' ).val( classes.endDate );
		$( '#class_fullPrice' ).val( classes.fullPrice );
		$( '#class_halfPrice' ).val( classes.halfPrice );
	});
	
	$( '.updateClass' ).click( function( e )
	{
		e.preventDefault();
		
		$.post("<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEdit;?>
",
			$( '#updateClass' ).serialize(),
			function( data, status )
			{
				return alert( data );
			});
	});
	
	$('#class_startDate' ).datepicker({
			dateFormat:"mm/dd/yy",
			changeMonth: true,
			changeYear:true,
			numberOfMonths: 1
		});
	$('#class_endDate' ).datepicker({
			dateFormat:"mm/dd/yy",
			changeMonth: true,
			changeYear:true,
			numberOfMonths: 1
		});

});

var classes = new classes( '<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['age_group'];?>
', '<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_time'];?>
', '<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['end_time'];?>
', '<?php echo date("m/d/Y",strtotime($_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_date']));?>
', '<?php echo date("m/d/Y",strtotime($_smarty_tpl->tpl_vars['obj']->value->mClassInfo['end_date']));?>
', <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['price'];?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['9WeekPrice'];?>
, '<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['weekday'];?>
' );

function classes( ageGroup, startTime, endTime, startDate, endDate, fullPrice, halfPrice, weekday  )
{
	this.weekday = weekday;
	this.ageGroup = ageGroup;
	this.startTime = startTime;
	this.endTime = endTime;
	this.startDate = startDate;
	this.endDate = endDate;
	this.fullPrice = fullPrice;
	this.halfPrice = halfPrice;
}
</script><?php }} ?>