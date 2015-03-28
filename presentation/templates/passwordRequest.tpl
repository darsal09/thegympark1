{load_presentation_object filename="requestPassword" assign="obj"}
<div class=row>
	<div class=col-md-7>
		<fieldset>
			<legend><h1>Requesting Password</h1></legend>
			{if in_array( true, $obj->mErrors )}
				<p class=error>
					Your email does not exist in our system. You can sign up by clicking <a href="{$obj->mLinkToSignUp}">here</a> to create an acount with us.
				</p>
			{/if}
			<p>
				In order to request password. You have to enter your name and email. If your email is in the system, we will send you the link to update your password.
			</p>
			<form method=post>
				<div class="form-group {if $obj->mErrors[ ':email' ]}has-error{/if}">
					<label class=control-label>Email</label>
					<div>
						<input type=text name=:email class=form-control placeholder="enter your email" value="{$obj->mP[ ':email' ]}">
					</div>
				</div>
				<div class=form-group>
					<input type=submit class="btn-default btn-lg btn-primary" name=request_password value="Request Password&raquo;">
				</div>
			</form>
		</fieldset>
	</div>
	<div class=col-md-5>
		<fieldset>
			<legend><h1>Helpful Links</h1></legend>
			<p>New members. <a href="{$obj->mLinkToSignUp}">sign up&raquo;</a></p>
			<p>Go back to <a href="{$obj->mLinkToLogin}">login&raquo;</a></p>
		</fieldset>
	</div>
</div>