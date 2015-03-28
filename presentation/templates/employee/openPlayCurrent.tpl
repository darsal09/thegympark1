{load_presentation_object filename="openPlayCurrent" foldername=employee assign="obj"}
<ul class=breadcrumb>
	<li><a href="{$obj->mLinkToEmployee}">&laquo;Employee</a></li>
</ul>
		<div class=page-header>
			<h1>{$obj->mOpenPlay.title} <br/>
			<small >
				Current Date: {helper::setDateFormat( date( 'Y-m-d' ) )}
					<span class=pull-right style="margin-left:5px;">
						<a class="btn btn-default btn-danger" href="{$obj->mLinkToAddNewParticipant}">+Add New Participant</a>
					</span>	
					
					<span class="pull-right">
						<form method=post class=form-inline>
							<label for=search>Search Student By Name</label>
							<input type=text name=query value="">
							<input type=submit class="btn btn-default btn-primary" name=search value="Go&raquo;">
						</form>				
					</span>
			</small>
			</h1>
		</div>
	<div style="background:silver;padding:5px;">
		Take Attendance for <input type=text id=datepicker value="{date( 'm/d/Y' )}"> 
	</div>
	{if !empty( $obj->mResults ) }
			<div class="panel panel-default results">
				<div class=panel-heading><h1>Search Results</h1></div>
				<div class=panel-body>
					<table class="table table-responsive">
						<thead>
							<tr><th>#</th><th>ID</th><th>First Name</th><th>Last Name</th><th>Session(s)</th><th>Used</th><th>Left</th><th>Attendance</th></tr>
						</thead>
						<tbody>
							{section name=i loop=$obj->mResults}
								<tr><td>{$smarty.section.i.index + 1}.</td><td><a href="{$obj->mResults[ i ].link_info}">{$obj->mResults[ i ].id}</a></td><td>{$obj->mResults[ i ].first}</td><td> {$obj->mResults[ i ].last}</td>
								<td id="students-{$obj->mResults[ i ].id}_amount">
										{$obj->mResults[ i ].amount}
								</td><td id="students-{$obj->mResults[ i ].id}_used">
										{$obj->mResults[ i ].used}
									</td><td id="students-{$obj->mResults[ i ].id}_left">{$obj->mResults[ i ].leftPackages}</td>
								<td><a class="btn btn-default btn-success" href="{}">Take Attendance</a></td>
								</tr>
							{/section}
						</tbody>
					</table>
				</div>
			</div>
	{/if}
		<div class="panel panel-default">
			<div class=panel-heading><h1>Participants enrolled in Open Play</h1></div>
			<div class=panel-body>
				<ol class="breadcrumb">
					{if !empty( $obj->mLetter )}
						<li><a href="{$obj->mLinkToAll}">All</a></li>
					{/if}
					{section name=i loop=$obj->mLetters}
						<li><a href="{$obj->mLetters[ i ].link}">{$obj->mLetters[ i ].title}</a></li>
					{/section}
				</ol>
				<table class="table table-responsive">
					<thead>
						<tr><th>#</th><th>ID</th><th><a href="{$obj->mLinkToSortByFirstName}">First Name</a></th><th><a href="{$obj->mLinkToSortByLastName}">Last Name</a></th><th> <a href="{$obj->mLinkToSortByAmount}">Session(s)</a></th><th><a href="{$obj->mLinkToSortByUsed}">Used</a></th><th>Left</th><th>Attendance</th></tr>
					</thead>
					<tbody>
						{section name=i loop=$obj->mParticipants}
							<tr><td>{$smarty.section.i.index + 1 }.</td><td><a href="{$obj->mParticipants[ i ].link_info}">{$obj->mParticipants[ i ].id}</a></td><td>{$obj->mParticipants[ i ].first}</td><td> {$obj->mParticipants[ i ].last}</td>
							<td id="students-{$obj->mParticipants[ i ].id}_amount">{$obj->mParticipants[ i ].amount}</td>
							<td id="students-{$obj->mParticipants[ i ].id}_used">{$obj->mParticipants[ i ].used}</td>
							<td id="students-{$obj->mParticipants[ i ].id}_left">{$obj->mParticipants[ i ].leftPackages}</td>
							{if $obj->mParticipants[ i ].status == 'Pending'}
								<td colspan=2>
									<a class="btn btn-default btn-danger" href="{$obj->mParticipants[ i ].link_info}">Needs Payment</a>
								</td>
							{else}
								<td>
									<a class="btn btn-default btn-success" href="javascript:takeAttendance( {$obj->mParticipants[ i ].id}, {$obj->mParticipants[ i ].openPlayStudentID} );">Take Attendance</a>
								</td>
							{/if}
							</tr>
						{/section}
					</tbody>
				</table>
			</div>
	<div class="modal fade" id=addPackage tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="myModalLabel">Add Package To Student</h3>
							<p>Please select one of the following packages</p>
						</div>
						<div class=modal-content id=packages>
							
						</div>
					</div>
				</div>
	</div>
	
	
<script>
$( document ).ready( function ()
{
	$( 'A.packages' ).click( function( e)
	{	
		e.preventDefault();				
		$( '#addPackage' ).modal( 'show' );
		
		$.get( "{$obj->mLinkToGetPackages}",
			{
				id:this.id
			},
			function( data, status )
			{
				$( '#packages' ).html( data );
			});
	});
});

function takeAttendance( studentID, openPlayStudentID )
{
	var dates = $( '#datepicker' ).val();
	
	if( dates == "" )
		dates = "{date( 'm/d/Y' )}"
	
	$.post( "{$obj->mLinkToTakeAttendance}",
		{
			studentID:studentID,
			openPlayStudentID:openPlayStudentID,
			date: dates
		},
		function( data, status )
		{			
//			return alert( data );
			data = jQuery.parseJSON( data );
			
			alert( data.message );
			
		}
	);
}

function studentAddPackage( studentID, packageID, price, amount )
{
	$.post( "{$obj->mLinkToAddPackage}",
		{
			student_id:studentID,
			id:packageID,
			price:price,
			amount:amount,
		},
		function( data, status )
		{
			alert( data );
		});
}



</script>