{load_presentation_object filename="updateContactInfo" assign="obj"}
<form method=post>
			<input type=hidden name=tgp_student_contact_id value="{$obj->mContact.id}">
			<p>
				<label>Cell Phone:</label><br/>
				<input type=text name=tgp_student_contact_cellPhone value="{$obj->mContact.cellPhone}">
			</p>
			<p>
				<label>Home Phone:</label><br/>
				<input type=text name=tgp_student_contact_homePhone value="{$obj->mContact.homePhone}">
			</p>
			<p>
				<label>Email:</label><br/>
				<input type=text name=tgp_student_contact_email value="{$obj->mContact.email}">
			</p>
			<p>
				<input type=submit name=tgp_student_contact_update value="Update Info&raquo;">
				<input type=submit name=tgp_student_contact_update_cancel value="Cancel">
			</p>
</form>