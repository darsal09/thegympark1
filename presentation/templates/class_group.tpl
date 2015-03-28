{load_presentation_object filename="classGroup" assign="obj"}
<div class=page-header>
	<h1>{$obj->mClassTitle.title}<br/><small>For <span>{$obj->mClassTitle.age_group}</span></small></h1>
</div>
	<div class="panel panel-default">
		<div class=panel-heading>
			<h1>Classes</h1>
		</div>
		<div class=panel-body>
					{section name=i loop=$obj->mWeek}
						{if sizeof( $obj->mWeek[ i ] ) > 1}
							<li class=list-group-item>
								<div class=row>
									<div class=col-md-1 style="margin:5px;">
										<h4>{$obj->mWeek[ i ].weekdays}</h4>
									</div>
										{section name=j loop=$obj->mWeek[ i ]}
											{if isset( $obj->mWeek[ i ][ j ] ) }
												<div class=col-md-1><a class="btn btn-lg" href="{$obj->mWeek[ i ][ j ].link_to_class}">{$obj->mWeek[ i ][ j ].start_time}&raquo;</a></div>
											{/if}
										{/section}
								</div>
							</li>
						{/if}
					{sectionelse}
						<p>There are no times schedule for the week this season. The times will be set soon and when they are set we will email you the possible times you can come for the class.
					{/section}

			{if $obj->mClassTitle.type == "Flexible"}
				<form method=post>
					<p>
						Buying one of the packages below lets you visit any of the class times shown above. We provide you with the following packages for your convinience. To register for this group of classes please select your package below:
					</p>
					<p>
							<p><b>Individual Packages</b></p>
							{section name=i loop=$obj->mClassPackagesIndividual}
								<input type=checkbox name=tgp_class_group_package[] value="Individual__{$obj->mClassPackagesIndividual[ i ].price}__{$obj->mClassPackagesIndividual[ i ].title}"> {$obj->mClassPackagesIndividual[ i ].title} for <b>${$obj->mClassPackagesIndividual[ i ].price}</b><br/>
							{/section}
							
							<p><b>Family Packages</b></p>
							
							{section name=i loop=$obj->mClassPackagesFamily}
								<input type=checkbox name=tgp_class_group_package[] value="Family__{$obj->mClassPackagesFamily[ i ].price}__{$obj->mClassPackagesFamily[ i ].title}"> {$obj->mClassPackagesFamily[ i ].title} for <b>${$obj->mClassPackagesFamily[ i ].price}</b><br/>
							{/section}
					</p>
					<p>
						<input type=submit class="btn btn-default btn-primary btn-lg" name=tgp_class_group_register value="Register &raquo;"> 
					</p>
				</form>
			{/if}
		</div>
	</div>