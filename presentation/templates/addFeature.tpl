{load_presentation_object filename="addFeature" assign="obj"}
<h1>Add Feature</h1>
<form method=post action="{$obj->mLinkToAddFeature}">
	<p>
		<label>Title</label><br/>
		<input type=text name=tgp_feature_title>
	</p>
	<p>
		<label>Quantity</label><br/>
		<input type=text name=tgp_feature_quantity>
	</p>
	<p>
		<input type=submit name=tgp_feature_save value="Save Feature&raquo;">
	</p>
</form>