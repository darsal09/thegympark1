<?php /* Smarty version Smarty-3.1.8, created on 2015-03-02 21:32:08
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\employee\studentOpenPlayHistory.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2454854a46b9891ff02-18066786%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e017133ac1fd527a9cfb48ae9483e1086179b9a8' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\employee\\studentOpenPlayHistory.tpl',
      1 => 1423530841,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2454854a46b9891ff02-18066786',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a46b9891ff06_37256431',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a46b9891ff06_37256431')) {function content_54a46b9891ff06_37256431($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"studentOpenPlayHistory",'foldername'=>"employee",'assign'=>"obj"),$_smarty_tpl);?>

<ul class=breadcrumb>
	<li><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToOpenPlay;?>
">Open Plays</a></li>
</ul>
<div class=page-header>
	<h1>
		<?php echo $_smarty_tpl->tpl_vars['obj']->value->mOpenPlay['title'];?>
<br/>
		<small>
			Current Date: <?php echo helper::setDateFormat(date('Y-m-d'));?>

		</small>
	</h1>
</div>
	<div class="panel panel-default">
		<div class=panel-heading>
			<h1>
				<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipant['first'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipant['last'];?>
<br/>
				<button class="btn btn-warning" type="button" data-toggle="modal" data-target="#addPackage">Add Open Play Package</button>
			</h1>
		</div>
		<div class="panel-body">
			<div class=panel-group id=accordion>
				<div style="background:silver;padding:5px;">
					Take Attendance for <input type=text id=datepicker value="<?php echo date('m/d/Y');?>
"> 
				</div>
				<div class=row><div class=col-md-1>Session(s)</div><div class=col-md-3>Title</div><div class=col-md-1>Price</div><div class=col-md-1>Status</div><div class="col-md-2">Start Date</div><div class="col-md-1">End Date</div><div class="col-md-1">Used</div><div class=col-md-2></div></div>
				<div class=row id=packages>
				<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mStudentPackages) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
						<div id="packages-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
" class="panel panel-default">
							<div class=panel-heading>
								<h3 class=panel-title>
										<div class=row>
												<div class=col-md-1 id="packages-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_amount"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['amount'];?>
</div>
												<div class=col-md-3>
													<a data-toggle="collapse" data-parent="#accordion" href="#package_<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
">
														<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>

													</a>
												</div>
												<div class=col-md-1>$<span id="packages-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_price"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['price'];?>
</span></div>
												<div class=col-md-1 id="packages-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_status">
													<?php if ($_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['status']=='Register'){?>
														Paid
													<?php }else{ ?>
														<a href="javascript:takePayment( <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
 );">Needs Payment</a>
													<?php }?>
													</div>
												<div class=col-md-2>
													<?php echo helper::getDateWithoutDay($_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['start']);?>

												</div>
												<div class=col-md-1>
													<?php echo helper::getDateWithoutDay($_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['end']);?>

												</div>
												<div id="packages-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_used" class="col-md-1">
													<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['used'];?>

												</div>
												<div class=col-md-2 id="packages-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_options">
													<?php if ($_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['status']!='Register'){?>	
														<a id=removeButton_<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
 class="btn btn-danger" href="javascript:removePackage( <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
 );">remove&raquo;</a>
													<?php }?>
													<a class="btn btn-success" href="javascript:takeAttendance( <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
 );">Take Attendance&raquo;</a>
												</div>
										</div>								
								</h3>
							</div>
							<div id="package_<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
" class="panel-collapse collapse out">
								<div class=panel-body>	
									<ul id="package_<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_attendance">
										<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['j'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['j']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['name'] = 'j';
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['attendance']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
											<li id="package_<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_attendance_<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['attendance'][$_smarty_tpl->getVariable('smarty')->value['section']['j']['index']]['id'];?>
" ><?php echo helper::setDateFormat($_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['attendance'][$_smarty_tpl->getVariable('smarty')->value['section']['j']['index']]['dates']);?>
 <a class="btn btn-danger" href="javascript:removeAttendance( <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['attendance'][$_smarty_tpl->getVariable('smarty')->value['section']['j']['index']]['id'];?>
 );">remove</a></li>
										<?php endfor; endif; ?>
									</ul>
								</div>
							</div>
						</div>
				<?php endfor; endif; ?>	
			</div>
			</div>
			</div>
		</div>
	</div>
	
			<div class="modal fade" id=addPackage tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="myModalLabel">Add Package To Student</h3>
							<p>Please select one of the following packages</p>
						</div>
						<div class=modal-content>
							<div class=form-group>
								<label>Start Date: </label>
								<input type=text id=start_date value="<?php echo date('m/d/Y');?>
">
							</div>
							<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mPackages) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<a class=list-group-item href="javascript:addPackage( <?php echo $_smarty_tpl->tpl_vars['obj']->value->mPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['price'];?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['amount'];?>
 );"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
 - $<?php echo $_smarty_tpl->tpl_vars['obj']->value->mPackages[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['price'];?>
.00</a>
							<?php endfor; endif; ?>
						</div>
					</div>
				</div>
			</div>
			
			<div class="modal" id=payment data-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="#payment" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<form id=sendPayments>
						 <div class="modal-header">
							<h3 class="modal-title" id="myModalLabel">Add Payment Information</h3>
						</div>	
						<div class=modal-body>
								<div class=table-responsive>								
								<table class=table style="width:100%;">			
									<input type=hidden id=openPlayStudentID name=openPlayStudentID value="">
									<input type=hidden id=p_price name=price value="">								
									<input type=hidden id=p_amount name=amount value="">								
									<input type=hidden id=packageID name=packageID value="">
									<input type=hidden id=openPlayID name=openPlayID value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mOpenPlay['id'];?>
">
									<input type=hidden id=studentID name=studentID value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentID;?>
">
									<thead>
										<tr>
											<th colspan=3>Price: $<span id=price></span>.00</th>
										</tr>
									
										<tr>
											<th>Discount</th><th>Reason Code</th><th>Total Due</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input type=text id='discount' name="discount"  size=5 value="0"></td>
											<td><input type=tex name="reasonCode" size=15 value=""></td>
											<td><input type=text id=total_due name="totalDue" value="0"  size=5 readonly></td>
										</tr>
										<tr>
											<th>Total Payment</th><th>Payment Type</th><th>Receipt</th>
										</tr>
										<tr>
											<td><input type=text name=totalPayment id=total_payment size=5 value="0"></td>
											<td>
												<table>
													<tr><td><label><input type=radio id=Cash name=type value="Cash"> Cash</label></td><td><label><input type=radio id=check name=type value="Check"> Check</label></td></tr>
													<tr><td><label><input type=radio id=credit name=type value="Credit"> Credit</label></td><td><label><input type=radio id=debit name=type value="Debit"> Debit</label></td></tr>
													<tr><td><label><input type=radio id=pass name=type value="Pass"> Pass</label> </td><td><label><input type=radio id=other name=type value="Other"> Other</label></td></tr>
												</table>
											</td>
											<td><input type=text id=receipt name=receipt  size=5 value=""></td>
										</tr>
										<tr>
											<th colspan=3>Note</th>
										</tr>
										<tr>
											<td colspan=3><textarea name="note"></textarea></td>
										</tr>
								</table>
							</div>
							<!--		
									
									<div class=form-group>
										<div class=col-md-3>
											<label class=control-label>Type</label>
										</div>
										<div class=col-md-9>
											<div class=radio>
												<label><input type=radio name=type value="Visa">Visa</label>
											</div>
											<div class=radio>
												<label><input type=radio name=type value="Mastercard"> Master Card</label>
											</div>
											<div class=radio>
												<label><input type=radio name=type value="Discover"> Discover</label>
											</div>
											<div class=radio>
												<label><input type=radio name=type value="American Express"> American Express</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class=col-md-3>
											<label class=control-label>Name</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="name">
										</div>
									</div>
									<div class="form-group">
										<div class=col-md-3>
											<label class=control-label>Number</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="number">
										</div>
									</div>
									<div class=form-group>
										<div class=col-md-3>
											<label class=control-label>Expiration Date</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="expiration_date">
										</div>
									</div>
									<div class=form-group>
										<div class=col-md-3>					
											<label class=control-label>Authorization Code</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="authorization_code">
										</div>
									</div>
								</div>
								<div class=row>
									<h3>Address</h3>
									<div class=form-group>
										<div class=col-md-3>					
											<label class=control-label>Street</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="street">
										</div>
									</div>
									<div class=form-group>
										<div class=col-md-3>					
											<label class=control-label>City</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="city">
										</div>
									</div>
									<div class=form-group>
										<div class=col-md-3>					
											<label class=control-label>State</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="state">
										</div>
									</div>
									<div class=form-group>
										<div class=col-md-3>					
											<label class=control-label>Zip</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="zip">
										</div>
									</div>
								</div>
								<p>
									<a id=paidCash class="btn btn-primary btn-lg" href="javascript:paidCash( );">Paid Cash</a>
								</p>
							-->
						</div>
						<div class=model-footer>
							<div class=row>
								<div class=col-md-3>
								</div>
								<div class=col-md-9>
									<button id=closePayment class="btn btn-warning btn-lg">Close</button> 
									<input type=button id=sendPaymentSubmit class="btn btn-primary btn-lg" value="Enter&raquo;">
								</div>
							</div>
						</div>
						<p>&nbsp;</p>
						</form>
					</div>
			</div>		
		</div>
</div>
<script>
$(document).ready(function(){	

	$('#start_date' ).datepicker({
			dateFormat:"mm/dd/yy",
			changeMonth:true,
			changeYear:true,
			numberOfMonths: 1
		});
		
	/*
		This function only fires when the field in the discount is changed
		
		x > 1 add that amount to the original price
		x < -1 subtract that amount to the original price
		x > 0 and x < 1  add that percentage to the original price
		x > -1 and x < 0  subtract that percentage to the original price
	*/
	
	$( '#discount' ).change( function ()
	{
	
		var amount =  parseFloat( $( '#discount' ).val(), 10 );
		var price = parseInt( $( '#price' ).html(), 10 );
		
		$( '#total_due' ).val( price );
		
		if( amount == 0 ) //if there is no discount there's nothing to do
			return;
			
		if( amount > 1 || amount < - 1 ) //add or subtract amount of dollars
			$( '#total_due' ).val( price + amount );
		else //add or subtract percentage off
			$( '#total_due' ).val( price + ( price * amount ) );
	});
		
	$( "input[ type = 'radio' ]" ).click( function ()
	{
		$( '#receipt' ).val( $( '#'+this.id ).val() +'-' );
	});
	
			
	/*
		THIS PART SENDS FORM THAT GATHERS PAYMENT INFORMATION
	*/
	$( '#sendPaymentSubmit' ).click( function( e ){
		e.preventDefault();
		$.post("<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSendPayment;?>
",
			 $( '#sendPayments' ).serialize(),
			function( data, status)
			{	
				data = jQuery.parseJSON( data );
				
				if( data.payment )
				{
					$( '#payment' ).modal( 'hide' );
					updateStudentPackage( data.id );
				}
				else
				{
					alert( data.message );
					alert( data.errors );
				}
			})
			.fail( function()
			{
				alert( 'error' );
			}
			);
	});
	
	/*
		WHEN PAYMENT FORM IS CLOSED THIS PART TAKES CARE OF REMOVING ANY INFORMATION THAT IS ADDED TO THE SYSTEM AND TO THE FRONT END
	*/
	$( '#closePayment' ).click( function( e ){
		alert( $( '#p_amount' ).val() );
		
		var n_amount = parseInt( $( '#amount' ).html() );
		var amount = parseInt( $( '#p_amount' ).val() );
		
		$( '#amount' ).html( n_amount - amount );
		$( '#payment' ).modal( 'hide' );
		
		e.preventDefault();
	});
		
});
	
	/*
		THIS FUNCTION TAKES attendance for a specific package, in a specific open play, class and for a specific student
	*/
