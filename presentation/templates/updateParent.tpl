{load_presentation_object filename="updateParent" assign="obj"}
<form method=post>
	<input type=hidden name=tgp_student_parent_id value="{$obj->mParent.id}">
			<p>
				<label>Name</label><br/>
				<input type=text name=tgp_student_parent_name value="{$obj->mParent.name}">
			</p>
			<p>
				<label>Home Phone</label><br/>
				<input type=text name=tgp_student_parent_hPhone value="{$obj->mParent.homePhone}">
			</p>
			<p>
				<label>Work Phone</label><br/>
				<input type=text name=tgp_student_parent_wPhone value="{$obj->mParent.workPhone}">
			</p>
			<p>
				<label>Cell Phone</label><br/>
				<input type=text name=tgp_student_parent_cPhone value="{$obj->mParent.cellPhone}">
			</p>
			<p>
				<label>Email</label><br/>
				<input type=text name=tgp_student_parent_email value="{$obj->mParent.email}">
			</p>
			<p>
				<input type=submit name=tgp_student_parent_update value="Update Parent&raquo;">
				<input type=submit name=tgp_student_parent_update_cancel value="Cancel">
			</p>
</form>