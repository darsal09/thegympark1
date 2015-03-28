{load_presentation_object filename="sentPassword" assign="obj"}
<div class=row>
	<div class=col-md-6>
		<fieldset>
			<legend><h1>Password Sent</h1></legend>
			<p>
				{$obj->mP[ 'name' ]},<br/>
				Your password as been sent to {$obj->mP[ 'email' ]}.
			</p>
			<p>
				Check your email account to get the password and
				click <a href="{Link::Build( 'sign-in' )}">here</a> to log in to your account.
			</p>
		</fieldset>
	</div>
	
	<div class=col-md-6>
		<br/>
		<div class="panel-default">
			<div class=panel-heading>Quick Links</div>
			<div class=panel-body>
				<a href="{Link::Build( 'sign-in' )}">Login&raquo;</a>
			</div>
			<div class=panel-footer>
			
			</div>
		</div>
	</div>
</div>