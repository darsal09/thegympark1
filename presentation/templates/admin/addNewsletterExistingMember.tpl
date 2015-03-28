{load_presentation_object filename="addNewsletterExistingMember" assign="obj"}
<h1>Add Existing Member To Newsletter</h1>
<p align=right>
	<a href="{$obj->mLinkToNewsletters}">Newsletters</a> :: 
	<a href="{$obj->mLinkToNewsletterMembers}">Newsletter Members</a>
</p>
{if sizeof( $obj->mMembers ) > 0 }
	<form method=post>
	{section name=i loop=$obj->mMembers}
		<p><input type=checkbox name=tgp_newsletter_new_members[] value="{$obj->mMembers[ i ].id}"> {$obj->mMembers[ i ].uName}</p>
	{/section}
	<p>
		<input type=submit name=tgp_newsletter_new_members_add value="Save Members &raquo;">
	</p>
	</form>
{else}
	<p>There are no members available</p>
	<p><a href="{$obj->mLinkToAddNewMember}">Add new member&raquo;</a></p>
{/if}