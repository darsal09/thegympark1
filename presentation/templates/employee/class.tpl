{load_presentation_object filename="classController" foldername=employee assign="obj"}
<div class=page-header>
	<h1>
		{$obj->mClass.title}<br/>
		<small>
			dates: {helper::getDateWithoutDay($obj->mClass.start_date)} - {helper::getDateWithoutDay( $obj->mClass.end_date )}<br/>
			time: {helper::getTimeFormat( $obj->mClass.start_time)} - {helper::getTimeFormat( $obj->mClass.end_time )}<br/>
		</small>
	</h1>
</div>

<h2>Students</h2>
<div class=table-responsive>
	<table class=table>
		<thead>
			<tr>
				<th>#</th>
				<th>Name</th>
				{section name=i  loop=$obj->mWeeklyAttendance}
					<th style="font-weight:normal;font-size:12px;">{date( 'm/d', strtotime( $obj->mWeeklyAttendance[ i ].date ) )}</th>
				{/section}
			</tr>
		</thead>
		<tbody>
		{section name=i loop=$obj->mStudents}
			<tr>
				<td>{$smarty.section.i.index+1}.</td>
				<td>{$obj->mStudents[ i ].first} {$obj->mStudents[ i ].last}</td>
				{section name=j loop=$obj->mStudents[ i ].attendance}
					<td>		
						<input class=attendance type=checkbox  name="students[]" {if $obj->mStudents[ i ].attendance[ j ].attended} checked{/if} id="{$obj->mStudents[ i ].id}_{$obj->mStudents[ i ].attendance[ j ].date}" value="{$obj->mStudents[ i ].attendance[ j ].date}">
					</td>
				{/section}
			</tr>
		{/section}
		</tbody>
	</table>
</div>
<script>
$( document ).ready( function()
{
	$( '.attendance' ).click( function( e )
	{
		
//		alert( this.value );
//		return alert( this.id );
		
		var dates = this.value;
		var id = this.id;
		var studentID = id.substring( 0, id.indexOf( '_' ) );
		
		$.post( "{$obj->mLinkToTakeClassAttendance}",
			{
				classID:{$obj->mClassID},
				date:dates,
				studentID:studentID
			},
			function( data, status )
			{
				return alert( data );
				
//				data = jQuery.parseJSON( data );
				
				
			});
	});
});
</script>