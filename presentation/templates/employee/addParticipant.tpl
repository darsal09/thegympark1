{load_presentation_object filename="addParticipant" foldername="employee" assign=obj}
<div class=page-header>
	<h1>Add Participant</h1>
</div>
	<form method=post>
		{if !empty( $obj->mMessage )}
			<div style="padding:10px;font-weight:bold;color:red;">{$obj->mMessage}</div>
		{/if}
	<div class=row>
		<h2>Personal Information</h2>
		<div class="form-group col-md-3 {if $obj->mErrors[ 'first' ]}has-error{/if}">
			<label class=control-label>First Name</label><br/>
			<input type=text class=form-control name=first id=first value="{$obj->mP[ 'first' ]}">
		</div>
		<div class="form-group col-md-3 {if $obj->mErrors[ 'last' ]}has-error{/if}">
			<label  class=control-label>Last Name</label><br/>
			<input type=text class=form-control name=last id=last value="{$obj->mP[ 'last' ]}">
		</div>
		<div class="form-group col-md-3 {if $obj->mErrors[ 'dob' ]}has-error{/if}">
			<label  class=control-label>DOB mm/dd/yyyy</label><br/>
			<input text class=form-control name=dob id=dob placeholder="mm/dd/yyyy" value="{$obj->mP[ 'dob' ]}">						
		</div>
		<div class="form-group col-md-3 {if $obj->mErrors[ 'gender' ]}has-error{/if}">
			<label  class=control-label>Gender</label><br/>
			<select class=form-control name=gender id=gender>
				<option value="M">Male</option>
				<option value="F">Female</option>
			</select>
		</div>
	</div>
	<div class=row>
		<h2>Address Information</h2>
						<div class="form-group col-md-5 {if $obj->mErrors[ 'street' ]}has-error{/if}">
							<label  class=control-label>Street</label><br/>
							<input type=text class=form-control name=street id=street value="{$obj->mP[ 'street' ]}">
						</div>
						<div class="form-group col-md-3 {if $obj->mErrors[ 'city' ]}has-error{/if}">
							<label  class=control-label>City</label><br/>
							<input type=text class=form-control name=city id=city value="{$obj->mP[ 'city' ]}">
						</div>
						<div class="form-group col-md-2 {if $obj->mErrors[ 'state' ]}has-error{/if}">
							<label  class=control-label>State</label><br/>
							<input text class=form-control name=state id=state placeholder="state"  value="{$obj->mP[ 'state' ]}">						
						</div>
						<div class="form-group col-md-2 {if $obj->mErrors[ 'zip' ]}has-error{/if}">
							<label  class=control-label>Zip</label><br/>
							<input type=text class=form-control name=zip id=zip value="{$obj->mP[ 'zip' ]}">
						</div>
	</div>
	<h2>Parent 1 Information</h2>
			<div  class=row>
				<div class="form-group col-md-3 {if $obj->mErrors[ 'parent1_first' ]}has-error{/if}">
					<label  class=control-label>First Name</label><br/>
					<input type=text class=form-control name=parent1_first id=parent1_first value="{$obj->mP[ 'parent1_first' ]}">
				</div>
				<div class="form-group col-md-3 {if $obj->mErrors[ 'parent1_last' ]}has-error{/if}">
								<label  class=control-label>Last Name</label><br/>
								<input type=text class=form-control name=parent1_last id=parent1_last value="{$obj->mP[ 'parent1_last' ]}">
				</div>
				<div class="form-group col-md-3 {if $obj->mErrors[ 'parent1_phone' ]}has-error{/if}">
							<label  class=control-label>Phone Number</label><br/>
							<input text class=form-control name=parent1_phone id=parent1_phone value="{$obj->mP[ 'parent1_phone' ]}">						
						</div>
						<div class="form-group col-md-3 {if $obj->mErrors[ 'parent1_email' ]}has-error{/if}">
							<label  class=control-label>Email</label><br/>
							<input type=text class=form-control name=parent1_email id=parent1_email value="{$obj->mP[ 'parent1_email' ]}">
						</div>
			</div>
		<h2>Parent 2 Information</h2>
			<div  class=row>
				<div class="form-group col-md-3 {if $obj->mErrors[ 'parent2_first' ]}has-error{/if}">
					<label  class=control-label>First Name</label><br/>
					<input type=text class=form-control name=parent2_first id=parent2_first value="{$obj->mP[ 'parent2_first' ]}">
				</div>
				<div class="form-group col-md-3 {if $obj->mErrors[ 'parent2_last' ]}has-error{/if}">
								<label  class=control-label>Last Name</label><br/>
								<input type=text class=form-control name=parent2_last id=parent2_last value="{$obj->mP[ 'parent2_last' ]}">
				</div>
						<div class="form-group col-md-3 {if $obj->mErrors[ 'parent2_phone' ]}has-error{/if}">
							<label  class=control-label>Phone Number</label><br/>
							<input text class=form-control name=parent2_phone id=parent2_phone  value="{$obj->mP[ 'parent2_phone' ]}">						
						</div>
						<div class="form-group col-md-3 {if $obj->mErrors[ 'parent2_email' ]}has-error{/if}">
							<label  class=control-label>Email</label><br/>
							<input type=text class=form-control name=parent2_email id=parent2_email value="{$obj->mP[ 'parent2_email' ]}">
						</div>
			</div>
		<h2>Emergency Information</h2>
			<div class=row>
				<div class="form-group col-md-4 {if $obj->mErrors[ 'emergency_relation' ]}has-error{/if}">
					<label  class=control-label>Relation</label><br/>
					<select name=emergency_relation id=emergency_relation>
						<option value="Family">Family</option>
						<option value="Friend">Friend</option>
					</select>
				</div>
				<div class="form-group col-md-4 {if $obj->mErrors[ 'emergency_name' ]}has-error{/if}">
							<label  class=control-label>Name</label><br/>
							<input type=text class=form-control name=emergency_name id=emergency_name value="{$obj->mP[ 'emergency_name' ]}">
				</div>
				<div class="form-group col-md-4 {if $obj->mErrors[ 'emergency_phone' ]}has-error{/if}">
							<label  class=control-label>Phone</label><br/>
							<input text class=form-control name=emergency_phone id=emergency_phone value="{$obj->mP[ 'emergency_phone' ]}">						
				</div>
			</div>
		<h2>Caregiver Information</h2>
		<div class=row>
						<div class="form-group col-md-4 {if $obj->mErrors[ 'caregiver_name' ]}has-error{/if}">
							<label  class=control-label>Name</label><br/>
							<input type=text class=form-control name=caregiver_name id=caregiver_name value="{$obj->mP[ 'caregiver_name' ]}">
						</div>
						<div class="form-group col-md-4 {if $obj->mErrors[ 'caregiver_phone' ]}has-error{/if}">
							<label  class=control-label>Phone Number</label><br/>
							<input text class=form-control name=caregiver_phone id=caregiver_phone value="{$obj->mP[ 'caregiver_phone' ]}">
						</div>
		</div>
	<div class=row>
		<h2>School Information</h2>
		<div class="form-group col-md-8 {if $obj->mErrors[ 'school_name' ]}has-error{/if}">
			<label  class=control-label>Name</label><br/>
			<input type=text class=form-control name=school_name id=school_name value="{$obj->mP[ 'school_name' ]}">
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
		$( '#emergency_relation' ).val( "{$obj->mP[ 'emergency_relation' ]}" );
		$( '#gender' ).val( "{$obj->mP[ 'gender' ]}" );
	});
</script>