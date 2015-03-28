{load_presentation_object filename="classStudents" foldername="admin" assign="obj"}
	<h3>
		Students
		<span class=pull-right>
			<a class="btn btn-default btn-warning classAttendance"  href="{$obj->mLinkToTakeAttendance}">Take Attendance&raquo;</a> 
			<a class="btn btn-default btn-primary addStudent" href="{$obj->mLinkToAddExistingParticipant}">Add Existing Participant&raquo;</a> 
			<a class="btn btn-default btn-primary" href="{$obj->mLinkToAddChild}">+Add New Participant&raquo;</a></span>
	</h3>
	
	{if sizeof( $obj->mStudents )  > 0}	
		<table class=table id=studentsTable>
		<tr><th>#</th><th>Name</th><th>Age</th><th>Start</th><th>End</th><th>Price</th><th>Status</th><th><span class=pull-right>Options</span></th></tr>
		{section name=i loop=$obj->mStudents}
			<tr>
				<td>{$smarty.section.i.index + 1 }.</td>
				<td>
					<a class=students href="{$obj->mStudents[ i ].link_to_student}"><span id="name_{$obj->mStudents[ i ].id}">{$obj->mStudents[ i ].last}, {$obj->mStudents[ i ].first}</span></a>
				</td>
				<td>
					{$obj->mStudents[ i ].age}
				</td>
				<td>
					{date( 'm/d/Y', strtotime( $obj->mStudents[ i ].start ) )}
				</td>
				<td>
					{date( 'm/d/Y', strtotime( $obj->mStudents[ i ].end )  )}				
				</td>
				<td>
					${$obj->mStudents[ i ].price}
				</td>
				<td>
					{$obj->mStudents[ i ].status}
				</td>
				<td>
					<span class=pull-right>
						{if $obj->mStudents[ i ].status =='Pending'}
							<a class="btn btn-default btn-primary payment" id="payment_{$obj->mStudents[ i ].id}" href="">Take Payment&raquo;</a>
						{/if}
						<a class="btn btn-default btn-primary edit" id="edit_{$obj->mStudents[ i ].id}" href="{$obj->mStudents[ i ].link_to_edit}">edit&raquo;</a>
						<a class="btn btn-default btn-success" href="{$obj->mStudents[ i ].link_to_student}">view&raquo;</a>
						<a class="btn btn-default btn-danger remove" id="remove_{$obj->mStudents[ i ].id}" href="{$obj->mStudents[ i ].link_to_remove}">remove&raquo;</a>
					</span>
				</td>
			</tr>
		{/section}
		</table>
	{else}
		<p>No students in this class yet!</p>
	{/if}
	<p>&nbsp;</p>
	
				<div class="modal fade" id=addAttendance tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="myModalLabel">Add Package To Student</h3>
							<p>Please select one of the following packages</p>
						</div>
						<div class=modal-content>
							<form id=classAttendance>
								<div class=form-group>
									<label>Attendance Date: </label>
									<input type=text id=attendance_date name=date value="{date( 'm/d/Y' )}">
									<input type=hidden name=classID value="{$obj->mClassID}">
								</div>
									<div class=row>
										<div class=col-md-6>
											Name
										</div>
										<div class=col-md-6>
											Attendance
										</div>
									</div>
									{section name=i loop=$obj->mStudents}
										<div class="row form-group">
											<div class=col-md-6>
												<label>{$obj->mStudents[ i ].first} {$obj->mStudents[ i ].last}</label>
											</div>
											<div class=col-md-6>
												<input type=checkbox name=attendance[] value="{$obj->mStudents[ i ].id}">
											</div>
										</div>
									{/section}
								<div class=form-group>
									<a class='btn btn-default btn-primary btn-lg takeAttendance' href="">Take Attendance&laquo;</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

				<div class="modal fade" id=addStudent tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="myModalLabel">Add student to class</h3>
						</div>
						<div class=modal-content style="padding:5px;">
							<input type=hidden id=full_start_date value="{$obj->mFull.begin}">
							<input type=hidden id=full_end_date value="{$obj->mFull.end}">
							<input type=hidden id=first_start_date value="{$obj->mFirst.begin}">
							<input type=hidden id=first_end_date value="{$obj->mFirst.end}">
							<input type=hidden id=last_start_date value="{$obj->mLast.begin}">
							<input type=hidden id=last_end_date value="{$obj->mLast.end}">
							<input type=hidden id=price value="{$obj->mClass.price}">
							<input type=hidden id=9WeekPrice value="{$obj->mClass.9WeekPrice}">
							
							<form id=registerStudent>
								<input type=hidden name=classID value="{$obj->mClassID}">
								<div class=form-group>
									<label><input type=radio class="classParts" id=full name=classPart value="Full"> Full season</label>
									<label><input type=radio class="classParts" id=first name=classPart value="First"> First half of the season</label>
									<label><input type=radio class="classParts" id=last name=classPart value="Last"> Last half of the season</label>
									<label><input type=radio class="classParts" id=last name=classPart value="Other"> Other</label>
									
								</div>
								<div class=form-group>
									<label>Price</label>
									<div class=input-group>
										<span class=input-group-addon>$</span>
										<input type=text name=price size=5 id=classPrice value="">
										<span class=input-group-addeon>.00</span>
									</div>
								</div>
								<div class="row form-group">
									<div class=col-md-6>
										<label>Start Date</label>
										<input type=text id=startDate name=startDate placeholder="mm/dd/yyyy" value="">
									</div>
									<div class=col-md-6>
										<label>End Date</label>
										<input type=text id=endDate name=endDate placeholder="mm/dd/yyyy" value="">
									</div>
								</div>
								<h1>Students</h1>
									<p>Search participant in the system</p>
									<div class=row>
										<div class=col-md-4>
											<label>First Name</label><br/>
											<input type=text id=firstName value="">
										</div>
										<div class=col-md-4>
											<label>Last Name</label><br/>
											<input type=text id=lastName value="">
										</div>
										<div class=col-md-4>
											<br/>
											<button class="btn btn-default btn-success btn-lg search" id=byName >Search</button>
										</div>
									</div>
								<p>Please select one or more students to add them to the class.</p>
								<div id=students>
								
								</div>
								<div class=form-group>
									<a class='btn btn-default btn-primary btn-lg register' href="">Register&laquo;</a>
									<a class='btn btn-default btn-primary btn-lg cancel' id=addStudent_modal href="">Cancel</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

