{load_presentation_object filename="removeNewsletterCategoryMember" assign="obj"}

<h1>Removing member from newsletter category</h1>
<p align=right>
	{section name=i loop=$obj->mMenu}
		<a href="{$obj->mMenu[ i ].link}" title="{$obj->mMenu[ i ].link_title}"
		{if isset( $obj->mMenu[ i ].target )}
			target="{$obj->mMenu[ i ].target}"
		{/if}
		>{$obj->mMenu[ i ].title}</a>
		{if ($smarty.section.i.index + 1 ) < sizeof( $obj->mMenu )}
			::
		{/if}
	{/section}
</p>
<p>&nbsp;</p>
<div class=action>
	<p>
		Are you sure you want to remove <b><i>{$obj->mMember[ 'uName' ]}</i></b> from category, <b>{$obj->mCategory[ 'title' ]}</b>?
	</p>
	<form method=post>
	<p>
		<input type=radio name=tgp_newsletter_remove_member_option value="Y"> Yes<br/>
		<input type=radio name=tgp_newsletter_remove_member_option value="N"> No<br/>
	</p>
	<p>
		<input type=submit name=tgp_newsletter_remove_category_member value="Remove Member from Category">
	</p>
	</form>
</div>