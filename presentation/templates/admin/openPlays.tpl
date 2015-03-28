{load_presentation_object filename="openPlays" foldername=admin assign="obj"}
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a></li>
	{/section}
</ol>
	<div class="page-header">
		<h1>
			Open Plays			
			<span class=pull-right>
				<a class="btn btn-primary btn-lg" href="{$obj->mLinkToAddOpenPlay}">+Add Open Play&raquo;</a>
			</span>
		</h1>
	</div>

		<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">	
			{section name=i loop=$obj->mOpenPlays}
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="heading{$obj->mOpenPlay[ i ].id}">
						<h4>
							<a data-toggle="collapse" data-parent="#accordion" href="#collapse{$obj->mOpenPlays[ i ].id}" aria-expanded="true" aria-controls="collapseOne">
								{$obj->mOpenPlays[ i ].title}
							</a>
							<span class=pull-right>
								<a class="btn btn-success" href="{$obj->mOpenPlays[ i ].link_attendance}">Take Attendance&raquo;</a>
								<a class="btn btn-success" href="{$obj->mOpenPlays[ i ].link}">view&raquo;</a>
							</span>
						</h4>
					</div>
					<div id="collapse{$obj->mOpenPlays[ i ].id}" class="panel-collapse collapse out" role="tabpanel" aria-labelledby="heading{$obj->mOpenPlays[ i ].id}">
						<div class="panel-body">
							{section name=j loop=$obj->mOpenPlays[ i ].classes}
									<div class=col-md-2><a class=list-group-item href="{$obj->mOpenPlays[ i ].classes[ j ].link}">{substr( $obj->mOpenPlays[ i  ].classes[ j ].weekday, 0, 3 )} {date( 'g:ia', strtotime( $obj->mOpenPlays[ i ].classes[ j ].start_time ) )}&raquo;</a></div>
							{/section}
						</div>
					</div>
				</div>
			{/section}
		</div>