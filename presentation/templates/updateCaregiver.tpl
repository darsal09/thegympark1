{load_presentation_object filename="updateCaregiver" assign="obj"}
<form method=post>
	<input type=hidden name=tgp_student_caregiver_id value="{$obj->mCaregiver.nanny_id}">
			<p>
				<label>Name</label><br/>
				<input type=text name=tgp_student_caregiver_name value="{$obj->mCaregiver.name}">
			</p>
			<p>
				<label>Phone:</label><br/>
				<input type=text name=tgp_student_caregiver_phone value="{$obj->mCaregiver.phone}">
			</p>
			<p>
				<input type=submit name=tgp_student_caregiver_update value="Update Caregiver&raquo;">
				<input type=submit name=tgp_student_caregiver_update_cancel value="Cancel">
			</p>
</form>