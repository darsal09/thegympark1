{load_presentation_object filename="addNewsletterCategory" assign="obj"}
<fieldset>
	<legend>
		<h1>
			{if $obj->mCategoryID == 0}
				Add Newsletter Category
			{else}
				Edit Newsletter Category
			{/if}
		</h1>
	</legend>

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
	<form method=post>
		<p>
			<label>Title</label><br/>
			<input type=text name=tgp_newsletter_category_title value="{$obj->mTitle}">
		</p>
		<p>
			<label>Filters</label><br/>
			<select name=tgp_category_filter_id>
				<option value="">Choose Filter</option>
				{section name=i loop=$obj->mFilters}
					<option value="{$obj->mFilters[ i ].id}">{$obj->mFilters[ i ].title}</option>
				{/section}
			</select>
			<span style="float:right;">
				<a href="{$obj->mLinkToNewFilter}">Add New Filter&raquo;</a>
			</span>
		</p>
		<p>
			<label>Description</label><br/>
			<textarea name=tgp_newsletter_category_description>{$obj->mDesc}</textarea>
		</p>
		<p>
			<input type=submit name=tgp_newsletter_category_save value="Save Newsletter Category&raquo;">
		</p>
	</form>
</fieldset>