<!-- MODAL FOR EDITING STUDENT INFORMATION -->
				<div class="modal fade" id=editStudent tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="edit_myModalLabel">Update Student</h3>
						</div>
						<div class=modal-content style="padding:5px;">							
							<form id=updateStudent>
								<input type=hidden name=classID value="{$obj->mClassID}">
								<input type=hidden id=studentID name=studentID value="">
								<input type=hidden id=classStudentID name=classStudentID value="">
								<div class=form-group>
									<label><input type=radio class="classParts" id=edit_full name=classPart value="Full"> Full, 18 Weeks</label><br/>
									<label><input type=radio class="classParts" id=edit_first name=classPart value="First"> First 9 Weeks</label><br/>
									<label><input type=radio class="classParts" id=edit_last name=classPart value="Last"> Last 9 weeks</label>
								</div>
								<div class=form-group>
									<label>Price</label>
									<div class=input-group>
										<span class=input-group-addon>$</span>
										<input type=text name=price size=5 id=edit_classPrice value="">
										<span class=input-group-addeon>.00</span>
									</div>
								</div>
								<div class="row form-group">
									<div class=col-md-6>
										<label>Start Date</label>
										<input type=text id=edit_startDate name=startDate placeholder="mm/dd/yyyy" value="">
									</div>
									<div class=col-md-6>
										<label>End Date</label>
										<input type=text id=edit_endDate name=endDate placeholder="mm/dd/yyyy" value="">
									</div>
								</div>
								<div class=form-group>
									<a class='btn btn-default btn-primary btn-lg update' href="">Update&laquo;</a>
									<a class='btn btn-default btn-primary btn-lg cancel' id=editStudent_modal href="">Cancel</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			
