{load_presentation_object filename="loggedIn" assign="obj"}
<fieldset>
	<legend><h1>Welcome, {$obj->mUserName}!</h1></legend>

	<div class="row">
		<div class="col-md-8">
			<!--	{include file="memberships.tpl"} -->
				{include file="notices.tpl"}
				{include file="kids.tpl"}
				{include file="register.tpl"}
		</div>
		<div class=col-md-4>
		
		</div>
	</div>
</fieldset>