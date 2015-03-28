{load_presentation_object filename="classInfo" foldername="admin" assign="obj"}
	<ol class=breadcrumb>
		{section name=i loop=$obj->mLinks}
			<li><a href="{$obj->mLinks[ i ].link}">&laquo;{$obj->mLinks[ i ].title}</a></li>
		{/section}
	</ol>
	<div class=page-header>
		<h1>Classes</h1>
	</div>
	<div class="panel panel-default">
		<div class=panel-heading>
			<h1>
				{$obj->mClassInfo.title}
				<small>
					{if !$obj->mIsEdit}
						<span class=pull-right>
						<form method=post>
								{if $obj->mClassInfo.type == "Flexible"}
									<input type=submit class=" btn btn-default btn-primary btn-lg" name=tgp_class_add_packages value="Add Package(s)">
								{/if}
								<a href="{$obj->mLinkToDelete}" id=classID_{$obj->mClassID} class="btn btn-default btn-danger btn-lg delete">Delete&raquo;</a> 
								<a href="{$obj->mLinkToEdit}" class="btn btn-default btn-warning btn-lg editClass">Edit&raquo</a> 
								<a class="btn btn-default btn-success btn-lg email" href="{$obj->mLinkToEmailClass}">Send Email&raquo;</a>
						</form>
						</span>
					{/if}
				</small>
			</h1>		
		</div>
		<div class=panel-body>
			{if !$obj->mIsEdit}
				<p>Age: <strong>{$obj->mClassInfo.age_group}</strong></p>
				<p>Day and Time: <strong>{$obj->mClassInfo.weekday}s</strong> <strong>{$obj->mClassInfo.start_time} - {$obj->mClassInfo.end_time}</strong></p>
				<p>Dates: <strong>{$obj->mClassInfo.start_date}  - {$obj->mClassInfo.end_date}</strong></p>
				
				{if sizeof( $obj->mHolidays ) > 0 }
					<p>
						Holidays: <b>
						{section name=i loop=$obj->mHolidays}
							{$obj->mHolidays[ i ].title}
							{if ( $smarty.section.i.index + 1 ) < sizeof( $obj->mHolidays ) }
								, &nbsp; 
							{/if}
						{/section}
						</b>
					</p>
				{/if}
				{if $obj->mClassInfo.type !== "Flexible" }
					<p>Full Season Price: <strong>${$obj->mClassInfo.price}</strong></p>
					<p>Half Season Price: <strong>${$obj->mClassInfo.9WeekPrice}</strong></p>
				{/if}				
			{else}
				<form method=post role=form>
					<input type=hidden name=tgp_class_id value="{$obj->mClassID}">
					<input type=hidden name=tgp_class_title value="{$obj->mClassInfo.title_id}">
				<div class=group-form>
					<div class=col-md-3>
						<label>Weekday</label>
					</div>
					<div  class=col-md-9>
						<select name=tgp_class_weekday id=weekday class="form-control" >
							{for $i = 0 to 7}
								<option 
									{if $obj->mWeekdays[ $i ] == $obj->mClassInfo.weekday}
										selected 
									{/if}
								value="{$obj->mWeekdays[ $i ]}">{$obj->mWeekdays[ $i ]}</option>
							{/for}
						</select>
					</div>
				</div>
				<div class=group-form>
						<div class=col-md-3>
							<label>Start Time</label>
						</div>
						<div class=col-md-9>
							<input type=text name=tgp_class_start_time id=start_time class="time form-control" value="{$obj->mClassInfo.start_time}">
						</div>
				</div>	
				<div class=group-form>
						<div class=col-md-3>
							<label>Start Date</label>
						</div>
						<div class=col-md-9>
							<input type=text name=tgp_class_start_date id=datepicker class="form-control"  readonly value="{$obj->mClassInfo.start_date}" onChange="matchWeekday();">
						</div>
				</div>
				<div class=group-form>
						<div class=col-md-3>
							<label>End Date</label>
						</div>
						<div class=col-md-9>
							<input type=text name=tgp_class_end_date id=datepicker2 class="form-control" readonly value="{$obj->mClassInfo.end_date}" onChange="matchWeekday();">
						</div>
				</div>
				<div class=group-form>
						<div class=col-md-3>
							<label>Price</label>
						</div>
						<div class=col-md-9>
							<div class=input-group>
							<div class="input-group-addon">
								$
							</div>
							<input type=text name=tgp_class_price class="form-control" value="{$obj->mClassInfo.price}">
							<div class="input-group-addon">
							.00
							</div>
						</div>
					</div>
				</div>
				<p>&nbsp;</p>
				<div class=group-form>
						<div class=col-md-3>
						</div>
						<div class=col-md-9>
							<input class="btn btn-default btn-primary btn-lg" type=submit name=tgp_class_save value="Save Changes &raquo;"> <a class="btn btn-warning btn-lg" href="{$obj->mLinkToCancel}">Cancel</a>
						</div>
				</div>
				</form>
			{/if}
		</div>
		<div class=panel-footer>
		
			{include file="admin/classStudents.tpl"}
		
			<h3>Similar  Classes</h3>
			<table class=tables>
				<tr><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th></tr>
				<tr>
					{section name=i loop=$obj->mWeek}
						<td>
							{section name=j loop=$obj->mWeek[ i ]}
								<p><a href="{$obj->mWeek[ i ][ j ].link_to_class}">{$obj->mWeek[ i ][ j ].start_time}</a></p>
							{/section}
						</td>
					{sectionelse}
						<p>There are no similar classes available!</p>
					{/section}
				</tr>
			</table>
		</div>
	</div>
	
