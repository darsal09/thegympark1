{load_presentation_object filename="singleEmail" assign="obj"}
<p>
	<a href="{$obj->mLinkToParticipant}">&laquo;Participant Info</a>
</p>
{if in_array( true, $obj->mErrors) }
	<p class=error>Please make sure you fill out all fields</p>
{/if}
<h1><i>Email </i>
	{$obj->mStudentInfo[ 'first' ]} {$obj->mStudentInfo[ 'last' ]}
</h1>
<form method=post>
<p {if $obj->mErrors[ ':subject' ]} class=error{/if}>
	<label>Subject</label><br/>
	<input type=text name=tgp_email_subject value="{$obj->mP[ ':subject' ]}">
</p>

<p {if $obj->mErrors[ ':message' ]} class=error{/if}>
	<label>Message</label><br/>
	<textarea name=tgp_email_message>{$obj->mP[ ':message' ]}</textarea>
</p>

<p>
	<input type=submit name=tgp_email_send value="Send  Email&raquo;">
</p>
</form>
