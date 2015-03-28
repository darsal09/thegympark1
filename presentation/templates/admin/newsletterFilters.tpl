{load_presentation_object filename="newsletterFilters" assign="obj"}
	<p>
		{section name=i loop=$obj->mMenu}
			<a href="{$obj->mMenu[ i ].link}" title="{$obj->mMenu[ i ].link_title}"
			{if isset( $obj->mMenu[ i ].target ) }
				target="{$obj->mMenu[ i ].target}"
			{/if}
			>&laquo;{$obj->mMenu[ i ].title}</a>
			{if ( $smarty.section.i.index + 1 ) < sizeof( $obj->mMenu ) }
				:: 
			{/if}	
		{/section}
	</p>
<h1 class=program_title>Newsletter Filters <span style="float:right;"><a href="{$obj->mLinkToAddFilter}">+Add Filter&raquo;</a></h1>

	<table width=100% cellpadding=0 cellspacing=0>
		<tr><th>Title</th><th>Description</th><th>Options</th></tr>
		{section name=i loop=$obj->mFilters}
			<tr><td>{( $smarty.section.i.index + 1 ) }. {$obj->mFilters[ i ].title}</td>
			{if $obj->mFilterID == $obj->mFilters[ i ].id}
				<form method=post>
				<td>
						<textarea class=mini name=tgp_filter_desc>{$obj->mFilters[ i ].description}</textarea>
				</td>
				<td align=right>
						<input type=submit name=tgp_filter_edit_save value="Save Changes">
				</td>
				</form>
			{else}
				<td>{$obj->mFilters[ i ].description}</td><td align=right><a href="{$obj->mFilters[ i ].link_to_edit}">Edit Description&raquo;</a></td></tr>
			{/if}
		{/section}
	</table>
</fieldset>