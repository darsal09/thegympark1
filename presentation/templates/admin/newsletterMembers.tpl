{load_presentation_object filename="newsletterMembers" assign="obj"}
	<p>
		{section name=i loop=$obj->mMenu}
			<a href="{$obj->mMenu[ i ].link}" title="{$obj->mMenu[ i ].link_title}"
			{if isset( $obj->mMenu[ i ].target ) }
				target="{$obj->mMenu[ i ].target}"
			{/if}
			>&laquo;{$obj->mMenu[ i ].title}</a>
			{if ( $smarty.section.i.index + 1 ) < sizeof( $obj->mMenu ) }
				| 
			{/if}	
		{/section}
	</p>
<h1 class=program_title>Newsletter Members <span style="float:right;font-weight:normal;font-size:18px;">		<a href="{$obj->mLinkToAddMembersFromFile}">Add From File&raquo;</a> :: <a href="{$obj->mLinkToExistingMember}">Add Existing&raquo;</a> :: <a href="{$obj->mLinkToNewMember}">+Add New&raquo;</a></span></h1>
	<table style="width:100%" cellpadding=0 cellspacing=0>
	<tr><th>Member's Name</th><th>Options</th></tr>
	{section name=i loop=$obj->mMembers}
		<tr><td>{$obj->mMembers[ i ].uName}</td><td><a href="">Add To Category</a></td></tr>
	{sectionelse}
		<h3>No Members exist yet</h3>
	{/section}
	</table>
</fieldset>