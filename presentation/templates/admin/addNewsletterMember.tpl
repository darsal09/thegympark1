{load_presentation_object filename="addNewsletterMember" assign="obj"}
<h1>Add New Member To Newsletter</h1>
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
		<label>Name</label></br>
		<input type=text name=tgp_newsletter_member_name value="{$obj->mName}">
	</p>
	<p>
		<label>Email</label></br>
		<input type=text name=tgp_newsletter_member_email value="{$obj->mEmail}">
	</p>
	<p>
		<input type=submit name=tgp_newsletter_member_save value="Save Member &raquo;">
	</p>
</form>