function takeAttendance( packageID )
{
	var dates = $( '#datepicker' ).val();
	if( dates == "" )
		dates = '<?php echo date("m/d/Y");?>
';
		
    $.post("<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToTakeAttendance;?>
",
    {
		studentID:<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentID;?>
,
		openPlayStudentID:packageID,
		date:dates
    },
    function(data, status)
	{
//		return alert( data );	
		data = jQuery.parseJSON(data);
		
		if( data.id > 0 )
		{
			$( '#package_'+packageID ).collapse( 'show' );
			
			$( '#package_'+packageID+'_attendance' ).append('<li class=list-group-item id="package_'+packageID+'_attendance_'+data.id+'">on '+data.date+' <a class="btn btn-danger" href="javascript:removeAttendance( '+packageID+', '+data.id+' )">remove</a></li>');
			
			var used = parseInt( $( '#packages-'+packageID+'_used' ).html() );
			
			$( "#packages-"+packageID+"_used" ).html( parseInt( used + 1 ) );
		
		}
		else
			alert( data.message );
   });
}

/*
	REMOVES ATTENDANCE from a package 
*/
	function removeAttendance( packageID, id )
	{		
			$.post("<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToRemove;?>
",
				{
					id: id,
					student_id:<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentID;?>

				},
				function( data, status ){
					if( data == 1 )
					{
						$("#package_"+packageID+"_attendance_"+id ).remove();
						
						var used = parseInt( $( '#packages-'+packageID+'_used' ).html() );
						
						$( "#packages-"+packageID+"_used" ).html( parseInt( used - 1 ) );
					}
					else
						alert( 'We could not delete the attendance' );
				});
	}
	
	function addPackage( id, price, amount )
	{			
		$( '#p_amount' ).val( amount );
		
		var dates = $( '#start_date' ).val();
		
		if( dates == "" )
			dates = "<?php echo date('m/d/Y');?>
";
		
		$.post( "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddPackage;?>
",
				{
					id:id,
					price:price,
					amount:amount,
					student_id:<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentID;?>
,
					openplay_id:<?php echo $_smarty_tpl->tpl_vars['obj']->value->mOpenPlay['id'];?>
,
					startDate:dates
				},
				function( data, status )
				{						
//					return alert( data );
					
					data = jQuery.parseJSON( data );
					
					$( '#addPackage' ).modal( 'hide' );
					
					if( data.id > 0 )
					{			
						var amount = parseInt( $( '#amount' ).html() );	
						$( '#p_price' ).val( data.price );
						
						var file = '<div id="packages-'+data.id+'" class="panel panel-default">';
							file += '<div class=panel-heading><h3 class=panel-title>';
							file += '<div class=row>';
							file += '<div class=col-md-1 id="packages-'+data.id+'_amount">'+data.amount+'</div>';
							file +=	'				<div class=col-md-3>';
							file += '						<a data-toggle="collapse" data-parent="#accordion" href="#package_'+data.id+'">';
							file += data.package.title;
							file += '							</a>';
							file += '					</div>';
							file += '					<div class=col-md-1>$<span id="packages-'+data.id+'_price">'+data.price+'</span></div>';
							file +=	'				<div class=col-md-1 id="packages-'+data.id+'_status">';
							file += data.package.status;
							file += '						</div>';
							file += '					<div class=col-md-2>';
							file += data.package.start;
							file += '					</div>';
							file += '					<div class=col-md-1>';
							file +=					data.package.end;
							file += '					</div>';
							file += '					<div id="packages-'+data.id+'_used" class=col-md-1>0</div>';
							file += '					<div class=col-md-2 id="packages-'+data.id+'_options">';
							file += '						<a id="removeButton_'+data.id+'"class="btn btn-danger" href="javascript:removePackage( '+ data.id + ' );">remove&raquo;</a>';
							file += '						<a class="btn btn-success" href="javascript:takeAttendance( '+data.id +' );">Take Attendance&raquo;</a>';
							file += '					</div>';
							file += '			</div>';
							file += '	</h3>';
							file += '</div>';
							file += '<div id="package_'+data.id+'" class="panel-collapse collapse out">';
							file += '	<div class=panel-body>';
							file +=	'	<ul id="package_'+data.id+'_attendance"></ul>';
							file += '	</div>';
							file += '</div>';
							file += '</div>';
							var files = $( '#packages' ).html();
							
							$( '#packages' ).html( file );
							$( '#packages' ).append( files );
						
						//window.location.reload();
						$( '#payment' ).modal( 'show' );
						
						$( '#packageID' ).val( id );
						$( '#studentID' ).val( <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentID;?>
 );
						$( '#openPlayID' ).val( <?php echo $_smarty_tpl->tpl_vars['obj']->value->mOpenPlay['id'];?>
 );
						$( "#amount" ).html( amount + parseInt( data.amount ) );
						$( '#price' ).html( data.price );	
						$( '#openPlayStudentID' ).val( data.id );
						$( '#total_due' ).val( data.price );
					}
					
				});
	}
	
	function removePackage( id )
	{
		$.post( "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToRemovePackage;?>
",
			{
				id:id
			},
			function( data, status )
			{
				data = jQuery.parseJSON( data );
				
				if( data.id > 0 )
				{
					var amount = parseInt( $( '#amount' ).html() );
					var p_amount = parseInt( $( '#packages-'+id+'_amount' ).html() );
					
					$( '#amount' ).html( amount - p_amount );
					
					$( '#packages-'+id ).remove();					
				}
				else
					alert( data.message );
			}
		);
	}
	
		/*
			This part takes only the payment from a pending application
		*/
	function takePayment( id )
	{
		var price = parseInt( $( '#packages-'+id+'_price' ).html() );
		$( '#price' ).html( price );
		$( '#openPlayStudentID' ).val( id );
		$( '#payment' ).modal( 'show' );	
		$( '#total_due' ).val( price );
		$( '#packageID' ).val( id );
		$( '#p_price' ).val( price );
	}
	
	/*
		PAID CASH
	*/
	
	function paidCash( )
	{		
		$.post("<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToPayCash;?>
",
			{
				studentID:<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentID;?>
,
				openPlayID:<?php echo $_smarty_tpl->tpl_vars['obj']->value->mOpenPlay['id'];?>
,
				openPlayStudentID:$( '#openPlayStudentID' ).val(),
				amount:$( '#price' ).html(),
				type:'Open Play'
			},
			function( data, status )
			{
				data = jQuery.parseJSON( data );
				
				if( data.id > 0 )
				{
					alert( data.message );
					$( '#packages-'+$( '#openPlayStudentID' ).val()+'_status' ).html( 'Paid' );
					$( '#packages-'+$( '#openPlayStudentID' ).val()+'_options' ).html( '' );
					
					$( '#payment' ).modal( 'hide' );
				}
				else
					alert( data.message );
			});	
	}
	
	
	function updateStudentPackage( id )
	{
		$.post( "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToUpdateStudentPackage;?>
",
			{
				id: id,
				student_id:<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentID;?>

			},
			function( data, status )
			{
				data = jQuery.parseJSON( data );
				
				if( data.success )
				{
					$( '#packages-'+id+'_status' ).html( 'Paid' );
					$( '#removeButton_'+id ).remove();
				}
				else
					alert( data.message );
					
			}
		);
	}
</script><?php }} ?>