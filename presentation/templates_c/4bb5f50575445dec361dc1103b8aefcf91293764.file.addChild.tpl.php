<?php /* Smarty version Smarty-3.1.8, created on 2015-02-07 20:20:56
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\addChild.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1243554bbeea89cb759-29425478%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4bb5f50575445dec361dc1103b8aefcf91293764' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\addChild.tpl',
      1 => 1423358453,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1243554bbeea89cb759-29425478',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bbeea8c82c56_20973102',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bbeea8c82c56_20973102')) {function content_54bbeea8c82c56_20973102($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addStudent",'foldername'=>"admin",'assign'=>"obj"),$_smarty_tpl);?>

<ul class=breadcrumb>
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
</ul>
	<div class=row>
		<p>
			Please select what type of participant you are adding
		</p>
		<div class="btn-group" role="group" aria-label="...">
		  <button type="button" id=adult class="btn btn-default btn-warning">Adult</button>
		  <button type="button" id=child class="btn btn-default btn-primary">Child</button>
		</div>	
	</div>
	
<form method=post>
	<?php if (!user::isLoggedIn()){?>
		<p>
			Previous Member?<br/>
			<input type=radio name=tgp_student_previous_member value="Y"> Yes<br/>
			<input type=radio name=tgp_student_previous_member value="N"> No
		</p>
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['obj']->value->mAlreadyExist){?>
		<div class=error>
			<p>A participant with the following information already exist:<br/>
			<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':first'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':last'];?>
<br/>
			<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':dob'];?>
<br/>
			<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':sex'];?>

			</p>
			<p>Do you want to enter information as a new participant?</p>
			<p><input type=submit name="tgp_student_new" value="Yes, enter it as a new participant"></p>
			<p><input type=submit name="tgp_student_no" value="No, it is an existing participant"></p>
		</div>
	<?php }?>
	<div id=information>
		<?php if (in_array(true,$_smarty_tpl->tpl_vars['obj']->value->mErrors)){?>
			<p class=error>
				Please fill out all the fields in yellow.
			</p>
		<?php }?>
		<div class=row style="background-color:silver;padding:10px;border-radius:5px;">
			<h2>Class Information</h2>
				<p>Day & Time: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClass['weekday'];?>
s - <?php echo helper::getTimeFormat($_smarty_tpl->tpl_vars['obj']->value->mClass['start_time']);?>
 - <?php echo helper::getTimeFormat($_smarty_tpl->tpl_vars['obj']->value->mClass['end_time']);?>
</p>
				<p>Dates: <?php echo helper::getDateWithoutDay($_smarty_tpl->tpl_vars['obj']->value->mClass['start_date']);?>
 - <?php echo helper::getDateWithoutDay($_smarty_tpl->tpl_vars['obj']->value->mClass['end_date']);?>
</p>
				<div class=col-md-3>
					<label class=control-label>Select one of the options</label><br/>
					<label><input type=radio id=full name=classPart value="Full"> Full Season</label><br/>
					<label><input type=radio id=first name=classPart value="First"> First half of season</label><br/>
					<label><input type=radio id=last name=classPart value="Fast"> Last half of season</label><br/>
					<label><input type=radio id=other name=classPart value="Other"> Other</label>
				</div>
				<div class="form group col-md-3">
					<label>Price</label><br/>
					<input type=text class=form-control id=price name=price value="">
				</div>
				<div class="form-group col-md-3">
					<label>Start Date</label><br/>
					<input type=text class=form-control id=startDate name=startDate value="">
				</div>
				<div class="form-group col-md-3">
					<label class=control-label>End Date</label><br/>
					<input type=text class=form-control id=endDate name=endDate value="">
				</div>
		</div>
		<div class=page-header>
			<h1>Add Participant</h1>
		</div>
		<p>
			Please fill out all applicable fields.
		</p>
		<div class=row id=personal_info>
			<h2>Participant Personal Info</h2>
				<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':first']){?>error<?php }?>">
					<label>First name</label><br/>
					<input type=text class="form-control" name=tgp_student_first value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':first'];?>
">
				</div>
				<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':last']){?>error<?php }?>">
					<label>Last name</label><br/>
					<input type=text class="form-control" name=tgp_student_last value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':last'];?>
">
				</div>
			<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':dob']){?>error<?php }?>">
				<label>DOB mm/dd/yyyy</label><br/>
				<input type=text class="form-control" name=tgp_student_dob id=datepicker value="<?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mP[':dob'])){?><?php echo date('m/d/Y',strtotime($_smarty_tpl->tpl_vars['obj']->value->mP[':dob']));?>
<?php }?>">
			</div>
			<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':sex']){?>error<?php }?>">
				<label>Gender</label><br/>
				<input type=radio name=tgp_student_sex <?php if ($_smarty_tpl->tpl_vars['obj']->value->mP[':sex']==="M"){?>checked<?php }?> value="M"> Male  &nbsp; &nbsp;
				<input type=radio name=tgp_student_sex <?php if ($_smarty_tpl->tpl_vars['obj']->value->mP[':sex']==="F"){?>checked<?php }?> value="F"> Female
			</div>
		</div>
		<div id=adults  class="row <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['icombined']){?>error<?php }?>">
			<h2>Contact Information</h2>
				<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['icombined']){?>
					<p>
						You provide at least a phone number or an email
					</p>
				<?php }?>
				<div class="col-md-4 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':hPhone']){?>error<?php }?>">
					<label>Home Phone</label><br/>
					<input type=text class="form-control" name=tgp_student_homePhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':hPhone'];?>
">
				
				</div>
				<div class="col-md-4 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':cPhone']){?>error<?php }?>">
					<label>Cell Phone</label><br/>
					<input type=text class="form-control" name=tgp_student_cellPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':cPhone'];?>
">
				</div>
				<div class="col-md-4 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':email']){?>error<?php }?>">
					<label>Email</label><br/>
					<input type=email class="form-control" name=tgp_student_email value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':email'];?>
">
				</div>
		</div>
		<div class=row>
			<h2>Address</h2>	
				<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':street']){?>error<?php }?>">
					<label>Street</label><br/>
					<input type=text class="form-control" name=tgp_student_address_street value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress[':street'];?>
">
				</div>
				<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':city']){?>error<?php }?>">
					<label>City</label><br/>
					<input type=text class="form-control" name=tgp_student_address_city value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress[':city'];?>
">
				</div>
				<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':state']){?>error<?php }?>">
					<label>State</label><br/>
					<input type=text class="form-control" name=tgp_student_address_state value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress[':state'];?>
">
				</div>	
				<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':zip']){?>error<?php }?>">
					<label>Zip</label><br/>
					<input type=text class="form-control" name=tgp_student_address_zip value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress[':zip'];?>
">
				</div>	
		</div>
		<div id=minors>
				<h1>Parents/Legal Guardians Information</h1>
				<p>
					If participant is under the age of 18, this information is required.
				</p>
				<div class=row>
					<h2>Parent/Legal Guardian 1</h2>
					<div class="col-md-6 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p1Name']){?>error<?php }?>">
						<label>Name</label><br/>
						<input type=text class="form-control" name=tgp_student_parent1_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent1[':p1Name'];?>
">
					</div>
							<div class="col-md-6 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p1Email']){?>error<?php }?>">
								<label>Email</label><br/>
								<input type=email class="form-control" name=tgp_student_parent1_email value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent1[':p1Email'];?>
">
							</div>
				</div>
				<div class=row>
					<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['p1combined']){?>
						<div class=error>
							<p>You must provide  at least a phone or email</p>
					<?php }?>
							<div class="col-md-4 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p1hPhone']){?>error<?php }?>">
								<label>Home Phone</label><br/>
								<input type=text class="form-control" name=tgp_student_parent1_homePhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent1[':p1hPhone'];?>
">
							</div>
							<div class="col-md-4 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p1cPhone']){?>error<?php }?>">
								<label>Cell Phone</label><br/>
								<input type=text class="form-control" name=tgp_student_parent1_cellPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent1[':p1cPhone'];?>
">
							</div>
							<div class="col-md-4 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p1wPhone']){?>error<?php }?>">
								<label>Work Phone</label><br/>
								<input type=text class="form-control" name=tgp_student_parent1_workPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent1[':p1wPhone'];?>
">
							</div>
					<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['p1combined']){?>
						</div>
					<?php }?>
				</div>
				<div class=row>
					<h2>Parent/Legal Guardian 2</h2>
					<div class="col-md-6 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p2Name']){?>error<?php }?>">
						<label>Name</label><br/>
						<input type=text class="form-control" name=tgp_student_parent2_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent2[':p2Name'];?>
">
					</div>
					<div class="col-md-6 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p2Email']){?>error<?php }?>">
						<label>Email</label><br/>
						<input type=text class="form-control" name=tgp_student_parent2_email value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent2[':p2Email'];?>
">
					</div>
				</div>
				<div class=row>
					<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['p2combined']){?>
						<div class=error>
							<p> You must provide at least a phone or email</p>
					<?php }?>
					<div class="col-md-4 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p2hPhone']){?>error<?php }?>">
						<label>Home Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_parent2_homePhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent2[':p2hPhone'];?>
">
					</div>
					<div class="col-md-4 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p2cPhone']){?>error<?php }?>">
						<label>Cell Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_parent2_cellPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent2[':p2cPhone'];?>
">
					</div>
					<div class="col-md-4 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p2wPhone']){?>error<?php }?>">
						<label>Work Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_parent2_workPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent2[':p2wPhone'];?>
">
					</div>
					<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['p2combined']){?>
						</div>
					<?php }?>
				</div>
			<div class=row>
				<h2>School Info</h2>
				<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':school']){?>error<?php }?>">
					<label>School Name</label><br/>
					<input type=text class="form-control" name=tgp_student_school value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSchool[':school'];?>
">
				</div>
				<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':grade']){?>error<?php }?>">
					<label>Grade</label><br/>
					<input type=text class="form-control" name=tgp_student_grade value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSchool[':grade'];?>
">
				</div>
			</div>
			<div class=row>
				<h2>Caregiver Information</h2>
				<div class="col-md-2">
					<label> No Caregiver<br/>
						<input type=checkbox name=tgp_student_no_caregiver value="No">
					</label>
				</div>
				<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':cgName']){?>error<?php }?>">
					<label>Name</label><br/>
					<input type=text class="form-control" name=tgp_student_caregiver_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCaregiver[':cgName'];?>
">
				</div>
				<div class="col-md-3<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':cgPhone']){?> class=error<?php }?>">
					<label>Phone</label><br/>
					<input type=text class="form-control" name=tgp_student_caregiver_phone  value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCaregiver[':cgPhone'];?>
">
				</div>
			</div>
		</div>
		<div class=row>
			<h2>Emergency Contact Information</h2>
			<p>
				Someone other than parent if participant is under 18.
			</p>
			<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':eRelation']){?>error<?php }?>">
				<label>Relation</label><br/>
				<input type=radio name=tgp_student_emergency_relation <?php if ($_smarty_tpl->tpl_vars['obj']->value->mEContact[':eRelation']==="Family"){?>checked<?php }?> value="Family"> Family &nbsp; &nbsp;
				<input type=radio name=tgp_student_emergency_relation <?php if ($_smarty_tpl->tpl_vars['obj']->value->mEContact[':eRelation']==="Friend"){?>checked<?php }?> value="Friend"> Friend
			</div>
			<div class="col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':eName']){?>error<?php }?>">
				<label class="control-label">Name</label><br/>
				<input type=text class="form-control" name=tgp_student_emergency_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEContact[':eName'];?>
">
			</div>
		</div>
		<div class=row>
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['eccombined']){?>
				<div class=error>
					<p>You must provide at least a phone number or an email</p>
			<?php }?>
					<div class="col-md-3 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':ehPhone']){?>error<?php }?>">
						<label>Home Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_emergency_homePhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEContact[':ehPhone'];?>
">
					</div>
					<div class="col-md-3 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':ecPhone']){?>error<?php }?>">
						<label>Cell Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_emergency_cellPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEContact[':ecPhone'];?>
">
					</div>
					<div class="col-md-3 form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':ewPhone']){?>error<?php }?>">
						<label>Work Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_emergency_workPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEContact[':ewPhone'];?>
">
					</div>
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['eccombined']){?>
				</div>
			<?php }?>
		</div>
		<p>&nbsp;</p>
		<div>
			<input type=submit class="btn btn-default btn-primary btn-lg" name=tgp_student_save value="Add Student&raquo;">
		</div>
	</div>
</form>
<script>
$( document ).ready( function ()
{
	$( '#information' ).hide();
	
	$( '#adult' ).click( function()
	{
		$( '#information' ).show();
		
			$( "#minors" ).hide();
			$( "#adults" ).show();
	});
	
	$( '#child' ).click( function ()
	{
		$( '#information' ).show();
		
			$( "#adults" ).hide();
			$( "#minors" ).show();
	});
	
	$( '#full' ).click( function()
	{
		$( '#price' ).val( classInformation.fullPrice );
		$( '#startDate' ).val( classInformation.start );
		$( '#endDate' ).val( classInformation.end );
	});
	
	$( '#first' ).click( function()
	{
		$( '#price' ).val( classInformation.halfPrice );
		$( '#startDate' ).val( classInformation.start );
		$( '#endDate' ).val( classInformation.endFirstHalf );
	});
	
	$( '#last' ).click( function()
	{
		$( '#price' ).val( classInformation.halfPrice );
		$( '#startDate' ).val( classInformation.startLastHalf );
		$( '#endDate' ).val( classInformation.end );
	});
		
	$( '#startDate' ).change( function()
	{
		var startDate = $( '#startDate' ).val();
		var endDate = $( '#endDate' ).val();
		
		$( '#other' ).prop( 'checked', true );
			
		if( startDate == classInformation.start || endDate == classInformation.startLastHalf )
			return;
			
		$( '#endDate' ).val( classInformation.end );
	});
	
	$( "#startDate" ).datepicker(
			{
				dateFormat:"mm/dd/yy",
				changeMonth: true,
				changeYear:true,
				numberOfMonths: 1,
				onClose: function( selectedDate ) 
				{
					$( "#endDate" ).datepicker( "option", "minDate", selectedDate );
				}
			});

			$( "#endDate" ).datepicker(
			{
				dateFormat:"mm/dd/yy",
				changeMonth: true,
				changeYear:true,
				numberOfMonths: 1,
				onClose: function( selectedDate ) 
				{
					$( "#startDate" ).datepicker( "option", "maxDate", selectedDate );
				}
			});
	
});

var classInformation = new classInfo( <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClass['price'];?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClass['9WeekPrice'];?>
, "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClass['start_date'];?>
", "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClass['end_date'];?>
", "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClass['endFirstHalf'];?>
", "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClass['startLastHalf'];?>
" )

function classInfo( fullPrice, halfPrice, start, end, endFirstHalf, startLastHalf )
{
	this.fullPrice 		= fullPrice;
	this.halfPrice 		= halfPrice;
	this.start 			= start;
	this.end 			= end;
	this.endFirstHalf 	= endFirstHalf;
	this.startLastHalf 	= startLastHalf;
}



</script><?php }} ?>