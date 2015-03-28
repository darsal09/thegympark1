{load_presentation_object filename="studentInfo" foldername="admin" assign="obj"}
<fieldset>
	{if $obj->mEdit}
		<legend><h1>Edit Student's Immidiate Information</h1></legend>
		<form method=post>
			<input type=hidden name=tgp_student_id value="{$obj->mStudent.id}">
			<p {if $obj->mErro[ 'name' ]} class=error{/if}>
				<label>Name</label><br/>
				<input type=text name=tgp_student_name value="{$obj->mStudent.first} {$obj->mStudent.last}">
			</p>
			<p {if $obj->mErro[ 'name' ]} class=error{/if}>
				<label>DOB</label><br/>
				<input id=datepicker  type=text name=tgp_student_dob value="{$obj->mStudent.dob}">
			</p>
			<p {if $obj->mErro[ 'name' ]} class=error{/if}>
				<label>Gender</label><br/>
				<input type=radio name=tgp_student_gender {if $obj->mStudent.gender == "M"} checked {/if} value="M"> Male &nbsp; &nbsp; 
				<input type=radio name=tpg_student_gender {if $obj->mStudent.gender == "F"} checked {/if} value="F"> Female
			</p>
			<p><input type=submit name=tgp_student_update value="Update Student Immidiate Info&raquo;">
		</form>
	{else}
		<legend><h1><i>participant:</i> {$obj->mStudent.first} {$obj->mStudent.last}</h1></legend>
		<p align=right>
			<form method=post>
				<input type=submit name=tgp_student_edit value="Edit Immidiate Info&raquo;">
			</form>
		</p>
		<p>DOB: {$obj->mStudent.dob}</p>
		<p>Age: {$obj->mStudent.age}</p>
		<p>Gender: {$obj->mStudent.gender}</p>
	{/if}
	{include file="studentClasses.tpl"}
	{if $obj->mStudent.age > 17 }
		<fieldset>
			<legend id=contact>Contact Info</legend>
			
			{if !is_array( $obj->mContact )}
				{include file="addContactInfo.tpl"}
			{elseif $obj->mOption == "contactinfo"}
				{include file="updateContactInfo.tpl"}
			{else}
				<p align=right>
					<a href="{$obj->mLinkToEditContactInfo}">Edit Contact Info&raquo;</a>
				</p>
				<p>Cell Phone: {$obj->mContact.cellPhone}</p>
				<p>Home Phone: {$obj->mContact.homePhone}</p>
				<p>Email: {$obj->mContact.email}</p>
			{/if}
		
		</fieldset>
	{/if}
	<fieldset>
		<legend id=address>Address</legend>
		
		{if !is_array( $obj->mAddress )}
			{include file="addAddress.tpl"}
		{elseif $obj->mOption == "address" }
			{include file = "updateAddress.tpl"}
		{else}
			<p align=right>
				<a href="{$obj->mLinkToEditAddress}">Edit Address&raquo;</a>
			</p>
			<p>
				{$obj->mAddress.street}<br/>
				{$obj->mAddress.city}, {$obj->mAddress.state} {$obj->mAddress.zip}
			</p>
		{/if}
		
	</fieldset>
	
	{if intval( $obj->mStudent.age ) < 18 }
		{section name=i loop=$obj->mParents}
			<fieldset>
				<legend id=parent{$smarty.section.i.index + 1}>Parent {$smarty.section.i.index + 1}</legend>
				
				<p align=right>
					<a href="">Edit Parent {$smarty.section.i.index + 1}&raquo;</a>
				</p>
				<p>Name: {$obj->mParents[ i ].name}</p>
				<p>Home Phone: {$obj->mParents[ i ].homePhone}</p>
				<p>Cell Phone: {$obj->mParents[ i ].cellPhone}</p>
				<p>Work Phone: {$obj->mParents[ i ].workPhone}</p>
				<p>Email: {$obj->mParents[ i ].email}</p>
				
			</fieldset>
		{/section}
			
		<fieldset>
			<legend id=school>School Info</legend>
			
			{if !is_array( $obj->mSchool ) }
				{include file="addSchool.tpl"}
			{elseif $obj->mOption == "school"}
				{include file="updateSchool.tpl"}
			{else}
				<p align=right>
					<a href="{$obj->mLinkToEditSchool}">Edit School Info&raquo;</a>
				</p>
				<p>Name: {$obj->mSchool.name}</p>
				<p>Grade: {$obj->mSchool.grade}</p>
			{/if}
			
		</fieldset>

		<fieldset>
			<legend id=caregiver>Caregiver Info</legend>
			
			{if !is_array( $obj->mCaregiver ) }
				{include file="addCaregiver.tpl"}
			{elseif $obj->mOption == "caregiver"}
				{include file="updateCaregiver.tpl"}
			{else}
				<p align=right>
					<a href="{$obj->mLinkToEditCaregiver}">Edit Caregiver&raquo;</a>
				</p>
				<p>Name: {$obj->mCaregiver.name}</p>
				<p>Phone: {$obj->mCaregiver.phone}</p>
			{/if}
			
		</fieldset>
	{/if}
	
	<fieldset>
		<legend id=emergency>Emergency Contact</legend>
		
		{if !is_array( $obj->mEmergency ) }
			{include file="addEmergencyContact.tpl"}
		{elseif $obj->mOption == "emergency"}
			{include file="updateEmergencyContact.tpl"}
		{else}
			<p align=right>
				<a href="{$obj->mLinkToEditEmergency}">Edit Emergency Contact&raquo;</a>
			</p>
			<p>Name: {$obj->mEmergency.name}</p>
			<p>Relation: {$obj->mEmergency.relation}</p>
			<p>Home Phone: {$obj->mEmergency.homePhone}</p>
			<p>Work Phone: {$obj->mEmergency.workPhone}</p>
			<p>Cell Phone: {$obj->mEmergency.cellPhone}</p>
		{/if}
		
	</fieldset>
	
</fieldset>