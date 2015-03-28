{load_presentation_object filename="availableMemberships" assign="obj"}
<h2>Memberships</h2>
{if $obj->mIsAdmin}
	<p align=right><a href="{$obj->mLinkToAddMembership}">Add Membership&raquo;</a></p>
{/if}
{section name=i loop=$obj->mMemberships}
	<p><a href="{$obj->mMemberships[ i ].membership_link}">{$obj->mMemberships[ i ].title}&raquo;</a>
{/section}