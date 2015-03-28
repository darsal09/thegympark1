{load_presentation_object filename="studentClasses" foldername=admin assign="obj"}

<div class=classes>
	<h3 class=program_title>
			Class(es) &nbsp;
			<span style="float:right;"><a href="{$obj->mLinkToAddClass}" title="add class to student"><span class="glyphicon glyphicon-plus"></span></a></span>
	</h3>
	{section name=i loop=$obj->mClasses}
		<p {if $smarty.section.i.index % 2 == 0 }
			class=classeven
			{/if}
		><span style="float:right;"><a href="{$obj->mClasses[ i ].link_to_remove}" title="remove student from this class"><span class="glyphicon glyphicon-remove"></span></a><br/><a href="{$obj->mClasses[ i ].move}" title="Click to move kid from this class to another"><img src="{Link::Build( 'images' )}/move.png"></a></span><a href="{$obj->mClasses[ i ].link_to_class}"><b>{$obj->mClasses[ i ].title}</b> for {$obj->mClasses[ i ].age_group}<br/>{substr( $obj->mClasses[ i ].weekday, 0, 3 )} {$obj->mClasses[ i ].start_time}</a></p>
	{sectionelse}
		<p>This participant doesn't have classes yet!</p>
	{/section}
</div>