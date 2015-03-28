{load_presentation_object filename="newsletterCategory" foldername="admin" assign="obj"}
<h1>{$obj->mCategory.title}</h1>
<p align=right>
	{section name=i loop=$obj->mMenu}
		<a href="{$obj->mMenu[ i ].link}" title="{$obj->mMenu[ i ].link_title}">{$obj->mMenu[ i ].title}</a> 
		
		{if ( $smarty.section.i.index + 1 ) < sizeof( $obj->mMenu ) }
			 ::  
		{/if}
	{/section}
</p>

<table width=100% cellpadding=0 cellspacing=0>
	<tr><th>Name</th><th>Email</th><th>Options</th></tr>
	{section name=i loop=$obj->mCategory.members}
		<tr><td><a href="{$obj->mCategory.members[ i ].link_to_member}">{$obj->mCategory.members[ i ].uName}</a></td><td>{$obj->mCategory.members[ i ].uEmail}</td><td><a href="{$obj->mCategory.members[ i ].link_to_remove}" title="remove member from category">Remove&raquo;</a> </td></tr>
	{sectionelse}
		<h3>No members in this category</h3>
	{/section}
</table>
