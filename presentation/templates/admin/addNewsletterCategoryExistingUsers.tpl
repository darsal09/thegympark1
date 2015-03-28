{load_presentation_object filename="addNewsletterCategoryExistingUsers" assign="obj"}
<h1>Add Existing Users to category: <br/>{$obj->mCategory.title}</h1>
<p align=right>
	{section name=i loop=$obj->mMenu}
		<a href="{$obj->mMenu[ i ].link}" title="{$obj->mMenu[ i ].link_title}"
			{if isset( $obj->mMenu[ i ].target )}
				target="{$obj->mMenu[ i ].target}"
			{/if}
		>{$obj->mMenu[ i ].title}</a>
		
		{if ( $smarty.section.i.index + 1 ) < sizeof( $obj->mMenu ) }
			:: 
		{/if}
	{/section}
</p>
<p>&nbsp;</p>
<fieldset>
	<legend><h3>Newsletter members not in this category</h3></legend>
	<p>
		<br/>
		The following members might exist in the newsletter system but are not included in this category. <br/>
		To add them to this category, <b><i>{$obj->mCategory.title}</i></b>, check up the names you want to include.		
	</p>
		<br/>
	<form method=post>
	<table width=100% cellpadding=0 cellspacing=0>
		<tr><th>Name</th><th>Email</th></tr>
		{section name=i loop=$obj->mMembers}
			<tr><td><input type=checkbox name=tgp_newsletter_category_existing_users[] value="{$obj->mMembers[ i ].id}"> {$obj->mMembers[ i ].uName} </td><td>{$obj->mMembers[ i ].uEmail}</td></tr>
		{sectionelse}
			<h3>There are no available users!</h3>
		{/section}
		<tr><td colspan=2>	
			<p>
				<input type=submit name=tgp_newsletter_category_existing_users_save value="Add Members To Category &raquo;">
			</p>
		</td></tr>
	</table>
	</form>
</fieldset>
<p>&nbsp;</p>

<fieldset>
	<legend><h3>Members in the category</h3></legend>
	{if sizeof( $obj->mExistingMembers ) > 0 }
		<p>
			<br/>
			These members are in this category, <b><i>{$obj->mCategory.title}</i></b>. 
			<br/>To remove a member from this category click on remove. 
			<br/>To remove more than one member at a time click on the checkbox and click on remove on the bottom
		</p>
		<br/>
		<table width=100% cellpadding=0 cellspacing=0>
		<tr><th>Name</th><th>Email</th><th>Options</th></tr>
	{/if}
	{section name=i loop=$obj->mExistingMembers}
		<tr><td><input type=checkbox name=tgp_newsletter_category_existing_users_remove[] value="{$obj->mExistingMembers[ i ].id}"> {$obj->mExistingMembers[ i ].uName}</td><td>{$obj->mExistingMembers[ i ].uEmail}</td><td><a href="">remove</a></td></tr>
	{sectionelse}
		<p>There are no members in this category yet</p>
	{/section}
	{if sizeof( $obj->mExistingMembers ) > 0}
		<tr>
			<td colspan=3>
				<p><input type=submit value="Remove selected Members&raquo;"></p>
			</td>
		</tr>
		</table>
	{/if}
</fieldset>