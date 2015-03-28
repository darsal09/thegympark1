{load_presentation_object filename="newsletter" foldername="admin" assign="obj"}
<div class=page-header>
	<h1>
		{$obj->mNewsletter.title}
		<small class=pull-right>
			<a class="btn btn-default btn-warning btn-lg" href="{$obj->mNewsletter.link_to_edit}">Edit</a>
			<a class="btn btn-default btn-primary btn-lg" href="http://www.thegympark.com/TheGymParkSystem/newsletter.php?tgp_newsletter_id={$obj->mNewsletter.newsletter_id}" target="_blank">New window</a>
		</small>
	</h1>
</div>
	<form method=post>
		<p>
			<label>Subject</label><br/>
			<input type=text name=tgp_newsletter_subject value="">
		</p>
		<p>
			<label>Filters</label><br/>
			<select name=tgp_newsletter_filter onChange="printOptions( this.value );">
				<option value="">select a filter</option>
				{section name=i loop=$obj->mFilters}
					<option value="{$obj->mFilters[ i ].title}"> {$obj->mFilters[ i ].title}</option>
				{/section}
			</select>
		</p>

		<div id=options>
		</div>
		
		<p>&nbsp;</p>
		<p>The newsletter below will be sent: </p>
		<div style="border:1px solid black;">
			{$obj->mNewsletter.message}
		</div>
		<p>&nbsp;</p>
		<p>
			<input class="btn btn-default btn-primary btn-lg" type=submit name="tgp_newsletter_send" value="Send Newsletter&raquo;">
		</p>
	</form>
</fieldset>