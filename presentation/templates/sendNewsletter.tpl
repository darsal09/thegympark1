{load_presentation_object filename="sendNewsletter" assign="obj"}
<h1>Send Newsletter</h1>
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
		<label>Subject</label><br/>
		<input type=text name=tgp_newsletter_subject>
	</p>
	<p>
		<label>Filters</label><br/>
		<select name=tgp_newsletter_filter onChange="printOptions( this.value );">
			<option value="">Select a filter</option>
			{section name=i loop=$obj->mFilters}
				<option value="{$obj->mFilters[ i ].title}">{$obj->mFilters[ i ].title}</option>
			{/section}
		</select>
	</p>
	
	<div id=options></div>
	<p>&nbsp;</p>
	
	<fieldset>
	
	{if $obj->mNewsletterID > 0}
		<input type=hidden name=tgp_newsletters_newsletter value="{$obj->mNewsletters.newsletter_id}"> 
		<legend><h3>The newsletter to be sent</h3></legend>
		<h1>{$obj->mNewsletters.title}</h1> 
		
		<p align=right>
			<a href="{$obj->mNewsletters.link_to_newsletter}" target="_blank"> View Newsletter&raquo;</a>
		</p>
		<p>
			Below is what the users will see:
		</p>
		<hr>
		<div>
			{$obj->mNewsletters.message}
		</div>
	{else}
			<legend><h3>Newsletters</h3></legend>
			<p>Choose a newsletter to send</p>
			<table width=100% cellpadding=0 cellspacing=0>
			<tr><th>Title</th><th>Options</th></tr>
			{section name=i loop=$obj->mNewsletters}
				<tr><td> <input type=radio name=tgp_newsletters_newsletter value="{$obj->mNewsletters[ i ].newsletter_id}"> {$obj->mNewsletters[ i ].title} </td><td><a href="{$obj->mNewsletters[ i ].link_to_newsletter}" target="_blank">View</a></td></tr>
			{/section}
			</table>
	{/if}
		</fieldset>
	<p>
		<input type=submit name=tgp_newsletters_send_newsletter value="Send Newsletter&raquo;">
	</p>	
</form>