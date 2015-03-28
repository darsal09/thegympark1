{load_presentation_object filename="deleteNewsletterCategory" assign="obj"}
<h1>Deleting Newsletter Category</h1>
<p align=right>
	{section name=i loop=$obj->mMenu}
		<a href="{$obj->mMenu[ i ].link}" title="{$obj->mMenu[ i ].link_title}"
			{if isset( $obj->mMenu[ i ].target ) }
				target="{$obj->mMenu[ i ].target}"
			{/if}
		>{$obj->mMenu[ i ].title}</a>
		{if ( $smarty.section.i.index + 1 ) < sizeof( $obj->mMenu ) }
			::
		{/if}
	{/section}
</p>
<div class=action>
	{if $obj->mCanDelete}
		<p>
			Are you sure you want to delete category, {$obj->mCategory.title}, from the newsletter?
		</p>
		<form method=post>
		<p>
			<input type=radio name=tgp_newsletter_delete_category_option value="Y"> Yes<br/>
			<input type=radio name=tgp_newsletter_delete_category_option value="N"> No<br/>
		</p>
		<p>
			<input type=submit name=tgp_newsletter_delete_category value="Delete category from newsletter&raquo;">
		</p>
		</form>
	{else}
		<p>
			The category, <b>{$obj->mCategory.title}</b>, cannot be deleted because it has members assigned to it.
		</p>
	{/if}
</div>