<?php /* Smarty version Smarty-3.1.8, created on 2015-01-18 13:16:48
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\addChild.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2047554bbf890c211d5-35723176%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e865b212f64d2e3ecebbcc6933bd2dffc2346c2f' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\addChild.tpl',
      1 => 1406316374,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2047554bbf890c211d5-35723176',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bbf89101afd7_19038311',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bbf89101afd7_19038311')) {function content_54bbf89101afd7_19038311($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addStudent",'assign'=>"obj"),$_smarty_tpl);?>

<p>
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
		<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
">&laquo;<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</a>
		<?php if (($_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1)<sizeof($_smarty_tpl->tpl_vars['obj']->value->mLinks)){?>
			|
		<?php }?>
	<?php endfor; endif; ?>
</p>

<fieldset>
	<legend><h1>Add Participant</h1></legend>
	<p>
		Please fill out all applicable fields.
	</p>
	<?php if (in_array(true,$_smarty_tpl->tpl_vars['obj']->value->mErrors)){?>
		<p class=error>
			Please fill out all the fields in yellow.
		</p>
	<?php }?>
	
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
			<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':name'];?>
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
		<h2>Participant Personal Info</h2>
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':name']){?> class=error<?php }?>>
			<label>Name first and last name</label><br/>
			<input type=text name=tgp_student_name 
			value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':name'];?>
">
		</p>
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':dob']){?> class=error<?php }?>>
			<label>DOB mm/dd/yyyy</label><br/>
			<input type=text name=tgp_student_dob id=datepicker onChange="getDOB();" value="<?php if (isset($_smarty_tpl->tpl_vars['obj']->value->mP[':dob'])){?><?php echo date('m/d/Y',strtotime($_smarty_tpl->tpl_vars['obj']->value->mP[':dob']));?>
<?php }?>">
		</p>
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':sex']){?> class=error<?php }?>>
			<label>Gender</label><br/>
			<input type=radio name=tgp_student_sex <?php if ($_smarty_tpl->tpl_vars['obj']->value->mP[':sex']==="M"){?>checked<?php }?> value="M"> Male  &nbsp; &nbsp;
			<input type=radio name=tgp_student_sex <?php if ($_smarty_tpl->tpl_vars['obj']->value->mP[':sex']==="F"){?>checked<?php }?> value="F"> Female
		</p>
	<div id=adults <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['icombined']){?> class=error<?php }?>>
		<h2>Contact Information</h2>
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['icombined']){?>
				<p>
					You provide at least a phone number or an email
				</p>
			<?php }?>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':hPhone']){?> class=error<?php }?>>
				<label>Home Phone</label><br/>
				<input type=text name=tgp_student_homePhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':hPhone'];?>
">
			
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':cPhone']){?> class=error<?php }?>>
				<label>Cell Phone</label><br/>
				<input type=text name=tgp_student_cellPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':cPhone'];?>
">
			
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':email']){?> class=error<?php }?>>
				<label>Email</label><br/>
				<input type=text name=tgp_student_email value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':email'];?>
">
			</p>
	</div>
		<h2>Address</h2>	
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':street']){?> class=error<?php }?>>
				<label>Street</label><br/>
				<input type=text name=tgp_student_address_street value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress[':street'];?>
">
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':city']){?> class=error<?php }?>>
				<label>City</label><br/>
				<input type=text name=tgp_student_address_city value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress[':city'];?>
">
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':state']){?> class=error<?php }?>>
				<label>State</label><br/>
				<input type=text name=tgp_student_address_state value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress[':state'];?>
">
			</p>	
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':zip']){?> class=error<?php }?>>
				<label>Zip</label><br/>
				<input type=text name=tgp_student_address_zip value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress[':zip'];?>
">
			</p>	
	<div id=minors>
		<h2>School Info</h2>
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':school']){?> class=error<?php }?>>
			<label>School Name</label><br/>
			<input type=text name=tgp_student_school value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSchool[':school'];?>
">
		</p>
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':grade']){?> class=error<?php }?>>
			<label>Grade</label><br/>
			<input type=text name=tgp_student_grade value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSchool[':grade'];?>
">
		</p>
		<h1>Parents/Legal Guardians Information</h1>
		<p>
			If participant is under the age of 18, this information is required.
		</p>
		
			<h2>Parent/Legal Guardian 1</h2>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p1Name']){?> class=error<?php }?>>
				<label>Name</label><br/>
				<input type=text name=tgp_student_parent1_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent1[':p1Name'];?>
">
			</p>
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['p1combined']){?>
				<div class=error>
					<p>You must provide  at least a phone or email</p>
			<?php }?>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p1hPhone']){?> class=error<?php }?>>
				<label>Home Phone</label><br/>
				<input type=text name=tgp_student_parent1_homePhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent1[':p1hPhone'];?>
">
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p1cPhone']){?> class=error<?php }?>>
				<label>Cell Phone</label><br/>
				<input type=text name=tgp_student_parent1_cellPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent1[':p1cPhone'];?>
">
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p1wPhone']){?> class=error<?php }?>>
				<label>Work Phone</label><br/>
				<input type=text name=tgp_student_parent1_workPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent1[':p1wPhone'];?>
">
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p1Email']){?> class=error<?php }?>>
				<label>Email</label><br/>
				<input type=text name=tgp_student_parent1_email value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent1[':p1Email'];?>
">
			</p>
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['p1combined']){?>
				</div>
			<?php }?>
			<h2>Parent/Legal Guardian 2</h2>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p2Name']){?> class=error<?php }?>>
				<label>Name</label><br/>
				<input type=text name=tgp_student_parent2_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent2[':p2Name'];?>
">
			</p>
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['p2combined']){?>
				<div class=error>
					<p> You must provide at least a phone or email</p>
			<?php }?>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p2hPhone']){?> class=error<?php }?>>
				<label>Home Phone</label><br/>
				<input type=text name=tgp_student_parent2_homePhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent2[':p2hPhone'];?>
">
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p2cPhone']){?> class=error<?php }?>>
				<label>Cell Phone</label><br/>
				<input type=text name=tgp_student_parent2_cellPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent2[':p2cPhone'];?>
">
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p2wPhone']){?> class=error<?php }?>>
				<label>Work Phone</label><br/>
				<input type=text name=tgp_student_parent2_workPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent2[':p2wPhone'];?>
">
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':p2Email']){?> class=error<?php }?>>
				<label>Email</label><br/>
				<input type=text name=tgp_student_parent2_email value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParent2[':p2Email'];?>
">
			</p>
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['p2combined']){?>
				</div>
			<?php }?>
		<h2>Caregiver Information</h2>
			<p>
				<input type=checkbox name=tgp_student_no_caregiver value="No"> No Caregiver
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':cgName']){?> class=error<?php }?>>
				<label>Name</label><br/>
				<input type=text name=tgp_student_caregiver_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCaregiver[':cgName'];?>
">
			</p>
			<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':cgPhone']){?> class=error<?php }?>>
				<label>Phone</label><br/>
				<input type=text name=tgp_student_caregiver_phone  value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCaregiver[':cgPhone'];?>
">
			</p>
	</div>
	<h2>Emergency Contact Information</h2>
		<p>
			Someone other than parent if participant is under 18.
		</p>
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':eName']){?> class=error<?php }?>>
			<label>Name</label><br/>
			<input type=text name=tgp_student_emergency_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEContact[':eName'];?>
">
		</p>
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':eRelation']){?> class=error<?php }?>>
			<label>Relation</label><br/>
			<input type=radio name=tgp_student_emergency_relation <?php if ($_smarty_tpl->tpl_vars['obj']->value->mEContact[':eRelation']==="Family"){?>checked<?php }?> value="Family"> Family &nbsp; &nbsp;
			<input type=radio name=tgp_student_emergency_relation <?php if ($_smarty_tpl->tpl_vars['obj']->value->mEContact[':eRelation']==="Friend"){?>checked<?php }?> value="Friend"> Friend
		</p>
		<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['eccombined']){?>
			<div class=error>
				<p>You must provide at least a phone number or an email</p>
		<?php }?>
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':ehPhone']){?> class=error<?php }?>>
			<label>Home Phone</label><br/>
			<input type=text name=tgp_student_emergency_homePhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEContact[':ehPhone'];?>
">
		</p>
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':ecPhone']){?> class=error<?php }?>>
			<label>Cell Phone</label><br/>
			<input type=text name=tgp_student_emergency_cellPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEContact[':ecPhone'];?>
">
		</p>
		<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':ewPhone']){?> class=error<?php }?>>
			<label>Work Phone</label><br/>
			<input type=text name=tgp_student_emergency_workPhone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEContact[':ewPhone'];?>
">
		</p>
		<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['eccombined']){?>
			</div>
		<?php }?>
	<p>
		<input type=submit name=tgp_student_save value="Add Student&raquo;">
	</p>
</form>
<script>
function getDOB()
{
	var aDate = new Date();
	var dob = $( '#datepicker' ).val().split( "-" );
	var years =  parseInt( aDate.getFullYear() ) - parseInt( dob[ 2 ] );
		
	if( years >= 18 )
	{
		$( "#minors" ).hide();
		$( "#adults" ).show();
	}
	else if( years <= 18 && years >= 0 )
	{
		$( "#adults" ).hide();
		$( "#minors" ).show();
	}
}

onLoad = getDOB();

</script><?php }} ?>