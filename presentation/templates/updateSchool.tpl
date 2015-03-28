{load_presentation_object filename="updateSchool" assign="obj"}
<div>
	<form method=post role=form>
		<input type=hidden name=tgp_student_school_id value="{$obj->mSchool.id}">
		<div class=form-group>
			<label class=control-label>School Name:</label>
			<div>
				<input type=text name=tgp_student_school_name value="{$obj->mSchool.name}">
			</div>
		</div>
		<div class=form-group>
			<label class=control-label>School Grade:</label>
			<div>
				<input type=text name=tgp_student_school_grade value="{$obj->mSchool.grade}">
			</div>
		</div>
		<div class=form-group>
			<input type=submit name=tgp_student_school_update value="Update School&raquo;">
			<input type=submit name=tgp_student_school_update_cancel value="Cancel">
		</div>
	</form>
</div>