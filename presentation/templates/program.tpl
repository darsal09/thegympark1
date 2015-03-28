{load_presentation_object filename="program" assign="obj"}
<fieldset>
	<legend><h1><i>program:</i> {$obj->mProgram.title}</h1></legend>
	
<p style="clear:both;">&nbsp;</p>
		{if $obj->mProgram.description != ""}
			<p>
				Description:<br/>
				{$obj->mProgram.description}
			</p>
		{/if}
	{include file="program_featured_classes.tpl"}
</fieldset>