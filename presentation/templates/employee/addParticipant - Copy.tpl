{load_presentation_object filename="addParticipant" foldername="employee" assign=obj}
<div class=page-header>
	<h1>Add Participant</h1>
</div>
	<form method=post>
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
					<select name=emergency_relation>
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
	
	
	
<div class="modal" id=addPersonalInfo data-keyboard="true" data-backdrop="true" tabindex="-1" role="dialog" aria-labelledby="#addPersonalInfo" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form id=personalInfo>
				<div class="modal-header">
					<h3 class="modal-title" id="myModalLabel">Add Participant Personal Information</h3>
				</div>	
				<div class=modal-body>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>First Name</label><br/>
							<input type=text class=form-control name=first id=first>
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>Last Name</label><br/>
							<input type=text class=form-control name=last id=last>
						</div>
					</div>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>DOB mm/dd/yyyy</label><br/>
							<input text class=form-control name=dob id=dob placeholder="mm/dd/yyyy">						
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>Gender</label><br/>
							<select class=form-control name=gender id=gender>
								<option value="M">Male</option>
								<option value="F">Female</option>
							</select>
						</div>
					</div>
				</div>
				<div class=row>
					<div class=col-md-1>
					</div>
					<div class=col-md-11>
						<input type=submit class="btn btn-default btn-primary btn-lg save" name="addPersonalInfo" value="Save&raquo;">
						<a class="btn btn-default btn-warning btn-lg close" name="addPersonalInfo">Close&raquo;</a>						
					</div>
				</div>
				<p>&nbsp;</p>
			</form>
		</div>
	</div>
</div>


<div class="modal" id=addAddressInfo data-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="#addAddressInfo" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form id=addressInfo>
				<div class="modal-header">
					<h3 class="modal-title" id="myModalLabel">Add Participant's Address</h3>
				</div>	
				<div class=modal-body>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>Street</label><br/>
							<input type=text class=form-control name=street id=street>
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>City</label><br/>
							<input type=text class=form-control name=city id=city value="Brooklyn">
						</div>
					</div>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>State</label><br/>
							<input text class=form-control name=state id=state placeholder="state" value="NY">						
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>Zip</label><br/>
							<input type=text class=form-control name=zip id=zip>
						</div>
					</div>
				</div>
				<div class=row>
					<div class=col-md-1>
					</div>
					<div class=col-md-11>
						<input type=submit class="btn btn-default btn-primary btn-lg save" name=addAddressInfo value="Save&raquo;">
						<a class="btn btn-default btn-warning btn-lg close" name="addAddressInfo">Close&raquo;</a>						
					</div>
				</div>
				<p>&nbsp;</p>
			</form>
		</div>
	</div>
</div>

<div class="modal" id=addParentsInfo data-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="#addParentsInfo" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form id=parentsInfo>
				<div class="modal-header">
					<h3 class="modal-title" id="myModalLabel">Add Parents Information</h3>
				</div>	
				<div class=modal-body>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>Parent 1 First Name</label><br/>
							<input type=text class=form-control name=first id=parent1_first>
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>Parent 1 Last Name</label><br/>
							<input type=text class=form-control name=last id=parent1_last>
						</div>
					</div>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>Phone Number</label><br/>
							<input text class=form-control name=dob id=parent1_number placeholder="mm/dd/yyyy">						
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>Email</label><br/>
							<input type=text class=form-control name=gender id=parent1_email>
						</div>
					</div>
				</div>
				<div class=row>
					<div class=col-md-1>
					</div>
					<div class=col-md-11>
						<input type=submit class="btn btn-default btn-primary btn-lg save" name="addParentsInfo" value="Save&raquo;">
						<a class="btn btn-default btn-warning btn-lg close" name=addParentsInfo href="">Close&raquo;</a>						
					</div>
				</div>
				<p>&nbsp;</p>
			</form>
		</div>
	</div>
</div>

<div class="modal" id=addEmergencyInfo data-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="#addEmergencyInfo" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form id=emergencyInfo>
				<div class="modal-header">
					<h3 class="modal-title" id="myModalLabel">Add Emergency Contact Information</h3>
				</div>	
				<div class=modal-body>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>First Name</label><br/>
							<input type=text class=form-control name=first id=first>
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>Last Name</label><br/>
							<input type=text class=form-control name=last id=last>
						</div>
					</div>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>DOB mm/dd/yyyy</label><br/>
							<input text class=form-control name=dob id=dob placeholder="mm/dd/yyyy">						
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>Gender</label><br/>
							<select class=form-control name=gender id=gender>
								<option value="M">Male</option>
								<option value="F">Female</option>
							</select>
						</div>
					</div>
				</div>
				<div class=row>
					<div class=col-md-1>
					</div>
					<div class=col-md-11>
						<input type=submit class="btn btn-default btn-primary btn-lg save" name="addEmergencyInfo" value="Save&raquo;">
						<a class="btn btn-default btn-warning btn-lg close" name=addEmergencyInfo href="">Close&raquo;</a>						
					</div>
				</div>
				<p>&nbsp;</p>
			</form>
		</div>
	</div>
