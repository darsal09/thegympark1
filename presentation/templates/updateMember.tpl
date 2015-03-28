{load_presentation_object filename="member" assign="obj"}
<form method=post>
<input type=hidden name=member_id value="{$obj->mMember[ 'id' ]}">
<p>
	<label>Email</label><br/>
	<input type=text name=email value="{$obj->mEmail}">
</p>
<p>
	<label>First Name</label><br/>
	<input type=text name=FNAME value="{$obj->mMember.merges.FNAME}">
</p>
<p>
	<label>Last Name</label><br/>
	<input type=text name=LNAME value="{$obj->mMember.merges.LNAME}">
</p>
<p>
	<input type=submit name=mailchimp_update_member value="Update Member&raquo;">
</p>
</form>