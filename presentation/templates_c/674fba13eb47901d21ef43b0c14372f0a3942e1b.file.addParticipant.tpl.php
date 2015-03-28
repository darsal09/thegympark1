<?php /* Smarty version Smarty-3.1.8, created on 2015-01-24 22:32:15
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\employee\addParticipant.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2271454c061b8ea6005-30400940%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '674fba13eb47901d21ef43b0c14372f0a3942e1b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\employee\\addParticipant.tpl',
      1 => 1422156732,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2271454c061b8ea6005-30400940',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54c061b8ea6002_19036678',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54c061b8ea6002_19036678')) {function content_54c061b8ea6002_19036678($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addParticipant",'foldername'=>"employee",'assign'=>'obj'),$_smarty_tpl);?>

<div class=page-header>
	<h1>Add Participant</h1>
</div>
	<form method=post>
		<?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mMessage)){?>
			<div style="padding:10px;font-weight:bold;color:red;"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mMessage;?>
</div>
		<?php }?>
	<div class=row>
		<h2>Personal Information</h2>
		<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['first']){?>has-error<?php }?>">
			<label class=control-label>First Name</label><br/>
			<input type=text class=form-control name=first id=first value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['first'];?>
">
		</div>
		<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['last']){?>has-error<?php }?>">
			<label  class=control-label>Last Name</label><br/>
			<input type=text class=form-control name=last id=last value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['last'];?>
">
		</div>
		<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['dob']){?>has-error<?php }?>">
			<label  class=control-label>DOB mm/dd/yyyy</label><br/>
			<input text class=form-control name=dob id=dob placeholder="mm/dd/yyyy" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['dob'];?>
">						
		</div>
		<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['gender']){?>has-error<?php }?>">
			<label  class=control-label>Gender</label><br/>
			<select class=form-control name=gender id=gender>
				<option value="M">Male</option>
				<option value="F">Female</option>
			</select>
		</div>
	</div>
	<div class=row>
		<h2>Address Information</h2>
						<div class="form-group col-md-5 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['street']){?>has-error<?php }?>">
							<label  class=control-label>Street</label><br/>
							<input type=text class=form-control name=street id=street value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['street'];?>
">
						</div>
						<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['city']){?>has-error<?php }?>">
							<label  class=control-label>City</label><br/>
							<input type=text class=form-control name=city id=city value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['city'];?>
">
						</div>
						<div class="form-group col-md-2 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['state']){?>has-error<?php }?>">
							<label  class=control-label>State</label><br/>
							<input text class=form-control name=state id=state placeholder="state"  value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['state'];?>
">						
						</div>
						<div class="form-group col-md-2 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['zip']){?>has-error<?php }?>">
							<label  class=control-label>Zip</label><br/>
							<input type=text class=form-control name=zip id=zip value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['zip'];?>
">
						</div>
	</div>
	<h2>Parent 1 Information</h2>
			<div  class=row>
				<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['parent1_first']){?>has-error<?php }?>">
					<label  class=control-label>First Name</label><br/>
					<input type=text class=form-control name=parent1_first id=parent1_first value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['parent1_first'];?>
">
				</div>
				<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['parent1_last']){?>has-error<?php }?>">
								<label  class=control-label>Last Name</label><br/>
								<input type=text class=form-control name=parent1_last id=parent1_last value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['parent1_last'];?>
">
				</div>
				<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['parent1_phone']){?>has-error<?php }?>">
							<label  class=control-label>Phone Number</label><br/>
							<input text class=form-control name=parent1_phone id=parent1_phone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['parent1_phone'];?>
">						
						</div>
						<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['parent1_email']){?>has-error<?php }?>">
							<label  class=control-label>Email</label><br/>
							<input type=text class=form-control name=parent1_email id=parent1_email value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['parent1_email'];?>
">
						</div>
			</div>
		<h2>Parent 2 Information</h2>
			<div  class=row>
				<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['parent2_first']){?>has-error<?php }?>">
					<label  class=control-label>First Name</label><br/>
					<input type=text class=form-control name=parent2_first id=parent2_first value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['parent2_first'];?>
">
				</div>
				<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['parent2_last']){?>has-error<?php }?>">
								<label  class=control-label>Last Name</label><br/>
								<input type=text class=form-control name=parent2_last id=parent2_last value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['parent2_last'];?>
">
				</div>
						<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['parent2_phone']){?>has-error<?php }?>">
							<label  class=control-label>Phone Number</label><br/>
							<input text class=form-control name=parent2_phone id=parent2_phone  value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['parent2_phone'];?>
">						
						</div>
						<div class="form-group col-md-3 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['parent2_email']){?>has-error<?php }?>">
							<label  class=control-label>Email</label><br/>
							<input type=text class=form-control name=parent2_email id=parent2_email value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['parent2_email'];?>
">
						</div>
			</div>
		<h2>Emergency Information</h2>
			<div class=row>
				<div class="form-group col-md-4 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['emergency_relation']){?>has-error<?php }?>">
					<label  class=control-label>Relation</label><br/>
					<select name=emergency_relation id=emergency_relation>
						<option value="Family">Family</option>
						<option value="Friend">Friend</option>
					</select>
				</div>
				<div class="form-group col-md-4 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['emergency_name']){?>has-error<?php }?>">
							<label  class=control-label>Name</label><br/>
							<input type=text class=form-control name=emergency_name id=emergency_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['emergency_name'];?>
">
				</div>
				<div class="form-group col-md-4 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['emergency_phone']){?>has-error<?php }?>">
							<label  class=control-label>Phone</label><br/>
							<input text class=form-control name=emergency_phone id=emergency_phone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['emergency_phone'];?>
">						
				</div>
			</div>
		<h2>Caregiver Information</h2>
		<div class=row>
						<div class="form-group col-md-4 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['caregiver_name']){?>has-error<?php }?>">
							<label  class=control-label>Name</label><br/>
							<input type=text class=form-control name=caregiver_name id=caregiver_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['caregiver_name'];?>
">
						</div>
						<div class="form-group col-md-4 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['caregiver_phone']){?>has-error<?php }?>">
							<label  class=control-label>Phone Number</label><br/>
							<input text class=form-control name=caregiver_phone id=caregiver_phone value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['caregiver_phone'];?>
">
						</div>
		</div>
	<div class=row>
		<h2>School Information</h2>
		<div class="form-group col-md-8 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['school_name']){?>has-error<?php }?>">
			<label  class=control-label>Name</label><br/>
			<input type=text class=form-control name=school_name id=school_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['school_name'];?>
">
		</div>
	</div>
	
	<div class=row>
		<div class="form-group col-md-8">
			<input type=submit class="btn btn-default btn-primary btn-lg" name=participant_save value="Save&raquo;">
		</div>
	</div>
	
</form>
	
<script>
	$( document ).ready( function()
	{
		$( '#emergency_relation' ).val( "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['emergency_relation'];?>
" );
		$( '#gender' ).val( "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['gender'];?>
" );
	});
</script><?php }} ?>