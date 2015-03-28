{load_presentation_object filename="quickLinks" assign="obj"}
{if $obj->mQuickLinksAmount > 0}
	<h2>Similar Classes</h2>

	{section name=i loop=$obj->mQuickLinksContent}
		{if $obj->mQuickLinkClicked == $obj->mQuickLinksContent[ i ].class_id}
			<p>{$obj->mQuickLinksContent[ i ].weekday}'s {$obj->mQuickLinksContent[ i ].start_time} {$obj->mQuickLinksContent[ i ].title}</p>
		{else}		
			<p><a href="{$obj->mQuickLinksContent[ i ].class_link}">{$obj->mQuickLinksContent[ i ].weekday}'s {$obj->mQuickLinksContent[ i ].start_time} {$obj->mQuickLinksContent[ i ].title} &raquo;</a></p>
		{/if}
	{sectionelse}
		<p>There are no classes related to this program</p>
	{/section}
{/if}