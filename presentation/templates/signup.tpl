{load_presentation_object filename="signUp" assign="obj"}
<div class=row>
	<div class=col-md-6>
		<fieldset>
			<legend><h1>Sign Up</h1></legend>
			<p>&nbsp;</p>
			<form method=post action="{$obj->mLinkToSignUp}" role=form>
			{if $obj->mError}
			<p class=error>
				{if $obj->mUserAlreadyExist}
					This email already exist in the database<br/>
					Try another email or <a href="{$obj->mLinkToLogin}">login &raquo;</a>
				{else}
					{$obj->mErrors}
				{/if}
			</p>	
			{/if}

			<div class="{if $obj->mUserNameError}has-error{/if}">
				<label for=tgp_signUp_name class=control-label>Name</label>
				<div>
					<input type=text class=control-form name=tgp_signUp_name>
				</div>
			</div>
			
			<div class="{if $obj->mUserEmailError}has-error{/if}">
				<label for=tgp_signUp_email class=control-label>Email</label>
				<div>
					<input type=text class=control-form name="tgp_signUp_email">
				</div>
			</div>
			
			<div class="{if $obj->mPasswordError}has-error{/if}">
				<label for=pswd class=control-label>Password</label>
				<div>
					<input type=password class=control-form name="tgp_signUp_pswd">
				</div>
			</div>
			
			<div class="{if $obj->mRepasswordError}has-error{/if}">
				<label for=repswd class=control-label>Re-type Password</label>
				<div>
					<input type=password class=control-form name="tgp_signUp_repswd">
				</div>
			</div>
			<div>
				<div>
					<input type=submit class="btn btn-default btn-primary btn-lg" name="tgp_signUp" value="Enter Info &raquo;">
				</div>
			</div>
			</form>
		</fieldset>
	</div>

	<div class=col-md-2></div>
	<div class=col-md-4>
		<fieldset>
			<legend><h1>Quick Information</h1></legend>
			<p>
				Signing for the gymp park gives you access to see what is going on at the gym park.
				We promise not to share your information with anyone else.
			</p>
			<p>
				You can manage how want to receive information from us.
			</p>
			<p>
				If you want to stop receiving information from us. You can just click on the link sent below in the newsletters or emails from the gym park.
				However, note that if you are currently taking classes in the gym park, you are not allowed to remove from our mailing list.
			</p>
		</fieldset>
	</div>
</div>