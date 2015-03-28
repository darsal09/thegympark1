{load_presentation_object filename="gold" assign="obj"}
<h1>{$obj->mMembership.title} Plan</h1>
<p>This membership plan includes:</p>
<p>
	{section name=i loop=$obj->mAttributes}
		{$obj->mAttributes[ i ].title}<br/>
	{/section}
</p>
<p>
	You have the following options to choose one from:
</p>
<p>
	{section name=i loop=$obj->mOptions}
		{$obj->mOptions[ i ].title}
	{/section}
</p>