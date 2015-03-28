{load_presentation_object filename="addCaregiver" assign="obj"}
<form method=post>
	<p>
		<input type=checkbox name=tgp_student_no_caregiver value="No"> No Caregiver
	</p>
			<p>
				<label>Name</label><br/>
				<input type=text name=tgp_student_caregiver_name>
			</p>
			<p>
				<label>Phone</label><br/>
				<input type=text name=tgp_student_caregiver_phone>
			</p>
	<p>
		<input type=submit name=tgp_student_caregiver_add value="Add Student's Caregiver&raquo;">
	</p>
</form>