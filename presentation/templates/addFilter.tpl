{load_presentation_object filename="addFilter" assign="obj"}
<fieldset>
	<legend><h1>Add Filter</h1></legend>
	{if !empty( $obj->mResult ) }
		<p class=action>
			{$obj->mResult}
		</p>
	{/if}
	<form method=post>
		<p>
			<label>Title</label><br/>
			<input type=text name=tgp_filter_title value="">
		</p>
		<p>
			<label>Description</label><br/>
			<textarea name=tgp_filter_desc></textarea>
		</p>
		<p>
			<input type=submit name=tgp_filter_save value="Save Filter&raquo;">
		</p>
	</form>
</fieldset>