{load_presentation_object filename="studentOpenPlayHistory" foldername="employee" assign="obj"}
<div class=page-header>
	<h1>{$obj->mOpenPlay.title} {$obj->mOpenPlay.season} {$obj->mOpenPlay.year}</h1>
</div>
<ul class=breadcrumb>
	<li><a href="{$obj->mLinkToOpenPlay}">Open Plays</a></li>
</ul>
<div class=container>
	<div class="panel panel-default">
		<div class=panel-heading>
			<h1>
				{$obj->mParticipant.first} {$obj->mParticipant.last}<br/>
				<a class="btn btn-primary" data-toggle="collapse" href="#packages" aria-expanded=false aria-controls=packages>Left: <span id=amount>{$obj->mAmount.amount - $obj->mAmount.used}</span> session(s)</a>
				<a class="btn btn-primary" data-toggle="collapse" href="#history" aria-expanded="false" aria-controls="history">
  					Used: <span id=used>{if $obj->mAmount.used < 1}0{else}{$obj->mAmount.used}{/if}</span> session(s)       
				</a>
				<button id=attendance class="btn btn-success">Take Attendance</button>
				<button class="btn btn-warning" type="button" data-toggle="modal" data-target="#addPackage">Add Open Play Session(s)</button>
			</h1>
		</div>
		<div class="panel-body">
			<div class=panel-group id=accordion>
				<div class="panel panel-default">
					<div class=panel-heading>
						<h3 class=panel-title><a data-toggle="collapse" data-parent="#accordion" href="#history">Used Session(s)&raquo;</a></h3>
					</div>
					<div id=history class="panel-collapse collapse out">
						<div class=panel-body>
							<ul id="collapseExample" class=list-group>
								{section name=i loop=$obj->mHistory}
									<li class=list-group-item id="list-{$obj->mHistory[ i ].id}">on {date( 'l, M jS, Y', strtotime( $obj->mHistory[ i ].dates ) )} <a href="javascript:removeItem( {$obj->mHistory[ i ].id} );">remove</a></li>
								{/section}
							</ul>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class=panel-heading>
						<h3 class=panel-title><a data-toggle="collapse" data-parent="#accordion" href="#packages">Packages Bought&raquo;</a></h3>
					</div>
					<div id=packages class="panel-collapse collapse in">
						<div class=panel-body>
							<ul id="studentPackages" class=list-group>
								<li class=list-group-item>
								<div class=row>
									<div class=col-md-1>Session(s)</div><div class=col-md-3>Added On</div><div class=col-md-1>Price</div><div class=col-md-1>Status</div><div class="col-md-2">Start Date</div><div class="col-md-2">End Date</div><div class=col-md-1>Options</div></div></li>
								{section name=i loop=$obj->mStudentPackages}
									<li class=list-group-item id="packages-{$obj->mStudentPackages[ i ].id}">
										<div class=row>
											<div class=col-md-1 id="packages-{$obj->mStudentPackage[ i ].id}_amount">{$obj->mStudentPackages[ i ].amount}</div>
											<div class=col-md-3>{helper::setDateFormat( $obj->mStudentPackages[ i ].addedOn)}</div>
											<div class=col-md-1>$<span id="packages-{$obj->mStudentPackages[ i ].id}_price">{$obj->mStudentPackages[ i ].price}</span></div>
											<div class=col-md-1 id="packages-{$obj->mStudentPackages[ i ].id}_status">
												{if $obj->mStudentPackages[ i ].status == 'Register'}
													Paid
												{else}
													<a href="javascript:takePayment( {$obj->mStudentPackages[ i ].id} );">Needs Payment</a>
												{/if}
												</div>
											<div class=col-md-2>
												{date( 'Y-m-d', strtotime( $obj->mStudentPackages[ i ].start ) )}
											</div>
											<div class=col-md-2>
												{date( 'Y-m-d', strtotime( $obj->mStudentPackages[ i ].end ) )}
											</div>
											<div class=col-md-3 id="packages-{$obj->mStudentPackages[ i ].id}_options">
												{if $obj->mStudentPackages[ i ].status != 'Register'}	
													<a href="javascript:removePackage( {$obj->mStudentPackages[ i ].id} );">remove</a>
												{/if}
											</div>
										</div>
									</li>
								{/section}
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
			<div class="modal fade" id=addPackage tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="myModalLabel">Add Package To Student</h3>
							<p>Please select one of the following packages</p>
						</div>
						<div class=modal-content>
							{section name=i loop=$obj->mPackages}
								<a class=list-group-item href="javascript:addPackage( {$obj->mPackages[ i ].id}, {$obj->mPackages[ i ].price}, {$obj->mPackages[ i ].amount} );">{$obj->mPackages[ i ].title} - ${$obj->mPackages[ i ].price}.00</a>
							{/section}
						</div>
					</div>
				</div>
			</div>
			
			<div class="modal" id=payment data-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="#payment" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<form id=sendPayment>
						 <div class="modal-header">
							<h3 class="modal-title" id="myModalLabel">Add Payment Information</h3>
						</div>	
						<div class=modal-body>
								<p>
									Price: $<span id=price></span>.00
								</p>
								
								<p>
									<a id=paidCash class="btn btn-primary btn-lg" href="javascript:paidCash( );">Paid Cash</a>
								</p>
								
								<div class=row>			
									<input type=hidden id=openPlayStudentID name=openPlayStudentID value="">
									<input type=hidden id=p_price name=price value="">								
									<input type=hidden id=p_amount name=amount value="">								
									<input type=hidden id=packageID name=packageID value="">
									<input type=hidden id=openPlayID name=openPlayID value="">
									<input type=hidden id=studentID name=studentID value="">
									
									<div class=form-group>
										<div class=col-md-3>
											<label class=control-label>Type</label>
										</div>
										<div class=col-md-9>
											<div class=radio>
												<label><input type=radio name=type value="Visa">Visa</label>
											</div>
											<div class=radio>
												<label><input type=radio name=type value="Mastercard"> Master Card</label>
											</div>
											<div class=radio>
												<label><input type=radio name=type value="Discover"> Discover</label>
											</div>
											<div class=radio>
												<label><input type=radio name=type value="American Express"> American Express</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class=col-md-3>
											<label class=control-label>Name</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="name">
										</div>
									</div>
									<div class="form-group">
										<div class=col-md-3>
											<label class=control-label>Number</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="number">
										</div>
									</div>
									<div class=form-group>
										<div class=col-md-3>
											<label class=control-label>Expiration Date</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="expiration_date">
										</div>
									</div>
									<div class=form-group>
										<div class=col-md-3>					
											<label class=control-label>Authorization Code</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="authorization_code">
										</div>
									</div>
								</div>
								<div class=row>
									<h3>Address</h3>
									<div class=form-group>
										<div class=col-md-3>					
											<label class=control-label>Street</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="street">
										</div>
									</div>
									<div class=form-group>
										<div class=col-md-3>					
											<label class=control-label>City</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="city">
										</div>
									</div>
									<div class=form-group>
										<div class=col-md-3>					
											<label class=control-label>State</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="state">
										</div>
									</div>
									<div class=form-group>
										<div class=col-md-3>					
											<label class=control-label>Zip</label>
										</div>
										<div class=col-md-9>
											<input type=text class=form-control name="zip">
										</div>
									</div>
								</div>
						</div>
						<div class=model-footer>
							<div class=row>
								<div class=col-md-3>
								</div>
								<div class=col-md-9>
									<button id=closePayment class="btn btn-warning btn-lg">Close</button> 
									<input type=button id=sendPaymentSubmit class="btn btn-primary btn-lg" value="Enter&raquo;">
								</div>
							</div>
						</div>
						<p>&nbsp;</p>
						</form>
					</div>
			</div>		
		</div>
