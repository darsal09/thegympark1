{load_presentation_object filename="addStudent" assign="obj"}
<p>
	{section name=i loop=$obj->mLinks}
		<a href="{$obj->mLinks[ i ].link}">&laquo;{$obj->mLinks[ i ].title}</a>
		{if ( $smarty.section.i.index + 1 ) < sizeof( $obj->mLinks )}
			|
		{/if}
	{/section}
</p>

<fieldset>
	<legend><h1>Add Participant</h1></legend>
	<p>
		Please fill out all applicable fields.
	</p>
	{if in_array( true, $obj->mErrors )}
		<p class=error>
			Please fill out all the fields in yellow.
		</p>
	{/if}
	
<form method=post>
	{if !user::isLoggedIn()}
		<p>
			Previous Member?<br/>
			<input type=radio name=tgp_student_previous_member value="Y"> Yes<br/>
			<input type=radio name=tgp_student_previous_member value="N"> No
		</p>
	{/if}
	{if $obj->mAlreadyExist}
		<div class=error>
			<p>A participant with the following information already exist:<br/>
			{$obj->mP[ ':name' ]}<br/>
			{$obj->mP[ ':dob' ]}<br/>
			{$obj->mP[ ':sex' ]}
			</p>
			<p>Do you want to enter information as a new participant?</p>
			<p><input type=submit name="tgp_student_new" value="Yes, enter it as a new participant"></p>
			<p><input type=submit name="tgp_student_no" value="No, it is an existing participant"></p>
		</div>
	{/if}
		<h2>Participant Personal Info</h2>
		<p {if $obj->mErrors[ ':name' ]} class=error{/if}>
			<label>Name first and last name</label><br/>
			<input type=text name=tgp_student_name 
			value="{$obj->mP[ ':name' ]}">
		</p>
		<p {if $obj->mErrors[ ':dob' ]} class=error{/if}>
			<label>DOB mm/dd/yyyy</label><br/>
			<input type=text name=tgp_student_dob id=datepicker onChange="getDOB();" value="{if isset( $obj->mP[ ':dob' ] )}{date( 'm/d/Y', strtotime( $obj->mP[ ':dob' ] ) )}{/if}">
		</p>
		<p {if $obj->mErrors[ ':sex' ]} class=error{/if}>
			<label>Gender</label><br/>
			<input type=radio name=tgp_student_sex {if $obj->mP[ ':sex' ] === "M"}checked{/if} value="M"> Male  &nbsp; &nbsp;
			<input type=radio name=tgp_student_sex {if $obj->mP[ ':sex' ] === "F"}checked{/if} value="F"> Female
		</p>
	<div id=adults {if $obj->mErrors[ 'icombined' ]} class=error{/if}>
		<h2>Contact Information</h2>
			{if $obj->mErrors[ 'icombined' ]}
				<p>
					You provide at least a phone number or an email
				</p>
			{/if}
			<p {if $obj->mErrors[ ':hPhone' ]} class=error{/if}>
				<label>Home Phone</label><br/>
				<input type=text name=tgp_student_homePhone value="{$obj->mP[ ':hPhone' ]}">
			
			</p>
			<p {if $obj->mErrors[ ':cPhone' ]} class=error{/if}>
				<label>Cell Phone</label><br/>
				<input type=text name=tgp_student_cellPhone value="{$obj->mP[ ':cPhone' ]}">
			
			</p>
			<p {if $obj->mErrors[ ':email' ]} class=error{/if}>
				<label>Email</label><br/>
				<input type=text name=tgp_student_email value="{$obj->mP[ ':email' ]}">
			</p>
	</div>
		<h2>Address</h2>	
			<p {if $obj->mErrors[ ':street' ]} class=error{/if}>
				<label>Street</label><br/>
				<input type=text name=tgp_student_address_street value="{$obj->mAddress[ ':street' ]}">
			</p>
			<p {if $obj->mErrors[ ':city' ]} class=error{/if}>
				<label>City</label><br/>
				<input type=text name=tgp_student_address_city value="{$obj->mAddress[ ':city' ]}">
			</p>
			<p {if $obj->mErrors[ ':state' ]} class=error{/if}>
				<label>State</label><br/>
				<input type=text name=tgp_student_address_state value="{$obj->mAddress[ ':state' ]}">
			</p>	
			<p {if $obj->mErrors[ ':zip' ]} class=error{/if}>
				<label>Zip</label><br/>
				<input type=text name=tgp_student_address_zip value="{$obj->mAddress[ ':zip' ]}">
			</p>	
	<div id=minors>
		<h2>School Info</h2>
		<p {if $obj->mErrors[ ':school' ]} class=error{/if}>
			<label>School Name</label><br/>
			<input type=text name=tgp_student_school value="{$obj->mSchool[ ':school' ]}">
		</p>
		<p {if $obj->mErrors[ ':grade' ]} class=error{/if}>
			<label>Grade</label><br/>
			<input type=text name=tgp_student_grade value="{$obj->mSchool[ ':grade' ]}">
		</p>
		<h1>Parents/Legal Guardians Information</h1>
		<p>
			If participant is under the age of 18, this information is required.
		</p>
		
			<h2>Parent/Legal Guardian 1</h2>
			<p {if $obj->mErrors[ ':p1Name' ]} class=error{/if}>
				<label>Name</label><br/>
				<input type=text name=tgp_student_parent1_name value="{$obj->mParent1[ ':p1Name' ]}">
			</p>
			{if $obj->mErrors[ 'p1combined' ]}
				<div class=error>
					<p>You must provide  at least a phone or email</p>
			{/if}
			<p {if $obj->mErrors[ ':p1hPhone' ]} class=error{/if}>
				<label>Home Phone</label><br/>
				<input type=text name=tgp_student_parent1_homePhone value="{$obj->mParent1[ ':p1hPhone' ]}">
			</p>
			<p {if $obj->mErrors[ ':p1cPhone' ]} class=error{/if}>
				<label>Cell Phone</label><br/>
				<input type=text name=tgp_student_parent1_cellPhone value="{$obj->mParent1[ ':p1cPhone' ]}">
			</p>
			<p {if $obj->mErrors[ ':p1wPhone' ]} class=error{/if}>
				<label>Work Phone</label><br/>
				<input type=text name=tgp_student_parent1_workPhone value="{$obj->mParent1[ ':p1wPhone' ]}">
			</p>
			<p {if $obj->mErrors[ ':p1Email' ]} class=error{/if}>
				<label>Email</label><br/>
				<input type=text name=tgp_student_parent1_email value="{$obj->mParent1[ ':p1Email' ]}">
			</p>
			{if $obj->mErrors[ 'p1combined' ]}
				</div>
			{/if}
			<h2>Parent/Legal Guardian 2</h2>
			<p {if $obj->mErrors[ ':p2Name' ]} class=error{/if}>
				<label>Name</label><br/>
				<input type=text name=tgp_student_parent2_name value="{$obj->mParent2[ ':p2Name' ]}">
			</p>
			{if $obj->mErrors[ 'p2combined' ]}
				<div class=error>
					<p> You must provide at least a phone or email</p>
			{/if}
			<p {if $obj->mErrors[ ':p2hPhone' ]} class=error{/if}>
				<label>Home Phone</label><br/>
				<input type=text name=tgp_student_parent2_homePhone value="{$obj->mParent2[ ':p2hPhone' ]}">
			</p>
			<p {if $obj->mErrors[ ':p2cPhone' ]} class=error{/if}>
				<label>Cell Phone</label><br/>
				<input type=text name=tgp_student_parent2_cellPhone value="{$obj->mParent2[ ':p2cPhone' ]}">
			</p>
			<p {if $obj->mErrors[ ':p2wPhone' ]} class=error{/if}>
				<label>Work Phone</label><br/>
				<input type=text name=tgp_student_parent2_workPhone value="{$obj->mParent2[ ':p2wPhone' ]}">
			</p>
			<p {if $obj->mErrors[ ':p2Email' ]} class=error{/if}>
				<label>Email</label><br/>
				<input type=text name=tgp_student_parent2_email value="{$obj->mParent2[ ':p2Email' ]}">
			</p>
			{if $obj->mErrors[ 'p2combined' ]}
				</div>
			{/if}
		<h2>Caregiver Information</h2>
			<p>
				<input type=checkbox name=tgp_student_no_caregiver value="No"> No Caregiver
			</p>
			<p {if $obj->mErrors[ ':cgName' ]} class=error{/if}>
				<label>Name</label><br/>
				<input type=text name=tgp_student_caregiver_name value="{$obj->mCaregiver[ ':cgName' ]}">
			</p>
			<p {if $obj->mErrors[ ':cgPhone' ]} class=error{/if}>
				<label>Phone</label><br/>
				<input type=text name=tgp_student_caregiver_phone  value="{$obj->mCaregiver[ ':cgPhone' ]}">
			</p>
	</div>
	<h2>Emergency Contact Information</h2>
		<p>
			Someone other than parent if participant is under 18.
		</p>
		<p {if $obj->mErrors[ ':eName' ]} class=error{/if}>
			<label>Name</label><br/>
			<input type=text name=tgp_student_emergency_name value="{$obj->mEContact[ ':eName' ]}">
		</p>
		<p {if $obj->mErrors[ ':eRelation' ]} class=error{/if}>
			<label>Relation</label><br/>
			<input type=radio name=tgp_student_emergency_relation {if $obj->mEContact[ ':eRelation' ] === "Family"}checked{/if} value="Family"> Family &nbsp; &nbsp;
			<input type=radio name=tgp_student_emergency_relation {if $obj->mEContact[ ':eRelation' ] === "Friend"}checked{/if} value="Friend"> Friend
		</p>
		{if $obj->mErrors[ 'eccombined' ]}
			<div class=error>
				<p>You must provide at least a phone number or an email</p>
		{/if}
		<p {if $obj->mErrors[ ':ehPhone' ]} class=error{/if}>
			<label>Home Phone</label><br/>
			<input type=text name=tgp_student_emergency_homePhone value="{$obj->mEContact[ ':ehPhone' ]}">
		</p>
		<p {if $obj->mErrors[ ':ecPhone' ]} class=error{/if}>
			<label>Cell Phone</label><br/>
			<input type=text name=tgp_student_emergency_cellPhone value="{$obj->mEContact[ ':ecPhone' ]}">
		</p>
		<p {if $obj->mErrors[ ':ewPhone' ]} class=error{/if}>
			<label>Work Phone</label><br/>
			<input type=text name=tgp_student_emergency_workPhone value="{$obj->mEContact[ ':ewPhone' ]}">
		</p>
		{if $obj->mErrors[ 'eccombined']}
			</div>
		{/if}
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

</script>