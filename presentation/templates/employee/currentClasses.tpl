{load_presentation_object filename="currentClasses" foldername="employee" assign="obj"}
<div class=page-header>
	<h1>
		{$obj->mSeason.season} {$obj->mSeason.year}<br/>
		<small>From: {helper::getDateWithoutDay( $obj->mSeason.start_date )}<br/>
			To: {helper::getDateWithoutDay( $obj->mSeason.end_date )}</small>
	</h1>
</div>
<div class=row>
	<div class=col-md-7>
		<div class="panel panel-default">
			<div class=panel-heading>
				<h1>Classes</h1>
			</div>
			<div class=panel-body>
				<ul class=list-group>
							{section name=i loop=$obj->mClasses}
								<li class=list-group-item id="{$obj->mClasses[ i ].class_id}">
									<div class=row>
										<div class=col-md-6><a href="{$obj->mClasses[ i ].link}">{$obj->mClasses[ i ].title}</a><br/>{$obj->mClasses[ i ].weekday} {helper::getTimeFormat( $obj->mClasses[ i ].start_time )}</div>
										<div class=col-md-3>
											<a class="btn btn-default btn-success takeAttendance" id="{$obj->mClasses[ i ].class_id}" href="">Take Attendance</a>
										</div>
									</div>
								</li>
							{/section}
				</ul>
			</div>
		</div>
	</div>
	<div class=col-md-5>
		
	</div>
</div>
<script>
$( document ).ready( function()
{
	
	$( '.takeAttendance' ).click( function( e )
	{			
		e.preventDefault();
		var id = this.id;
		
		$.get( "{$obj->mLinkToGetClassStudents}",
			{
				class_id:id
			},
			function ( data, status )
			{
			//	return alert( data );
				data = jQuery.parseJSON( data );
				
				if( data.length == 0 )
					return alert( 'No Students in the class' );
				alert( data.class_id );
			} );
	} );	
});

</script>