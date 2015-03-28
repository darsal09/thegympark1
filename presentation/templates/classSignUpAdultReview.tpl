{load_presentation_object filename="classSignUpAdultReview" assign="obj"}
<form method=post>
<input type=hidden name="first_name" value="{$obj->mP[ 'first_name' ]}">
<input type=hidden name="last_name" value="{$obj->mP[ 'last_name' ]}">
<input type=hidden name="dob" value="{$obj->mP[ 'dob' ]}">
<input type=hidden name="gender" value="{$obj->mP[ 'gender' ]}">

<input type=hidden name="home_phone" value="{$obj->mP[ 'home_phone' ]}">
<input type=hidden name="cell_phone" value="{$obj->mP[ 'cell_phone' ]}">
<input type=hidden name="work_phone" value="{$obj->mP[ 'work_phone' ]}">
<input type=hidden name="email" value="{$obj->mP[ 'email' ]}">

<input type=hidden name="street" value="{$obj->mP[ 'street' ]}">
<input type=hidden name="street1" value="{$obj->mP[ 'street1' ]}">
<input type=hidden name="city" value="{$obj->mP[ 'city' ]}">
<input type=hidden name="state" value="{$obj->mP[ 'state' ]}">
<input type=hidden name="zip" value="{$obj->mP[ 'zip' ]}">

<input type=hidden name="emergency_relation" value="{$obj->mP[ 'emergency_relation' ]}">
<input type=hidden name="emergency_name" value="{$obj->mP[ 'emergency_name' ]}">
<input type=hidden name="emergency_phone" value="{$obj->mP[ 'emergency_phone' ]}">


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
		<div class=col-sm-6>
				<h2>Participant Information</h2>
						{$obj->mP[ 'first_name' ]} {$obj->mP[ 'last_name' ]}<br/>
						{$obj->mP[ 'dob' ]}<br/>
						{$obj->mP[ 'gender' ]}<br/>
						
						{if !empty( $obj->mP[ 'home_phone' ] ) }
							{$obj->mP[ 'home_phone' ]}<br/>
						{/if}
						{if !empty( $obj->mP[ 'work_phone' ] ) }
							{$obj->mP[ 'work_phone' ]}<br/>
						{/if}
						{if !empty( $obj->mP[ 'cell_phone' ] ) }
							{$obj->mP[ 'cell_phone' ]}<br/>
						{/if}
						
						{$obj->mP[ 'email' ]}<br/>
						
						<h4 style="font-weight:bold;">Address</h4>
						{$obj->mP[ 'street' ]} {$obj->mP[ 'street1' ]}<br/>
						{$obj->mP[ 'city' ]}, 
						{$obj->mP[ 'state' ]} 
						{$obj->mP[ 'zip' ]}<br/>
						
						<h4 style="font-weight:bold;">Emergency contact</h4>
						{$obj->mP[ 'emergency_relation' ]}<br/>
						{$obj->mP[ 'emergency_name' ]} <br/>
						{$obj->mP[ 'emergency_phone' ]}<br/>
		</div>
		<div class="col-sm-6">
				<h2>Payment Information</h2>
						{$obj->mP[ 'cardType' ]} -
						{helper::getLast4( $obj->mP[ 'cardNumber'  ] )}<br/>
						{$obj->mP[ 'name_on_card' ]} <br/> 
						{$obj->mP[ 'expiration_date' ]}<br/>
						{$obj->mP[ 'authorization_code' ]}<br/>
					<h4 style="font-weight:bold;">Billing Address</h4>
						{$obj->mP[ 'billing_street' ]}<br/>
						{$obj->mP[ 'billing_city' ]},
						{$obj->mP[ 'billing_state'  ]} 
						{$obj->mP[ 'billing_zip' ]}<br/>				
		</div>
	</div>
	<div class=panel-footer>
		<p>
			<input type=submit class="btn btn-default btn-primary btn-lg" name="class_child_sign_up_finalize" value="Complete Application&raquo;">
		</p>
	</div>
</div>
</form>