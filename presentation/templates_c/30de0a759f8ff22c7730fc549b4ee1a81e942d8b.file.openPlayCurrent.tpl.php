<?php /* Smarty version Smarty-3.1.8, created on 2015-01-28 00:10:46
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\employee\openPlayCurrent.tpl" */ ?>
<?php /*%%SmartyHeaderCode:496754a0a58529b116-57466387%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '30de0a759f8ff22c7730fc549b4ee1a81e942d8b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\employee\\openPlayCurrent.tpl',
      1 => 1422421844,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '496754a0a58529b116-57466387',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a0a5854027b3_11037076',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a0a5854027b3_11037076')) {function content_54a0a5854027b3_11037076($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"openPlayCurrent",'foldername'=>'employee','assign'=>"obj"),$_smarty_tpl);?>

<ul class=breadcrumb>
	<li><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEmployee;?>
">&laquo;Employee</a></li>
</ul>
		<div class=page-header>
			<h1><?php echo $_smarty_tpl->tpl_vars['obj']->value->mOpenPlay['title'];?>
 <br/>
			<small >
				Current Date: <?php echo helper::setDateFormat(date('Y-m-d'));?>

					<span class=pull-right style="margin-left:5px;">
						<a class="btn btn-default btn-danger" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddNewParticipant;?>
">+Add New Participant</a>
					</span>	
					
					<span class="pull-right">
						<form method=post class=form-inline>
							<label for=search>Search Student By Name</label>
							<input type=text name=query value="">
							<input type=submit class="btn btn-default btn-primary" name=search value="Go&raquo;">
						</form>				
					</span>
			</small>
			</h1>
		</div>
	<div style="background:silver;padding:5px;">
		Take Attendance for <input type=text id=datepicker value="<?php echo date('m/d/Y');?>
"> 
	</div>
	<?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mResults)){?>
			<div class="panel panel-default results">
				<div class=panel-heading><h1>Search Results</h1></div>
				<div class=panel-body>
					<table class="table table-responsive">
						<thead>
							<tr><th>#</th><th>ID</th><th>First Name</th><th>Last Name</th><th>Session(s)</th><th>Used</th><th>Left</th><th>Attendance</th></tr>
						</thead>
						<tbody>
							<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mResults) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<tr><td><?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>
.</td><td><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mResults[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_info'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mResults[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
</a></td><td><?php echo $_smarty_tpl->tpl_vars['obj']->value->mResults[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['first'];?>
</td><td> <?php echo $_smarty_tpl->tpl_vars['obj']->value->mResults[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['last'];?>
</td>
								<td id="students-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mResults[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_amount">
										<?php echo $_smarty_tpl->tpl_vars['obj']->value->mResults[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['amount'];?>

								</td><td id="students-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mResults[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_used">
										<?php echo $_smarty_tpl->tpl_vars['obj']->value->mResults[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['used'];?>

									</td><td id="students-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mResults[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_left"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mResults[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['leftPackages'];?>
</td>
								<td><a class="btn btn-default btn-success" href="{}">Take Attendance</a></td>
								</tr>
							<?php endfor; endif; ?>
						</tbody>
					</table>
				</div>
			</div>
	<?php }?>
		<div class="panel panel-default">
			<div class=panel-heading><h1>Participants enrolled in Open Play</h1></div>
			<div class=panel-body>
				<ol class="breadcrumb">
					<?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mLetter)){?>
						<li><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAll;?>
">All</a></li>
					<?php }?>
					<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mLetters) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
						<li><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLetters[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mLetters[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</a></li>
					<?php endfor; endif; ?>
				</ol>
				<table class="table table-responsive">
					<thead>
						<tr><th>#</th><th>ID</th><th><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSortByFirstName;?>
">First Name</a></th><th><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSortByLastName;?>
">Last Name</a></th><th> <a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSortByAmount;?>
">Session(s)</a></th><th><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSortByUsed;?>
">Used</a></th><th>Left</th><th>Attendance</th></tr>
					</thead>
					<tbody>
						<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mParticipants) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
							<tr><td><?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>
.</td><td><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_info'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
</a></td><td><?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['first'];?>
</td><td> <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['last'];?>
</td>
							<td id="students-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_amount"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['amount'];?>
</td>
							<td id="students-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_used"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['used'];?>
</td>
							<td id="students-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
_left"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['leftPackages'];?>
</td>
							<?php if ($_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['status']=='Pending'){?>
								<td colspan=2>
									<a class="btn btn-default btn-danger" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_info'];?>
">Needs Payment</a>
								</td>
							<?php }else{ ?>
								<td>
									<a class="btn btn-default btn-success" href="javascript:takeAttendance( <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParticipants[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['openPlayStudentID'];?>
 );">Take Attendance</a>
								</td>
							<?php }?>
							</tr>
						<?php endfor; endif; ?>
					</tbody>
				</table>
			</div>
	<div class="modal fade" id=addPackage tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="myModalLabel">Add Package To Student</h3>
							<p>Please select one of the following packages</p>
						</div>
						<div class=modal-content id=packages>
							
						</div>
					</div>
				</div>
	</div>
	
	
<script>
$( document ).ready( function ()
{
	$( 'A.packages' ).click( function( e)
	{	
		e.preventDefault();				
		$( '#addPackage' ).modal( 'show' );
		
		$.get( "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToGetPackages;?>
",
			{
				id:this.id
			},
			function( data, status )
			{
				$( '#packages' ).html( data );
			});
	});
});

function takeAttendance( studentID, openPlayStudentID )
{
	var dates = $( '#datepicker' ).val();
	
	if( dates == "" )
		dates = "<?php echo date('m/d/Y');?>
"
	
	$.post( "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToTakeAttendance;?>
",
		{
			studentID:studentID,
			openPlayStudentID:openPlayStudentID,
			date: dates
		},
		function( data, status )
		{			
//			return alert( data );
			data = jQuery.parseJSON( data );
			
			alert( data.message );
			
		}
	);
}

function studentAddPackage( studentID, packageID, price, amount )
{
	$.post( "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddPackage;?>
",
		{
			student_id:studentID,
			id:packageID,
			price:price,
			amount:amount,
		},
		function( data, status )
		{
			alert( data );
		});
}



</script><?php }} ?>