<!-- MODAL FOR CLASS PAYMENT INFORMATION -->
			<div class="modal" id=classPayment data-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="#payment" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<form id=sendPayment>
						 <div class="modal-header">
							<h3 class="modal-title" id="myModalLabel">Add Payment Information</h3>
						</div>	
						<div class=modal-body>
									<input type=hidden id=paymentStudentID name=studentID value="">
									<div class=row>
										<div class="col-md-3 form-group">
											<label>Price</label><br/>
											<input type=text id=studentClassPrice class=form-control name=price value="">
										</div>
											<div class="col-md-3 form-group">
												<label>Discount</label><br/>
												<input type=text id='discount' class=form-control name="discount"  size=5 value="0">
											</div>
											<div class="col-md-3 form-group">
												<label>Reason Code</label><br/>
												<input type=tex name="reasonCode" class=form-control size=15 value="">
											</div>
											<div class="col-md-3 form-group">
												<label>Total Due</label><br/>
												<input type=text id=total_due class=form-control name="totalDue" value="0"  size=5 readonly>
											</div>
									</div>
									<div class=row>	
										<div id=totalPaymentGroup class="col-md-3 form-group">
											<label id=totalPaymentLabel>Total Payment</label><br/>
											<input type=text class=form-control name=totalPayment id=total_payment size=5 value="0">
										</div>
										<div class="col-md-3 form-group">
											<label>Payment Type</label><br/>
											<label><input type=radio class=paymentType id=Cash name=type value="Cash"> Cash</label> <label><input type=radio  class=paymentType id=check name=type value="Check"> Check</label>
											<label><input type=radio class=paymentType id=credit name=type value="Credit"> Credit</label> <label><input type=radio  class=paymentType id=debit name=type value="Debit"> Debit</label>
											<label><input type=radio  class=paymentType id=pass name=type value="Pass"> Pass</label> <label><input type=radio class=paymentType id=other name=type value="Other"> Other</label>
										</div>
										<div class="col-md-3 form-group">
											<label>Receipt</label><br/>
											<input type=text id=receipt class=form-control name=receipt  size=5 value="">
										</div>
									</div>
										<div class="form-group">
											<label>Note</label><br/>
											<textarea name="note" class=form-control></textarea>
										</div>
								<div class=form-group>
									<a class="btn btn-default btn-primary btn-lg save" href="">Save Payment&raquo;</a> 
									<a class="btn btn-default btn-warning btn-lg cancel" id=classPayment_modal href="">Cancel</a>
								</div>
							</form>
							</div>	
						</div>
					</div>
				</div>
			</div>
