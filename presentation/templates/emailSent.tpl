{load_presentation_object filename="emailSent" assign="obj"}
<ol class=breadcrumb>
	<li><a href="{$obj->mLinkToParticipant}">&laquo;Participant Info</a></li>
</ol>
<div class="panel panel-default">
	<div class=panel-heading>
		<h1><small>Emailed to </small> {$obj->mParticipant.first} {$obj->mParticipant.last}</h1>
	</div>
	<div class=panel-body>
		<p>Sent on<br/>
			{section name=i loop=$obj->mSent}
				{$obj->mSent[ i ].sentOn}<br/>
			{/section}
		<p>
		<label>Subject:</label><br/>
		{$obj->mEmail[ 'subject' ]}
		</p>

		<p>
		<label>Message:</label><br/>
		{$obj->mEmail[ 'message' ]}
		</p>
	</div>
	<div class=panel-footer>
		<form method=post>
			<input type=submit class="btn btn-default btn-primary" name=tgp_resend_email value="Resend Email&raquo;">
		</form>
	</div>
</div>