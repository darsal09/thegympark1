{load_presentation_object filename="addExistingParticipant" assign="obj"}
<p>
	<a href="{$obj->mLinkBackToClass}">Back to Class</a><br/>
	{section name=i loop=$obj->mLinks}
		<a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a>
	{/section}
</p>
<p>
Filter First Names Starting With: &nbsp;
{if $obj->mLetter != ''}
	<a style="font-weight:bold;" href="{$obj->mLinkToAll}">All</a> &nbsp; | &nbsp;
{/if}
{section name=i loop=$obj->mFilters}
	<a style="font-weight:bold;" href="{$obj->mFilters[ i ].link}">{$obj->mFilters[ i ].letter}</a> &nbsp; | &nbsp;
{/section}
</p>
<form method=post>
<p>
	{section name=i loop=$obj->mParticipants}
		<input type=checkbox name="tgp_existing_participants[]" value="{$obj->mParticipants[ i ].id}"><a href="{$obj->mParticipants[ i ].link}">{$obj->mParticipants[ i ].name}</a><br/>
	{/section}
</p>	
	<p>
		<input type=submit name=tgp_class_add_existing_participants value="Add To Class&raquo;">
	</p>
</form>
