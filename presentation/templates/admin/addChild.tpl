{load_presentation_object filename="addStudent" foldername="admin" assign="obj"}
<ul class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">&laquo;{$obj->mLinks[ i ].title}</a></li>
	{/section}
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
			{$obj->mP[ ':first' ]} {$obj->mP[ ':last' ]}<br/>
			{$obj->mP[ ':dob' ]}<br/>
			{$obj->mP[ ':sex' ]}
			</p>
			<p>Do you want to enter information as a new participant?</p>
			<p><input type=submit name="tgp_student_new" value="Yes, enter it as a new participant"></p>
			<p><input type=submit name="tgp_student_no" value="No, it is an existing participant"></p>
		</div>
	{/if}
	<div id=information>
		{if in_array( true, $obj->mErrors )}
			<p class=error>
				Please fill out all the fields in yellow.
			</p>
		{/if}
		<div class=row style="background-color:silver;padding:10px;border-radius:5px;">
			<h2>Class Information</h2>
				<p>Day & Time: {$obj->mClass[ 'weekday' ]}s - {helper::getTimeFormat( $obj->mClass[ 'start_time' ] )} - {helper::getTimeFormat( $obj->mClass[ 'end_time' ])}</p>
				<p>Dates: {helper::getDateWithoutDay( $obj->mClass[ 'start_date' ] )} - {helper::getDateWithoutDay( $obj->mClass[ 'end_date' ])}</p>
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
				<div class="col-md-3 {if $obj->mErrors[ ':first' ]}error{/if}">
					<label>First name</label><br/>
					<input type=text class="form-control" name=tgp_student_first value="{$obj->mP[ ':first' ]}">
				</div>
				<div class="col-md-3 {if $obj->mErrors[ ':last' ]}error{/if}">
					<label>Last name</label><br/>
					<input type=text class="form-control" name=tgp_student_last value="{$obj->mP[ ':last' ]}">
				</div>
			<div class="col-md-3 {if $obj->mErrors[ ':dob' ]}error{/if}">
				<label>DOB mm/dd/yyyy</label><br/>
				<input type=text class="form-control" name=tgp_student_dob id=datepicker value="{if !empty( $obj->mP[ ':dob' ] )}{date( 'm/d/Y', strtotime( $obj->mP[ ':dob' ] ) )}{/if}">
			</div>
			<div class="col-md-3 {if $obj->mErrors[ ':sex' ]}error{/if}">
				<label>Gender</label><br/>
				<input type=radio name=tgp_student_sex {if $obj->mP[ ':sex' ] === "M"}checked{/if} value="M"> Male  &nbsp; &nbsp;
				<input type=radio name=tgp_student_sex {if $obj->mP[ ':sex' ] === "F"}checked{/if} value="F"> Female
			</div>
		</div>
		<div id=adults  class="row {if $obj->mErrors[ 'icombined' ]}error{/if}">
			<h2>Contact Information</h2>
				{if $obj->mErrors[ 'icombined' ]}
					<p>
						You provide at least a phone number or an email
					</p>
				{/if}
				<div class="col-md-4 {if $obj->mErrors[ ':hPhone' ]}error{/if}">
					<label>Home Phone</label><br/>
					<input type=text class="form-control" name=tgp_student_homePhone value="{$obj->mP[ ':hPhone' ]}">
				
				</div>
				<div class="col-md-4 {if $obj->mErrors[ ':cPhone' ]}error{/if}">
					<label>Cell Phone</label><br/>
					<input type=text class="form-control" name=tgp_student_cellPhone value="{$obj->mP[ ':cPhone' ]}">
				</div>
				<div class="col-md-4 {if $obj->mErrors[ ':email' ]}error{/if}">
					<label>Email</label><br/>
					<input type=email class="form-control" name=tgp_student_email value="{$obj->mP[ ':email' ]}">
				</div>
		</div>
		<div class=row>
			<h2>Address</h2>	
				<div class="col-md-3 {if $obj->mErrors[ ':street' ]}error{/if}">
					<label>Street</label><br/>
					<input type=text class="form-control" name=tgp_student_address_street value="{$obj->mAddress[ ':street' ]}">
				</div>
				<div class="col-md-3 {if $obj->mErrors[ ':city' ]}error{/if}">
					<label>City</label><br/>
					<input type=text class="form-control" name=tgp_student_address_city value="{$obj->mAddress[ ':city' ]}">
				</div>
				<div class="col-md-3 {if $obj->mErrors[ ':state' ]}error{/if}">
					<label>State</label><br/>
					<input type=text class="form-control" name=tgp_student_address_state value="{$obj->mAddress[ ':state' ]}">
				</div>	
				<div class="col-md-3 {if $obj->mErrors[ ':zip' ]}error{/if}">
					<label>Zip</label><br/>
					<input type=text class="form-control" name=tgp_student_address_zip value="{$obj->mAddress[ ':zip' ]}">
				</div>	
		</div>
		<div id=minors>
				<h1>Parents/Legal Guardians Information</h1>
				<p>
					If participant is under the age of 18, this information is required.
				</p>
				<div class=row>
					<h2>Parent/Legal Guardian 1</h2>
					<div class="col-md-6 form-group {if $obj->mErrors[ ':p1Name' ]}error{/if}">
						<label>Name</label><br/>
						<input type=text class="form-control" name=tgp_student_parent1_name value="{$obj->mParent1[ ':p1Name' ]}">
					</div>
							<div class="col-md-6 form-group {if $obj->mErrors[ ':p1Email' ]}error{/if}">
								<label>Email</label><br/>
								<input type=email class="form-control" name=tgp_student_parent1_email value="{$obj->mParent1[ ':p1Email' ]}">
							</div>
				</div>
				<div class=row>
					{if $obj->mErrors[ 'p1combined' ]}
						<div class=error>
							<p>You must provide  at least a phone or email</p>
					{/if}
							<div class="col-md-4 form-group {if $obj->mErrors[ ':p1hPhone' ]}error{/if}">
								<label>Home Phone</label><br/>
								<input type=text class="form-control" name=tgp_student_parent1_homePhone value="{$obj->mParent1[ ':p1hPhone' ]}">
							</div>
							<div class="col-md-4 form-group {if $obj->mErrors[ ':p1cPhone' ]}error{/if}">
								<label>Cell Phone</label><br/>
								<input type=text class="form-control" name=tgp_student_parent1_cellPhone value="{$obj->mParent1[ ':p1cPhone' ]}">
							</div>
							<div class="col-md-4 form-group {if $obj->mErrors[ ':p1wPhone' ]}error{/if}">
								<label>Work Phone</label><br/>
								<input type=text class="form-control" name=tgp_student_parent1_workPhone value="{$obj->mParent1[ ':p1wPhone' ]}">
							</div>
					{if $obj->mErrors[ 'p1combined' ]}
						</div>
					{/if}
				</div>
				<div class=row>
					<h2>Parent/Legal Guardian 2</h2>
					<div class="col-md-6 form-group {if $obj->mErrors[ ':p2Name' ]}error{/if}">
						<label>Name</label><br/>
						<input type=text class="form-control" name=tgp_student_parent2_name value="{$obj->mParent2[ ':p2Name' ]}">
					</div>
					<div class="col-md-6 form-group {if $obj->mErrors[ ':p2Email' ]}error{/if}">
						<label>Email</label><br/>
						<input type=text class="form-control" name=tgp_student_parent2_email value="{$obj->mParent2[ ':p2Email' ]}">
					</div>
				</div>
				<div class=row>
					{if $obj->mErrors[ 'p2combined' ]}
						<div class=error>
							<p> You must provide at least a phone or email</p>
					{/if}
					<div class="col-md-4 form-group {if $obj->mErrors[ ':p2hPhone' ]}error{/if}">
						<label>Home Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_parent2_homePhone value="{$obj->mParent2[ ':p2hPhone' ]}">
					</div>
					<div class="col-md-4 form-group {if $obj->mErrors[ ':p2cPhone' ]}error{/if}">
						<label>Cell Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_parent2_cellPhone value="{$obj->mParent2[ ':p2cPhone' ]}">
					</div>
					<div class="col-md-4 form-group {if $obj->mErrors[ ':p2wPhone' ]}error{/if}">
						<label>Work Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_parent2_workPhone value="{$obj->mParent2[ ':p2wPhone' ]}">
					</div>
					{if $obj->mErrors[ 'p2combined' ]}
						</div>
					{/if}
				</div>
			<div class=row>
				<h2>School Info</h2>
				<div class="col-md-3 {if $obj->mErrors[ ':school' ]}error{/if}">
					<label>School Name</label><br/>
					<input type=text class="form-control" name=tgp_student_school value="{$obj->mSchool[ ':school' ]}">
				</div>
				<div class="col-md-3 {if $obj->mErrors[ ':grade' ]}error{/if}">
					<label>Grade</label><br/>
					<input type=text class="form-control" name=tgp_student_grade value="{$obj->mSchool[ ':grade' ]}">
				</div>
			</div>
			<div class=row>
				<h2>Caregiver Information</h2>
				<div class="col-md-2">
					<label> No Caregiver<br/>
						<input type=checkbox name=tgp_student_no_caregiver value="No">
					</label>
				</div>
				<div class="col-md-3 {if $obj->mErrors[ ':cgName' ]}error{/if}">
					<label>Name</label><br/>
					<input type=text class="form-control" name=tgp_student_caregiver_name value="{$obj->mCaregiver[ ':cgName' ]}">
				</div>
				<div class="col-md-3{if $obj->mErrors[ ':cgPhone' ]} class=error{/if}">
					<label>Phone</label><br/>
					<input type=text class="form-control" name=tgp_student_caregiver_phone  value="{$obj->mCaregiver[ ':cgPhone' ]}">
				</div>
			</div>
		</div>
		<div class=row>
			<h2>Emergency Contact Information</h2>
			<p>
				Someone other than parent if participant is under 18.
			</p>
			<div class="col-md-3 {if $obj->mErrors[ ':eRelation' ]}error{/if}">
				<label>Relation</label><br/>
				<input type=radio name=tgp_student_emergency_relation {if $obj->mEContact[ ':eRelation' ] === "Family"}checked{/if} value="Family"> Family &nbsp; &nbsp;
				<input type=radio name=tgp_student_emergency_relation {if $obj->mEContact[ ':eRelation' ] === "Friend"}checked{/if} value="Friend"> Friend
			</div>
			<div class="col-md-3 {if $obj->mErrors[ ':eName' ]}error{/if}">
				<label class="control-label">Name</label><br/>
				<input type=text class="form-control" name=tgp_student_emergency_name value="{$obj->mEContact[ ':eName' ]}">
			</div>
		</div>
		<div class=row>
			{if $obj->mErrors[ 'eccombined' ]}
				<div class=error>
					<p>You must provide at least a phone number or an email</p>
			{/if}
					<div class="col-md-3 form-group {if $obj->mErrors[ ':ehPhone' ]}error{/if}">
						<label>Home Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_emergency_homePhone value="{$obj->mEContact[ ':ehPhone' ]}">
					</div>
					<div class="col-md-3 form-group {if $obj->mErrors[ ':ecPhone' ]}error{/if}">
						<label>Cell Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_emergency_cellPhone value="{$obj->mEContact[ ':ecPhone' ]}">
					</div>
					<div class="col-md-3 form-group {if $obj->mErrors[ ':ewPhone' ]}error{/if}">
						<label>Work Phone</label><br/>
						<input type=text class="form-control" name=tgp_student_emergency_workPhone value="{$obj->mEContact[ ':ewPhone' ]}">
					</div>
			{if $obj->mErrors[ 'eccombined']}
				</div>
			{/if}
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

var classInformation = new classInfo( {$obj->mClass[ 'price' ]}, {$obj->mClass[ '9WeekPrice' ]}, "{$obj->mClass[ 'start_date' ]}", "{$obj->mClass[ 'end_date' ]}", "{$obj->mClass[ 'endFirstHalf' ]}", "{$obj->mClass[ 'startLastHalf' ]}" )

function classInfo( fullPrice, halfPrice, start, end, endFirstHalf, startLastHalf )
{
	this.fullPrice 		= fullPrice;
	this.halfPrice 		= halfPrice;
	this.start 			= start;
	this.end 			= end;
	this.endFirstHalf 	= endFirstHalf;
	this.startLastHalf 	= startLastHalf;
}



</script>