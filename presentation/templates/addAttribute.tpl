{load_presentation_object filename="addAttribute" assign="obj"}
<h1>Add Attribute for {$obj->mMembership.title}</h1>
<p align=right><a href="{$obj->mLinkToFeature}">Add feature&raquo;</a></p>
<form method=post action="{$obj->mLinkToAddAttribute}">
	<p>
		<label>Select Feature(s)</label><br/>
			{section name=i loop=$obj->mFeatures}
				<input type=checkbox name=tgp_attributes_options[] value="{$obj->mFeatures[ i ].id}">{$obj->mFeatures[ i ].title}</option><br/>
			{/section}
	</p>
	<p>
		<input type=submit name=tgp_membership_add_attributes value="Save Attribute&raquo;">
	</p>
</form>