{load_presentation_object filename="membership" assign="obj"}

<h1>{$obj->mMembership.title}</h1>
<a href="{$obj->mLinkToEdit}">Edit&raquo;</a><br/>
<a href="{$obj->mLinkToAddAttribute}">Add Feature&raquo;</a>
<p>
{section name=i loop=$obj->mAttributes}
<input type=checkbox name="" value=""> 
	{if $obj->mIsAdmin}
		<a href="{$obj->mAttributes[ i ].link_to_attribute}">{$obj->mAttributes[ i ].title}</a>
	{else}
		{$obj->mAttributes[ i ].title}
	{/if}
	<br/>
	
{/section}
</p>