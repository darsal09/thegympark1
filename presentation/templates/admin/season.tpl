{load_presentation_object filename="season" foldername=admin assign="obj"}
<div class=page-header>
	<h1>{$obj->mSeason.title} {$obj->mSeason.year}</h1>
</div>
<ul class=list-group>
	{section name=i loop=$obj->mClasses}
		<li class=list-group-item>
			{$obj->mClasses[ i ].title} <br/>
			{$obj->mClasses[ i ].weekday} - {helper::getTimeFormat( $obj->mClasses[ i ].start_time )}
		</li>
	{/section}
</ul>