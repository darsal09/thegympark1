{load_presentation_object filename="programs" foldername=admin assign="obj"}
<div class=page-header>
	<h1>
	Programs
	<small><a class="pull-right btn btn-primary btn-lg" href="{$obj->mLinkToAddProgram}">Add Program &raquo;</a></small>
	</h1>
</div>
	
	{section name=i loop=$obj->mPrograms}
		<div class=col-md-2 style="background-color:silver;margin:5px;padding:10px;"><a href="{$obj->mPrograms[ i ].program_link }">{$obj->mPrograms[ i ].title} &raquo;</a></div>
	{sectionelse}
		<p>There are no programs available</p>
	{/section}