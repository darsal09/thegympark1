{load_presentation_object filename="updateAddress" assign="obj"}
<form method=post role=form>
	<input type=hidden name=tgp_student_address_id value="{$obj->mAddress.id}">
			<p>
				<label>Street</label><br/>
				<input type=text name=tgp_student_address_street value="{$obj->mAddress.street}">
			</p>
			<p>
				<label>City:</label><br/>
				<input type=text name=tgp_student_address_city value="{$obj->mAddress.city}">
			</p>
			<p>
				<label>State:</label><br/>
				<input type=text name=tgp_student_address_state value="{$obj->mAddress.state}">
			</p>
			<p>
				<label>Zip:</label><br/>
				<input type=text name=tgp_student_address_zip value="{$obj->mAddress.zip}">
			</p>
			<p>
				<input class="btn btn-default btn-primary btn-lg" type=submit name=tgp_student_address_update value="Update Address&raquo;">
				<a class="btn btn-default btn-warning btn-lg" href="{$obj->mLinkToCancel}">Cancel</a>
			</p>
</form>