<script>
$( document ).ready( function()
{
	/*
		This function shows the modal for payment
	*/
	$( '.payment' ).click( function( e )
	{
		e.preventDefault();
		
		var index = this.id.indexOf( '_' );
		var id = this.id.substring( index + 1, this.id.length );
		
		var student = getStudent( id );
		
		showModal( 'classPayment' );
		
		$( '#studentClassPrice' ).val( student.price );
		$( '#total_due' ).val( student.price );
		$( '#paymentStudentID' ).val( id );
	});
	
	/*
		DISCOUNT
	*/
	
	$( '#discount' ).change(function()
	{
		$( '#total_due' ).val( $('#studentClassPrice' ).val() );
		
	});
	
	
	
	$( '#discount' ).click( function()
	{
		$( '#total_due' ).val( $('#studentClassPrice' ).val() );
	});
	
	
	$( '.paymentType' ).click( function()
	{
		$( '#receipt' ).val( this.value+'_' );
	});
	
	/*
		SAVE PAYMENT IN THE SYSTEM
	*/
	$( '.save' ).click( function( e )
	{
		e.preventDefault();
		
		if( $( '#total_payment' ).val() < 1 )
		{
			$( '#totalPaymentLabel' ).addClass( 'error' );
			
			return alert( 'You need get a payment' );
		}	
		
		$.post( '{$obj->mLinkToTakePayment}',
			 $( '#sendPayment' ).serialize(),
			 function( data, status )
			 {
				return alert( data );
			 });
	});
	
	
	/*
		this function shows the modal
	*/
	$( '.classAttendance' ).click( function( e )
	{
		e.preventDefault();
		
		$( '#addAttendance' ).modal( 'show' );
	});
	
	/*
		This function takes the attendance for the class for a specific date
	*/
	
	$( '.takeAttendance' ).click( function( e )
	{		
		e.preventDefault();
		$.post( "{$obj->mLinkForAttendance}",
			$( '#classAttendance' ).serialize(),
			function (data, status )
			{
//				return alert( data );
				
				data = jQuery.parseJSON( data );
				
				alert( data.message );
				
				if( data.success )
					closeModal( 'addAttendance' );
			});
	});
	
	/*
		This function shows the modal
		and grabs the information from api/employee/classes/class/getStudentsNotInClass 
		and inputs that information into the students div
	*/
	$( '.addStudent' ).click( function( e )
	{
		e.preventDefault();
		
		showModal( 'addStudent' );				
	});
	
	//gests students and puts them in the div students
	function getStudents()
	{
		var firstName 	= $( '#firstName' ).val();
		var lastName 	= $( '#lastName' ).val();
		
			$.get( "{$obj->mLinkToGetStudents}",
			{
				classID:{$obj->mClassID},
				first:firstName,
				last:lastName
			},
			function( data, status )
			{
				//return alert( data );
				data = jQuery.parseJSON( data );
				
				if( data.success )
				{
					var R = data.results;
					var length = R.length;
					var results = '';
					
					for( var i = 0; i < length; i++ )
						results += '<p><input type=checkbox name=students[] value="'+R[ i ].id+'"> '+R[ i ].first+' '+R[ i ].last+' '+R[ i ].dob+'</p>';
					
					$( '#students' ).html( results );
				}
			});
	}
	
	/*
		This section takes care of setting up the date and price when registering a child for the class
	*/
	
	$( '.classParts' ).click( function(){
	
		var ids = this.id;
		var index = this.id.indexOf( '_' );
		var inputs = '';
		
		if( index > 0 )
		{
			ids = this.id.substring( index + 1, this.id.length );
			inputs = this.id.substring( 0, index )+'_';
		}
			
		$( '#'+inputs+'startDate' ).val( $( '#'+ids+'_start_date' ).val() ); 
		$( '#'+inputs+'endDate' ).val( $( '#'+ids+'_end_date' ).val() ); 
		
		var price = $( '#price' ).val();
		
		if( ids != 'full' )
			price = $( '#9WeekPrice' ).val();
		
		$( '#'+inputs+'classPrice' ).val( price );
	});
	
	/*
		Grabs the information from students that are being registered to the class
	*/
	$( '.register' ).click(function( e ){
		e.preventDefault();
		
		$.post( "{$obj->mLinkToAddStudents}",
			$( '#registerStudent' ).serialize(),	
			function( data, status )
			{
				data = jQuery.parseJSON( data );
				
				alert( data.message );
				
				if( !data.success )
					return false;
					
				closeModal( 'addStudent' );
				
//				$( '#studentsTable' ).append( '<tr><td></td><td>'+data.info.name+'</td><td>'+data.info.age+'</td><td>'+data.info.start+'</td><td>'+data.info.end+'</td><td>'+data.info.price+'</td><td>'+data.info.status+'</td><td><a href="">Edit&raquo;</a> <a href="">View&raquo;</a> <a href="">Remove&raquo;</a></td></tr>' );
				showModal( 'classPayment' );
			});			
	});
	/*
		This part takes care of setting up the form the student that needs to updated
	*/
	$( '.edit' ).click( function( e )
	{
		e.preventDefault();
		
		var index = this.id.indexOf( '_' );
		var ids = this.id.substring( index + 1, this.id.length );
		
		var student = getStudent( ids );
		
		showModal( 'editStudent' );
		
		$( '#edit_startDate'  ).val( student.start );
		$( '#edit_endDate'  ).val( student.end );
		$( '#edit_classPrice'  ).val( student.price );
		$( '#edit_myModalLabel'  ).html( 'Update '+student.name+'\'s class info' );
		$( '#studentID' ).val( student.id );
		$( '#classStudentID' ).val( student.classStudentID );
		
		switch( student.type )
		{
			case 'First':
				$( '#edit_first' ).prop( 'checked', true );
				break;
				
			case 'Last':
				$( '#edit_last' ).prop( 'checked', true );
				break;
				
			default:
				$( '#edit_full' ).prop( 'checked', true );
		}
		
		
		
	});
	
	$( '.update' ).click( function( e )
	{
		e.preventDefault();
		
		$.post( "{$obj->mLinkToUpdateStudents}",
			$( '#updateStudent' ).serialize(),
			function( data, status )
			{
				return alert( data );
			});
	});
	
	/*
		This part tries to remove a student from a class
	*/
	$( '.remove' ).click( function( e )
	{
		e.preventDefault();
		var index = this.id.indexOf( '_' );
		
		var ids = this.id.substring( index+1, this.id.length );
		
		var name = $( '#name_'+ids ).html();
		
		if( confirm( 'Remove student '+name+'?' ) )
		{
			$.post("{$obj->mLinkToRemoveStudents}",
				{
					classID:{$obj->mClassID},
					studentID:ids
				},
				function( data, status )
				{
					return alert( data );
				}
			);
		}
	});
	
	/*
		Provides plugin to the start date to be able to show calendar and input clicked date into the start date
	*/
	$('#attendance_date' ).datepicker({
			dateFormat:"mm/dd/yy",
			changeMonth: true,
			changeYear:true,
			numberOfMonths: 1
		});
	$('#startDate' ).datepicker({
			dateFormat:"mm/dd/yy",
			changeMonth: true,
			changeYear:true,
			numberOfMonths: 1
		});
	$('#endDate' ).datepicker({
			dateFormat:"mm/dd/yy",
			changeMonth: true,
			changeYear:true,
			numberOfMonths: 1
		});
		
	$( '.search' ).click( function( e )
	{
		e.preventDefault();
		
		getStudents( );
	});
});


var students = new Array();

{section name=i loop=$obj->mStudents}
	students[ {$smarty.section.i.index} ] = new Student( '{$obj->mStudents[ i ].first} {$obj->mStudents[ i ].last}', '{date( "m/d/Y", strtotime( $obj->mStudents[ i ].start ) )}', '{date( "m/d/Y", strtotime( $obj->mStudents[ i ].end ) )}', {$obj->mStudents[ i ].id}, {$obj->mStudents[ i ].price}, '{$obj->mStudents[ i ].classType}', {$obj->mStudents[ i ].classStudentID} )
{/section}

function Student( name, start, end, id, price, type, classStudentID )
{
	this.id = id;
	this.name = name;
	this.start = start;
	this.end = end;
	this.price = price;
	this.type = type;
	this.classStudentID = classStudentID;
}

function getStudent( ids )
{	
	var size = students.length;
	
	for( var i = 0; i < size; i++ )
	{
		if( students[ i ].id == ids )
			return students[ i ];
	}
	
	return null;
}
</script>