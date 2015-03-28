{load_presentation_object filename="publicOpenPlay" assign="obj"}
<div class="panel panel-default">
	<div class="panel-heading">
		<h1>{$obj->mClassTitle.title} <small>for {$obj->mClassTitle.age_group} old</small></h1>
	</div>
	<div class="panel-body">
		<p>
			The classes below are classes that you can attend during the week, when you register for open play. Available classes for participants ages {$obj->mClassTitle.age_group} old
		</p>			
		<h3>Available Classes</h3>
		{section name=i loop=$obj->mWeek}	
			{if sizeof( $obj->mWeek[ i ] ) > 1}
				<div class=row>
					<div class=col-md-2>
						<strong>{$obj->mWeek[ i ].weekdays}: </strong>
					</div>
					<div class=col-md-10>
						{section name=j loop=$obj->mWeek[ i ]}
							{if isset( $obj->mWeek[ i ][ j ] ) }
								&nbsp; <a href="{$obj->mWeek[ i ][ j ].link_to_class}">{$obj->mWeek[ i ][ j ].start_time}&raquo;</a>&nbsp;
							{/if}
						{/section}
					</div>
				</div>
			{/if}
		{sectionelse}
			<p>There are no times schedule for the week this season. The times will be set soon and when they are set we will email you the possible times you can come for the class.
		{/section}
	</div>
	<div class="panel-footer">
		<p>
			Buying one of the packages below lets you visit any of the class times shown above. We provide you with the following packages for your convinience. To register for this group of classes please select your package below:
		</p>
						<div class=page-header>
							<h3>Individual Packages</h3>
						</div>
					<ul class=list-group>
						{section name=i loop=$obj->mClassPackagesIndividual}
							<a class=list-group-item href="{$obj->mClassPackagesIndividual[ i ]->getLink()}"> {$obj->mClassPackagesIndividual[ i ]->getTitle()} for <b>${$obj->mClassPackagesIndividual[ i ]->getPrice()}</b></a>
						{/section}
					</ul>
						<div class=page-header>
							<h3>Family Packages</h3>
						</div>
						
					<ul class=list-group>
						{section name=i loop=$obj->mClassPackagesFamily}
							<a class=list-group-item href="{$obj->mClassPackagesFamily[ i ]->getLink()}"> {$obj->mClassPackagesFamily[ i ]->getTitle()} for <b>${$obj->mClassPackagesFamily[ i ]->getPrice()}</b></a>
						{/section}
					</ul>
	</div>
</div>