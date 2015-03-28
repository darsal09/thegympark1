{load_presentation_object filename="contact" assign="obj"}
<fieldset>
	<legend><h1>Contact</h1></legend>
	{if $obj->mError}
		<p class=error>
			There was an error in you input fields. Please fill out all the appropiate fields.
		</p>
	{/if}
	<form method=post action=contacts>
	{if $obj->mContactNameError}
		<p class=error>
	{else}
	<p>
	{/if}
		<label for=name>Name</label><br/>
		<input type=text name=lms_contact_name>
	</p>
	{if $obj->mContactEmailError}
		<p class=error>
	{else}
		<p>
	{/if}
		<label for=name>Email</label><br/>
		<input type=text name=lms_contact_email>
	</p>
	{if $obj->mContactSubjectError}
		<p class=error>
	{else}
	<p>
	{/if}
		<label for=name>Subject</label><br/>
		<input type=text name=lms_contact_subject>
	</p>
	{if $obj->mContactMessageError}
		<p class=error>
	{else}
	<p>
	{/if}
		<label for=name>Message</label><br/>
		<textarea rows=5 cols=40 name=lms_contact_message></textarea>
	</p>
	<p>
		<input type=submit name=lms_contact_submit value="Send &raquo;">
	</p>
	</form>
</fieldset>