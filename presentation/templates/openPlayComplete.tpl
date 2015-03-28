{load_presentation_object filename="openPlayComplete" assign="obj"}
<div class="panel panel-success">
	<div class=panel-heading><h1>OPen Play Registration Complete</h1></div>
	<div class=panel-body>
		<h3 class=success>Registration Complete</h3>
		<p>
			{$obj->mStudent.first},<br/>
			You have registered in open play at the Gym Park.
		</p>
		<p>
			You have registered for the following {$obj->mPackage.type} package: <b>{$obj->mPackage.title}</b><br/>
			<b>This package is good for {$obj->mPackage.amount} visits.</b>
		</p>
		<p>
			Charged: ${$obj->mPackage.price}.00<br/>
			Credit Card: {$obj->mCreditCard[ 'card' ].name} {$obj->mCreditCard[ 'card' ].type}-{$obj->mCreditCard[ 'card' ].last4}
		</p>
	</div>
	<div class="panel-footer bg-success">
		<h3>Open Play Information</h3>
		{$obj->mOpenPlay.title}: {$obj->mOpenPlay.season}-{$obj->mOpenPlay.year}
		<p>The following open play classes are available weekly:
			<ol class=list-group>
				{section name=i loop=$obj->mClasses}
					<li class="list-group-item bg-success">Open Play: {$obj->mClasses[ i ].weekday}s<br/>{date( 'g:ia', strtotime( $obj->mClasses[ i ].start_time ) )} to {date( 'g:ia', strtotime( $obj->mClasses[ i ].end_time ) )}</li>
				{/section}
			</ol>
		</p>	
	</div>
</div>