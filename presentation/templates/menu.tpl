{load_presentation_object filename="menu" assign="obj"}

<p class=topmenu>
	{if !$obj->mEmptyCart}
		<a href="{$obj->mLinkToCart}">view cart</a>|
	{/if}
	{if $obj->mLogIn}
		<a href="{$obj->mLinkToMyAccount}">My account</a>|
		<a href="{$obj->mLinkToMyHomePage}">My main</a>|
		<a href="{$obj->mLinkToLogOff}">Log off</a>
	{else}
		<a href="{$obj->mLinkToSignIn}">Log in</a>
	{/if}
</p>
<p class=bottommenu>
	<a href="{$obj->mLinkToIndex}">Home</a>
	<a href="{$obj->mLinkToClassSchedule}">Class Schedule</a>
	<a href="{$obj->mLinkToProgram}">Programs</a>
	<a href="">Birthday Parties</a>
	<a href="{$obj->mLinkToMembership}">Memberships</a>
	<a href="{$obj->mLinkToEtiquette}">Etiquette</a>
</p>
