{load_presentation_object filename="signIn" assign="obj"}
<div class=row>
	<div class=col-md-6>
		<fieldset>
			<legend><h1>Sign In</h1></legend>
			<form method=post role=form>
			
			{if in_array( true, $obj->mErrors ) }
				<p class=error>
					There were errors login in. Please verify your login information
				</p>
			{/if}
			
			<div class="form-group {if $obj->mErrors[ 'tgp_signin_email' ]} has-error{/if}">
				<label for=tgp_signin_email class=control-label>Email</label><br/>
				<div>
					<input type=text class=form-control name=tgp_signin_email placeholder="enter your email" value="{$obj->mP[ 'tgp_signin_email' ]}">
				</div>
			</div>
			<div class="form-group {if $obj->mErrors[ 'tgp_signin_pswd' ]}has-error{/if}">
				<label for=tgp_sign_in_pswd  class=control-label>Password</label><br/>
				<div>
					<input type=password class=form-control name=tgp_signin_pswd placeholder="enter your password" value="">
				</div>
			</div>			
			<p>
				<input type=submit class="btn-default btn-lg btn-primary" value="Log in &raquo;" name=tgp_signIn>
			</p>
			</form>
		</fieldset>
	</div>
	<div class=col-md-6>
		<fieldset>
			<legend><h1>Helpful Links</h1></legend>
				<p>New members: <a href="{$obj->mLinkToSignUp}">sign up&raquo;</a></p>
				<p><a href="{$obj->mLinkToRequestPassword}">Request password&raquo;</a></p>
		</fieldset>
	</div>
</div>