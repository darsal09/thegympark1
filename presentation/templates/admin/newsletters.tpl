{load_presentation_object filename="newslettersInfo" foldername=admin assign="obj"}
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a></li>
	{/section}
</ol>
<div class=page-header>
	<h1>Newsletters
		<small>
		<span class=pull-right>
			{section name=i loop=$obj->mMenu}
				<a class="btn btn-default btn-success btn-lg" href="{$obj->mMenu[ i ].link}" title="{$obj->mMenu[ i ].link_title}"
				{if isset( $obj->mMenu[ i ].target ) }
					target="{$obj->mMenu[ i ].target}"
				{/if}
				>{$obj->mMenu[ i ].title}</a> 
			{/section}
		</span>
		</small>
	</h1>
</div>

	<table style="width:100%;" cellpadding=0 cellspacing=0>
	<tr><th>Title</th><th>Options</th></tr>
	{section name=i loop=$obj->mNewsletters}
	<tr><td>{( $smarty.section.i.index + 1 )}. <a href="{$obj->mNewsletters[ i ].link_to_newsletter}">{$obj->mNewsletters[ i ].title}</a></td><td align=right><a href="{$obj->mNewsletters[ i ].link_to_edit_newsletter}">Edit</a> :: <a href="{$obj->mNewsletters[ i ].link_to_send_newsletter}">Send</a></td></tr>
	{/section}
	</table>
</fieldset>