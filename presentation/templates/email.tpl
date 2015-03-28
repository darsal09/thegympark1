{load_presentation_object filename="email" assign="obj"}
	<ol class=breadcrumb>
		{section name=i loop=$obj->mMenu}
			<li><a href="{$obj->mMenu[ i ].link}">&laquo;{$obj->mMenu[ i ].title}</a></li>
		{/section}
	</ol>
    <div class="page-header">
		<h1 class=program_title>Emailing</h1>
	</div>

<form method=post role="form">
	<p>
		<label>Subject</label><br/>
		<input type=text name=tgp_email_subject>
	</p>
	{if !$obj->mSkip}
		<p>
			<label>Filters</label><br/>
			<select name=tgp_email_filters onChange="printOptions( this.value, '{$obj->mAddress}' );">
				<option value="">Select a filter</option>
				{section name=i loop=$obj->mFilters}
					<option value="{$obj->mFilters[ i ].title}">{$obj->mFilters[ i ].title}</option>
				{/section}
			</select>	
		</p>
	
		<div id=options></div>
	{else}
		<input type=hidden name=tgp_email_filters value="{$obj->mType}">
		<input type=hidden name={$obj->mName}[] value="{$obj->mValue}">
	{/if}
	
	<p>&nbsp;</p>
	<p>
		<label>Body</label><br/>
		<textarea class="tinymce form-control" id=tgp_email_message name=tgp_email_message></textarea>
	</p>
	<p>
		<input type=submit name=tgp_email_send value="Send Email">
	</p>
</form>