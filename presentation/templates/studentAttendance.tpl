{load_presentation_object filename="studentAttendance" assign="obj"}
<div class="panel-group" id="accordion">
	{section name=i loop=$obj->mAttendance}
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#class_{$smarty.section.i.index}">{$obj->mAttendance[ i ].title}</a></h4>
			</div>
			<div id="class_{$smarty.section.i.index}" class="panel-collapse collapse {if $smarty.section.i.index == 0}in{/if}">
					<div class="panel-body">		
						{section name=j loop=$obj->mAttendance[ i ][ 'dates' ]}
							<div class=col-sm-2>{$obj->mAttendance[ i ][ 'dates' ][ j  ].date} <br/> {$obj->mAttendance[ i ][ 'dates' ][ j ].attended}</div>
						{/section}
					</div>
			</div>
		</div>
	{/section}
</div>