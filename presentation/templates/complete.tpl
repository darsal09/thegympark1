{load_presentation_object filename="complete" assign="obj"}
<div class="panel panel-success">
	<div class="panel-heading"><h1>Registration Complete!</h1></div>
	<div class=panel-body>
		<p>Your registration was succesfull!</p>
		<h3>Here is your class registration summary</h3>
		<p> 
		{$obj->mParticipant.first} {$obj->mParticipant.last} registered to the following class on {date( 'l F jS, Y g:ia' )}:	
		</p>

		<p>
			<b>{$obj->mClass.title}</b><br/>
			<b>{$obj->mClass.weekday}s: {date( 'g:ia', strtotime( $obj->mClass.start_time ) )} to {date( 'g:ia', strtotime( $obj->mClass.end_time ) )}</b><br/>
			Starting <b>{date( 'l M. jS, Y', strtotime( $obj->mClass.start_date ) )}</b> to <b>{date( 'l M. jS, Y', strtotime( $obj->mClass.end_date ) )}</b><br/>
		</p>
		<p>
			Class description:<br/>
			{$obj->mClass.description}
		</p>
	</div>
	<div class=panel-footer>
		<h3>Payment information:</h3>
		{if $obj->mPayment.payment === "Paid"}
			<p>We made the charge of <b>${$obj->mPayment.amount}</b> to the following credit card:</p>
		{else}
			<p class=error>We tried to charge the card you provided but it did not go through. We have save the information in our system and you can log in to our system to make the payment.</p>
		{/if}
		<p>
				{$obj->mPayment[ 'card' ].name} 
				{$obj->mPayment[ 'card' ].type} - {substr( $obj->mPayment[ 'card' ].number, ( strlen( $obj->mPayment[ 'card'  ].number ) - 4 ), strlen( $obj->mPayment[ 'card' ].number ))}<br/>
		</p>	
	</div>
</div>