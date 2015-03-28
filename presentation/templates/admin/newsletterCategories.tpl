{load_presentation_object filename="newsletterCategories" foldername="admin" assign="obj"}
<fieldset>
	<legend><h1>Newsletter Categories</h1></legend>
	<p align=right>
		{section name=i loop=$obj->mMenu}
			<a href="{$obj->mMenu[ i ].link}" title="{$obj->mMenu[ i ].link_title}"
				{if isset( $obj->mMenu[ i ].target ) }
					target="{$obj->mMenu[ i ].target}"
				{/if}
			>{$obj->mMenu[ i ].title}</a>
			{if ( $smarty.section.i.index + 1 ) < sizeof( $obj->mMenu )}
				:: 
			{/if}
		{/section}
	</p>
	{if ( sizeof( $obj->mCategories ) > 0 )}
		<table style="width:100%;" cellpadding=0 cellspacing=0>
		<tr><th>Title</th><th>Options</th></tr>
	{/if}

	{section name=i loop=$obj->mCategories}
		<tr>
			<td><a href="{$obj->mCategories[ i ].link_to_view_category}">{$obj->mCategories[ i ].title}</a></td>
			<td>
				<a href="{$obj->mCategories[ i ].link_to_delete_category}">Delete</a> :: 
				<a href="{$obj->mCategories[ i ].link_to_edit_category}">Edit</a> :: 
				<a href="{$obj->mCategories[ i ].link_to_add_category_new_user}">Add New User</a> :: 
				<a href="{$obj->mCategories[ i ].link_to_add_category_existing_user}">Add Existing Users</a></td></tr>
	{sectionelse}
		<h3>No Categories yet</h3>
	{/section}
	</table>
</fieldset>