{load_presentation_object filename="openPlayClassAttendance" assign="obj"}
<div class="panel panel-default">
	<div class=panel-heading><h1>Open Play Attendance</h1></div>
	<div class=panel-body>
		{$obj->mClass.weekday}, {date( 'F jS, Y', strtotime( $obj->mClassDate ) )} at {date( 'g:ia', strtotime( $obj->mClass.start_time ) )}
	</div>
	<div class=panel-footer>
		{if sizeof( $obj->mStudents) > 0 }
			<form method=post>
				<table>
				<tr><th>Name</th><th>Attendance</th></tr>
				{section name=i loop=$obj->mStudents}
					{if $obj->mStudents[ i ].amount > $obj->mStudents[ i ].used}
						<tr><td>{$obj->mStudents[ i ].first} {$obj->mStudents[ i ].last} ({($obj->mStudents[ i ].amount - $obj->mStudents[ i ].used)})</td><td><input type=checkbox name=attendance[] value={$obj->mStudents[ i ].id}></td></tr>
					{/if}
				{/section}
				</table>
				<p>
					<input type=submit class="btn btn-default btn-primary" name=save_openplay_attendance value="Add Attendance&raquo;">
				</p>
			</form>
		{else}
			<p>There are no participants with classes left for this open play. <a class="btn btn-default btn-warning" href="{$obj->mLinkToOpenPlay}">Open Play Page</a></p>
		{/if}
	</div>
</div>