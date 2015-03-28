{load_presentation_object filename="addNewsletter" assign="obj"}
<h1>Add Newsletter</h1>
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
	{if $obj->mNewsletterID > 0 }
		<input type=hidden name=tgp_newsletter_id value="{$obj->mNewsletterID}">
	{else}
		<input type=hidden name=tgp_newsletter_new value="N">
	{/if}
	<p>
		<label>Title</label><br/>
		<input type=text name=tgp_newsletter_title value="{$obj->mTitle}">
	</p>
	<p>
		<label>Newsletter Message</label><br/>
		<textarea id=tgp_newsletter_message class=tinymce name=tgp_newsletter_message>{$obj->mMessage}</textarea>
	</p>
</form>