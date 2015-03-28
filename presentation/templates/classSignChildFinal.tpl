{load_presentation_object filename="classSignChildFinal" assign="obj"}
<script type="text/javascript">
		 $(function() 
		 {
			$( "#datepicker" ).datepicker(
			{
				dateFormat:"mm-dd-yy",
				changeMonth: true,
				changeYear:true,
				numberOfMonths: 1
			});
		});
</script>
<form method=post role="form">
<input type=hidden name="first_name" value="{$obj->mP[ 'first_name' ]}">
<input type=hidden name="last_name" value="{$obj->mP[ 'last_name' ]}">
<input type=hidden name="dob" value="{$obj->mP[ 'dob' ]}">
<input type=hidden name="gender" value="{$obj->mP[ 'gender' ]}">

<input type=hidden name="parent1_name" value="{$obj->mP[ 'parent1_name' ]}">
<input type=hidden name="parent1_cell_phone" value="{$obj->mP[ 'parent1_cell_phone' ]}">
<input type=hidden name="parent1_work_phone" value="{$obj->mP[ 'parent1_work_phone' ]}">
<input type=hidden name="parent1_email" value="{$obj->mP[ 'parent1_email' ]}">


<input type=hidden name="parent2_name" value="{$obj->mP[ 'parent2_name' ]}">
<input type=hidden name="parent2_cell_phone" value="{$obj->mP[ 'parent2_cell_phone' ]}">
<input type=hidden name="parent2_work_phone" value="{$obj->mP[ 'parent2_work_phone' ]}">
<input type=hidden name="parent2_email" value="{$obj->mP[ 'parent2_email' ]}">


<input type=hidden name="street" value="{$obj->mP[ 'street' ]}">
<input type=hidden name="street1" value="{$obj->mP[ 'street1' ]}">
<input type=hidden name="city" value="{$obj->mP[ 'city' ]}">
<input type=hidden name="state" value="{$obj->mP[ 'state' ]}">
<input type=hidden name="zip" value="{$obj->mP[ 'zip' ]}">

	<input type=hidden name=emergency_relation value="{$obj->mP[ 'emergency_relation' ]}">
	<input type=hidden name=emergency_name value="{$obj->mP[ 'emergency_name' ]}">
	<input type=hidden name=emergency_phone value="{$obj->mP[ 'emergency_phone' ]}">
	<input type=hidden name=caregiver_name value="{$obj->mP[ 'caregiver_name' ]}">
	<input type=hidden name=caregiver_phone value="{$obj->mP[ 'caregiver_phone' ]}">

<input type=hidden name="cardType" value="{$obj->mP[ 'cardType' ]}">
<input type=hidden name="name_on_card" value="{$obj->mP[ 'name_on_card' ]}">
<input type=hidden name="cardNumber" value="{$obj->mP[ 'cardNumber' ]}">
<input type=hidden name="expiration_date" value="{$obj->mP[ 'expiration_date' ]}">
<input type=hidden name="authorization_code" value="{$obj->mP[ 'authorization_code' ]}">

<input type=hidden name="billing_street" value="{$obj->mP[ 'billing_street' ]}">
<input type=hidden name="billing_city" value="{$obj->mP[ 'billing_city' ]}">
<input type=hidden name="billing_state" value="{$obj->mP[ 'billing_state' ]}">
<input type=hidden name="billing_zip" value="{$obj->mP[ 'billing_zip' ]}">


	<div class="panel-default">
		<div class=panel-heading>
			<h1>Participant Application Review</h1>
			<p>
				Please review your application and make any necessary changes if needed.
			</p>
		</div>
		<div class=panel-body>
			<div class=col-md-6>
				<h2>Participant Information</h2>
					{$obj->mP[ 'first_name' ]} {$obj->mP[ 'last_name' ]}<br/>
					{$obj->mP[ 'dob' ]}<br/>
					{$obj->mP[ 'gender' ]}
					<h4 style="font-weight:bold;">Parent 1:</h4>
						{$obj->mP[ 'parent1_name' ]} -- 
						{if !empty( $obj->mP[ 'parent1_cell_phone' ] )}
							{$obj->mP[ 'parent1_cell_phone' ]}<br/>
						{/if}
						{if  !empty( $obj->mP[ 'parent1_work_phone' ] )}
							{$obj->mP[ 'parent1_work_phone' ]}<br/>
						{/if}
						{$obj->mP[ 'parent1_email' ]}
						
					<h4 style="font-weight:bold;">Parent 2:</h4>
						{$obj->mP[ 'parent2_name' ]} -- 
						{if !empty( $obj->mP[ 'parent2_cell_phone' ] )}
							{$obj->mP[ 'parent2_cell_phone' ]}<br/>
						{/if}
						{if !empty( $obj->mP[ 'parent2_work_phone' ] ) }
							{$obj->mP[ 'parent2_work_phone' ]}<br/>
						{/if}
						{$obj->mP[ 'parent2_email' ]}
						
				<h4 style="font-weight:bold;">Address:</h4>
						{$obj->mP[ 'street' ]} {$obj->mP[ 'street1' ]} <br/>
						{$obj->mP[ 'city' ]},
						{$obj->mP[ 'state'  ]} 
						{$obj->mP[ 'zip' ]}<br/>
			</div>
			<div class=col-md-6>
				<h2>Payment Information</h2>
				<div class="col-sm-6">
							{$obj->mP[ 'cardType' ]} -
							{helper::getLast4( $obj->mP[ 'cardNumber'  ])}<br/>
							{$obj->mP[ 'name_on_card' ]} <br/>
							{$obj->mP[ 'expiration_date' ]}<br/>
							{$obj->mP[ 'authorization_code' ]}<br/>
					<h4 style="font-weight:bold;">Billing Address</h4>
						<p>
							{$obj->mP[ 'billing_street' ]}<br/>
							{$obj->mP[ 'billing_city' ]},
							{$obj->mP[ 'billing_state'  ]} 
							{$obj->mP[ 'billing_zip' ]}<br/>				
						</p>
				</div>
			</div>
		</div>
		<div class=panel-footer>
			<p>
				<input type=submit class="btn btn-default btn-primary btn-lg" name="class_child_sign_up_finalize" value="Complete Application&raquo;">
			</p>
		</div>
	</div>
</form>