<!-- MODAL FOR EDITING STUDENT INFORMATION -->
				<div class="modal fade" id=editClass tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="edit_myModalLabel">Update Class</h3>
						</div>
						<div class=modal-content style="padding:5px;">							
							<form id=updateClass>
								<input type=hidden name=classID value="{$obj->mClassID}">
								<div class=row>
									<div class="col-md-6 form-group">
										<label class=control-label>Age Group</label><br/>
										<input type=text id=class_ageGroup class=form-control name="age_group" value="">
									</div>
									<div class="col-md-6 form-group">
										<label class=control-label>Day</label><br/>
										<select name=weekday id=class_weekday class=form-control>										
											<option value="Monday">Monday</option>
											<option value="Tuesday">Tuesday</option>
											<option value="Wednesday">Wednesday</option>
											<option value="Thursday">Thursday</option>
											<option value="Friday">Friday</option>
											<option value="Saturday">Saturday</option>
											<option value="Sunday">Sunday</option>
										</select>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 form-group">
										<label  class=control-label>Start Time</label><br/>
										<input type=text id=class_startTime class=form-control name=start_time value="">
									</div>
									<div class="col-md-6 form-group">
										<label  class=control-label>End Time</label><br/>
										<input type=text id=class_endTime class=form-control name=end_time value="">
									</div>
								</div>
								<div class="row form-group">
									<div class=col-md-6>
										<label>Start Date</label>
										<input type=text id=class_startDate name=startDate placeholder="mm/dd/yyyy" value="">
									</div>
									<div class=col-md-6>
										<label>End Date</label>
										<input type=text id=class_endDate name=endDate placeholder="mm/dd/yyyy" value="">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-md-6">
										<label>Full Season Price</label><br/>
										<div class=input-group>
											<span class=input-group-addon>$</span>
											<input type=text id=class_fullPrice name=price class=form-control value="">
											<span class=input-group-addon>.00</span>
										</div>
									</div>
									<div class="col-md-6">
										<label>Half Season Price</label><br/>
										<div class=input-group>
											<span class=input-group-addon>$</span>
											<input type=text id=class_halfPrice name=halfPrice class=form-control value="">
											<span class=input-group-addon>.00</span>
										</div>
									</div>
								</div>
								<div class=form-group>
									<a class='btn btn-default btn-primary btn-lg updateClass' href="">Update&laquo;</a>
									<a class='btn btn-default btn-primary btn-lg cancel' id=editClass_modal href="">Cancel</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	
	