</div>
<script>
$(document).ready(function(){
  $("#attendance").click(function(){
    $.post("{$obj->mLinkToTakeAttendance}",
    {
		student_id:{$obj->mStudentID},
		openplay_id:{$obj->mOpenPlay.id},
		class_id:{$obj->mClass[ 'class_id' ]}
    },
    function(data, status){
		data = jQuery.parseJSON(data);
		
		if( data.id > 0 )
		{
			$("#collapseExample").append('<li class=list-group-item id=list-'+data.id+'>on '+data.date+' <a href="javascript:removeItem( '+data.id+' )">remove</a></li>');
			
			var used = parseInt( $( '#used' ).html() );
			
			$( "#used" ).html( parseInt( used + 1 ) );
		}
		else
			alert( data.message );
   });
  });

	
	/*
		THIS PART SENDS FORM THAT GATHERS PAYMENT INFORMATION
	*/
	$( '#sendPaymentSubmit' ).click( function( e ){
		e.preventDefault();
		$.post("{$obj->mLinkToSendPayment}",
			$( 'form #sendPayment' ).serialize(),
			function( data, status)
			{
				data = jQuery.parseJSON( data );
				
				if( data.payment )
				{
					updateStudentPackage( data.id );
					$( '#payment' ).modal( 'hide' );
				}
				else
					alert( data.message );
			});
	});
	
	/*
		WHEN PAYMENT FORM IS CLOSED THIS PART TAKES CARE OF REMOVING ANY INFORMATION THAT IS ADDED TO THE SYSTEM AND TO THE FRONT END
	*/
	$( '#closePayment' ).click( function( e ){
		alert( $( '#p_amount' ).val() );
		
		var n_amount = parseInt( $( '#amount' ).html() );
		var amount = parseInt( $( '#p_amount' ).val() );
		
		$( '#amount' ).html( n_amount - amount );
		$( '#payment' ).modal( 'hide' );
		
		e.preventDefault();
	});
		
});
	function removeItem( id )
	{
			$.post("{$obj->mLinkToRemove}",
				{
					id: id
				},
				function( data, status ){
					if( data == 1 )
					{
						alert( 'The attendance was delete successfully' );
						$("#list-"+id ).remove();
						
						var used = parseInt( $( '#used' ).html() );
						
						$( "#used" ).html( parseInt( used - 1 ) );
					}
					else
						alert( 'We could not delete the attendance' );
				});
	}
	
	function addPackage( id, price, amount )
	{			
		$( '#p_amount' ).val( amount );

		$.post( "{$obj->mLinkToAddPackage}",
				{
					id:id,
					price:price,
					amount:amount,
					student_id:{$obj->mStudentID},
					openplay_id:{$obj->mOpenPlay.id}
				},
				function( data, status )
				{						
//					alert( data );
					data = jQuery.parseJSON( data );
					
					$( '#addPackage' ).modal( 'hide' );
					
					if( data.id > 0 )
					{					
						var amount = parseInt( $( '#amount' ).html() );	
						
						$( '#p_price' ).val( data.price );
						
						$( '#packageID' ).val( id );
						$( '#studentID' ).val( {$obj->mStudentID} );
						$( '#openPlayID' ).val( {$obj->mOpenPlay.id} );
						$( "#amount" ).html( amount + parseInt( data.amount ) );
						$( '#price' ).html( data.price );
						$( '#payment' ).modal( 'show' );
					}
					
				});
	}
	
	function removePackage( id )
	{
		$.post( "{$obj->mLinkToRemovePackage}",
			{
				id:id
			},
			function( data, status )
			{
				data = jQuery.parseJSON( data );
				
				if( data.id > 0 )
				{
					var amount = parseInt( $( '#amount' ).html() );
					var p_amount = parseInt( $( '#packages-'+id+'_amount' ).html() );
					
					$( '#amount' ).html( amount - p_amount );
					
					$( '#packages-'+id ).remove();
					
					alert( data.message );
				}
				else
					alert( data.message );
			}
		);
	}
	
		/*
			This part takes only the payment from a pending application
		*/
	function takePayment( id )
	{
		var price = parseInt( $( '#packages-'+id+'_price' ).html() );
		$( '#price' ).html( price );
		$( '#openPlayStudentID' ).val( id );
		$( '#payment' ).modal( 'show' );	
		
	}
	
	/*
		PAID CASH
	*/
	
	function paidCash( )
	{		
		$.post("{$obj->mLinkToPayCash}",
			{
				studentID:{$obj->mStudentID},
				openPlayID:{$obj->mOpenPlay.id},
				openPlayStudentID:$( '#openPlayStudentID' ).val(),
				amount:$( '#price' ).html(),
				type:'Open Play'
			},
			function( data, status )
			{
				data = jQuery.parseJSON( data );
				
				if( data.id > 0 )
				{
					alert( data.message );
					$( '#packages-'+$( '#openPlayStudentID' ).val()+'_status' ).html( 'Paid' );
					$( '#packages-'+$( '#openPlayStudentID' ).val()+'_options' ).html( '' );
					
					$( '#payment' ).modal( 'hide' );
				}
				else
					alert( data.message );
			});	
	}
	
	
	function updateStudentPackage( id )
	{
		$.post( "{$obj->mLinkToUpdateStudentPackage}",
			{
				id: id,
				student_id:{$obj->mStudentID}
			},
			function( data, status )
			{
				data = jQuery.parseJSON( data );
				
				if( !data.success )
					alert( data.message )
			}
		);
	}
	

</script>