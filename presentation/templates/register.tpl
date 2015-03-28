{load_presentation_object filename="register" assign="obj"}
<div class="panel panel-primary">
	<div class=panel-heading>
		<h1 style="color:white;">
			Members currently registered in classes
		</h1>
	</div>
	<div class="panel-body table-responsive">
		<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr><th>Name</th><th>Class Title</th><th>Weekday & time</th><th>Class Type</th><th>Start Date</th><th>End Date</th></tr>
		</thead>
		<tbody>
			{section name=i loop=$obj->mRegistration}
				<tr><td>{$obj->mRegistration[ i ].first} {$obj->mRegistration[ i ].last}</td><td>{$obj->mRegistration[ i ].title }</td><td>{$obj->mRegistration[ i ].weekday}s @ {date( 'g:ia', strtotime( $obj->mRegistration[ i ].start_time ) )}</td><td>{$obj->mTypes[ $obj->mRegistration[ i ].types ]}</td><td>{date( 'D. M. jS, Y', strtotime( $obj->mRegistration[ i ].begin ) )}</td><td>{date( 'D. M. jS, Y', strtotime( $obj->mRegistration[ i ].end ) )}</td></tr>
			{/section}
		</tbody>
		</table>
	</div>
</div>