<!-- MODAL TO SEND EMAIL -->
				<div class="modal fade" id=sendEmail tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="edit_myModalLabel">Send Email</h3>
						</div>
						<div class=modal-content style="padding:5px;">							
							<form id=sendEmails>
										<input type=hidden name="tgp_class[]" value="{$obj->mClassID}">
									<div class=form-group>
										<label class=control-label>Subject</label><br/>
										<input type=text class=form-control name=subject>
									</div>									
									<div class=form-group>
										<label class=control-label>Message</label><br/>
										<textarea class="tinymce form-control" style="height:50px;" id=class_emailMessage name=message></textarea>
									</div>
									<div class=form-group>
										<a class='btn btn-default btn-primary btn-lg sendEmail' href="">Send Meail&raquo;</a>
										<a class='btn btn-default btn-primary btn-lg cancel' id=sendEmail_modal href="">Cancel</a>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	
	
<script>
$( document ).ready( function ()
{
	$( '.email' ).click( function( e )
	{
		e.preventDefault();
		
		showModal( 'sendEmail' );
		
	});
	
	$( '.sendEmail' ).click( function( e )
	{
		e.preventDefault();
		
		$.post( "{$obj->mLinkToSendEmail}",
			$( '#sendEmails' ).serialize(),
			function ( data, status )
			{
				data = jQuery.parseJSON( data );
				
				alert( data.message );
				
				if( !data.success )
					return false;
					
				closeModal( 'sendEmail' );
			});
	});
	
	$( '.delete' ).click( function( e )
	{
		e.preventDefault();
		
		if( confirm( 'Delete class?' ) )
		{
			var index = this.id.indexOf( '_' );
			
			var ids = this.id.substring( ( index + 1 ), this.id.length );
			
			$.post( "{$obj->mLinkToDelete}",
				{
					classID:ids
				},
				function( data, status )
				{
					return alert( data );
					
					if( data.success )
						goTo( "{Link::Build( 'admin/classes' )}" );
				});
		}
	});
	
	$( '.editClass' ).click( function( e )
	{
		e.preventDefault();
		
		showModal( 'editClass' );
		
		$( '#class_weekday' ).val( classes.weekday );
		$( '#class_ageGroup' ).val( classes.ageGroup );
		$( '#class_startTime' ).val( classes.startTime );
		$( '#class_endTime' ).val( classes.endTime );
		$( '#class_startDate' ).val( classes.startDate );
		$( '#class_endDate' ).val( classes.endDate );
		$( '#class_fullPrice' ).val( classes.fullPrice );
		$( '#class_halfPrice' ).val( classes.halfPrice );
	});
	
	$( '.updateClass' ).click( function( e )
	{
		e.preventDefault();
		
		$.post("{$obj->mLinkToEdit}",
			$( '#updateClass' ).serialize(),
			function( data, status )
			{
				return alert( data );
			});
	});
	
	$('#class_startDate' ).datepicker({
			dateFormat:"mm/dd/yy",
			changeMonth: true,
			changeYear:true,
			numberOfMonths: 1
		});
	$('#class_endDate' ).datepicker({
			dateFormat:"mm/dd/yy",
			changeMonth: true,
			changeYear:true,
			numberOfMonths: 1
		});

});

var classes = new classes( '{$obj->mClassInfo.age_group}', '{$obj->mClassInfo.start_time}', '{$obj->mClassInfo.end_time}', '{date( "m/d/Y", strtotime( $obj->mClassInfo.start_date ) )}', '{date( "m/d/Y", strtotime( $obj->mClassInfo.end_date ) )}', {$obj->mClassInfo.price}, {$obj->mClassInfo.9WeekPrice}, '{$obj->mClassInfo.weekday}' );

function classes( ageGroup, startTime, endTime, startDate, endDate, fullPrice, halfPrice, weekday  )
{
	this.weekday = weekday;
	this.ageGroup = ageGroup;
	this.startTime = startTime;
	this.endTime = endTime;
	this.startDate = startDate;
	this.endDate = endDate;
	this.fullPrice = fullPrice;
	this.halfPrice = halfPrice;
}
</script>