</div>

<div class="modal" id=addCaregiverInfo data-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="#addCaregiverInfo" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form id=caregiverInfo>
				<div class="modal-header">
					<h3 class="modal-title" id="myModalLabel">Add Caregiver Information</h3>
				</div>	
				<div class=modal-body>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>First Name</label><br/>
							<input type=text class=form-control name=first id=first>
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>Last Name</label><br/>
							<input type=text class=form-control name=last id=last>
						</div>
					</div>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>DOB mm/dd/yyyy</label><br/>
							<input text class=form-control name=dob id=dob placeholder="mm/dd/yyyy">						
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>Gender</label><br/>
							<select class=form-control name=gender id=gender>
								<option value="M">Male</option>
								<option value="F">Female</option>
							</select>
						</div>
					</div>
				</div>
				<div class=row>
					<div class=col-md-1>
					</div>
					<div class=col-md-11>
						<input type=submit class="btn btn-default btn-primary btn-lg save" name="addCaregiverInfo" value="Save&raquo;">
						<a class="btn btn-default btn-warning btn-lg close" name="addCaregiverInfo" href="">Close&raquo;</a>						
					</div>
				</div>
				<p>&nbsp;</p>
			</form>
		</div>
	</div>
</div>

<div class="modal" id=addSchoolInfo data-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="#addSchoolInfo" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form id=schoolInfo>
				<div class="modal-header">
					<h3 class="modal-title" id="myModalLabel">Add School Information</h3>
				</div>	
				<div class=modal-body>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>First Name</label><br/>
							<input type=text class=form-control name=first id=first>
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>Last Name</label><br/>
							<input type=text class=form-control name=last id=last>
						</div>
					</div>
					<div class=row>
						<div class="form-group col-md-6">
							<label  class=control-label>DOB mm/dd/yyyy</label><br/>
							<input text class=form-control name=dob id=dob placeholder="mm/dd/yyyy">						
						</div>
						<div class="form-group col-md-6">
							<label  class=control-label>Gender</label><br/>
							<select class=form-control name=gender id=gender>
								<option value="M">Male</option>
								<option value="F">Female</option>
							</select>
						</div>
					</div>
				</div>
				<div class=row>
					<div class=col-md-1>
					</div>
					<div class=col-md-11>
						<input type=submit class="btn btn-default btn-primary btn-lg save" name="addSchoolInfo" value="Save&raquo;">
						<a class="btn btn-default btn-warning btn-lg close" name="addSchoolInfo" href="">Close&raquo;</a>						
					</div>
				</div>
				<p>&nbsp;</p>
			</form>
		</div>
	</div>
</div>

<script>
	var links = { 'addPersonalInfo' : "{$obj->mLinkToAddPersonalInfo}", 
					'addAddressInfo' : "{$obj->mLinkToAddAddressInfo}", 
					'addParentsInfo' : "{$obj->mLinkToAddParentsInfo}", 
					'addEmergencyInfo' : "{$obj->mLinkToAddEmergencyInfo}",
					'addCaregiverInfo' : "{$obj->mLinkToAddCaregiverInfo}", 
					'addSchoolInfo' : "{$obj->mLinkToAddSchoolInfo}" };
					
	var order = [ 'addPersonalInfo', 
				  'addAddressInfo', 
				  'addParentsInfo', 
				  'addEmergencyInfo', 
				  'addCaregiverInfo', 
				  'addSchoolInfo' ];
				  
	var forms = [ 'personalInfo', 'addressInfo', 'parentsInfo', 'emergencyInfo', 'caregiverInfo', 'schoolInfo' ];
	
	$( document ).ready( function()
	{
//		openModal( order[ 0 ] );
						
		$( '.close' ).click( function( e )
		{
			e.preventDefault();
			
			closeModal( this.name );
		});
		
		$( '.save' ).click( function( e )
		{
			e.preventDefault();

			var name = this.name;
			
			$.post( links[ name ],
				$( '#'+forms[ 0 ] ).serialize(),
				function( data, status )
				{
					data = jQuery.parseJSON( data );
					
					if( !data.success )
						return alert( data.message );
					
					forms.shift();//remove the form that we collected the information from
					
					 eval( name + '(' + data.fields + ')' );
					
					closeModal( name ); //close the modal of the information that we collected
					order.shift(); //remove the modal that we just collected the information from
					
					if( order.length == 0 )
						return;
						
					openModal( order[ 0 ] ); //open the next modal in the list 
				});
		});
		
	});
	
	function closeModal( id )
	{
		$( '#'+id ).modal( 'hide' );
	}
	
	function openModal( id )
	{
		$( '#'+id ).modal( 'show' );
	}
		
	function addAddressInfo( info )
	{
		$( '#address_info' ).html( info );
	}
	
	function addPersonalInfo( info )
	{
		var infos = '<p>Name: '+info.first+' '+info.last+'<br/>Gender: '+info.gender+'<br/>Sex: '+info.gender+'</p>';
		alert( infos );
		$( '#personal_info' ).html( infos );
	}
	
</script>