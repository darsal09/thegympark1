{load_presentation_object filename="updateEmergencyContact" assign="obj"}
<form method=post>
	<input type=hidden name=tgp_student_emergency_id value="{$obj->mEmergency.id}">
			<p {if $obj->mError[ 'name' ]}class=error{/if}>
				<label>Name</label><br/>
				<input type=text name=tgp_student_emergency_name value="{$obj->mEmergency.name}">
			</p>
			<p {if $obj->mError[ 'relation' ]}class=error{/if}>
				<label>Relation:</label><br/>
				
				<input type=radio name=tgp_student_emergency_relation {if $obj->mEmergency.relation == "Family" } checked{/if} value="Family"> Family<br/>
				<input type=radio name=tgp_student_emergency_relation {if $obj->mEmergency.relation == "Friend" } checked{/if} value="Friend"> Friend
			</p>
			<p>
				<label>Home Phone:</label><br/>
				<input type=text name=tgp_student_emergency_homePhone value="{$obj->mEmergency.homePhone}">
			</p>
			<p>
				<label>Work Phone:</label><br/>
				<input type=text name=tgp_student_emergency_workPhone value="{$obj->mEmergency.workPhone}">
			</p>
			<p>
				<label>Cell Phone:</label><br/>
				<input type=text name=tgp_student_emergency_cellPhone value="{$obj->mEmergency.cellPhone}">
			</p>
			<p>
				<input type=submit name=tgp_student_emergency_update value="Update Info&raquo;">
				<input type=submit name=tgp_student_emergency_update_cancel value="Cancel">
			</p>
</form>