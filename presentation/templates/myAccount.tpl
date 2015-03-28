{load_presentation_object filename="myAccount" assign="obj"}
<fieldset>
	<legend><h1>
		{if $obj->mEdit}
			Update My Information
		{elseif $obj->mEditPassword}
			Change Password
		{else}
			My Information
		{/if}
		</h1>
	</legend>

<form method=post action="{$obj->mLinkToAction}">
{if $obj->mEditPassword}
	{if $obj->mUpdatePasswordError}
		<p class=error>Error changing password</p>
	{/if}
	<p>
		<lable for=lms_edit_opswd>Current password</label><br/>
		<input type=password name=tgp_edit_opswd value="">
	</p>
	<p>
		<lable for=lms_edit_opswd>New password</label><br/>
		<input type=password name=tgp_edit_npswd value="">
	</p>
	<p>
		<lable for=lms_edit_opswd>Re-typ new password</label><br/>
		<input type=password name=tgp_edit_re_npswd value="">
	</p>
	<p>
		<input type=submit name=tgp_change_pswd value="Change Password &raquo;">
	</p>
	
{else}
<p>
	<label>Name:</label><br/>
	{if $obj->mEdit}	
		<input type=text name=tgp_edit_user_name value="{$obj->mUserInfo.uName}">
	{else}
		{$obj->mUserInfo.uName}
	{/if}
</p>
<p>
	<label>Email:</label><br/>
	{if $obj->mEdit}
		<input type=text name=tgp_edit_user_email value="{$obj->mUserInfo.uEmail}">
	{else}
		{$obj->mUserInfo.uEmail}
	{/if}
</p>
	{if $obj->mEdit}
		<p><input type=submit name="tgp_update_user" value="Save Changes &raquo;"></p>
	{else}
		<p><input type=submit name="tgp_edit_user" value="Edit Info &raquo;"></p>
		<p><input type=submit name="tgp_edit_pswd" value="Change Password &raquo;"></p>
	{/if}
{/if}
</form>
</fieldset>