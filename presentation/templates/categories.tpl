{load_presentation_object filename="categories" assign="obj"}
{if $obj->mCategoriesAmount > 0 }
	<h2>Programs</h2>
	
	{if $obj->mShowAll}
		{section name=i loop=$obj->mCategories}
			<p><a href="{$obj->mCategories[ i ].category_link}">{$obj->mCategories[ i ].title} &raquo;</a></p>
		{sectionelse}
			<p>There are no categories</p>
		{/section}
	{else}
		<p><strong>{$obj->mCategories.title}</strong></p>
		<p><a href="{$obj->mCategories.show_all_link}">Show All &raquo;</a></p>
	{/if}
{/if}