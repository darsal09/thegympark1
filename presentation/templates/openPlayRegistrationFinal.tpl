{load_presentation_object filename="openPlayRegistrationFinal" assign="obj"}
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

<div class=row>
	<div class=col-md-7>
		<div class="panel panel-default">
			<div class=panel-heading><h1>Registration Form Summary</h1></div>
			<div class=panel-body>
				<p>
					Please review your application and make any necessary changes if needed.
				</p>
					<div class="row">
						<h2 class="bg-info">Participant Information</h2>
						<div class="panel panel-warning">
							<div class=panel-heading><h4>Child Info: <span style="float:right;"><a href=""><span class="glyphicon glyphicon-pencil"></span></a></span></h4></div>
							<div class=panel-body>
								<p>
									{$obj->mP[ 'first_name' ]} {$obj->mP[ 'last_name' ]}<br/>
									{$obj->mP[ 'dob' ]}<br/>
									{$obj->mP[ 'gender' ]}
								</p>
							</div>	
						</div>	
					</div>
					<div class=row>
						<h2 class="bg-info">Contact Info</h2>
						<div class=col-md-4>
							<div class="panel panel-warning">
								<div class=panel-heading><h4>Parent 1: <span style="float:right;"><a href=""><span class="glyphicon glyphicon-pencil"></span></a></span></h4></div>
								<div class=panel-body>
									<p>
										{$obj->mP[ 'parent1_name' ]}<br/>
										{if !empty( $this->mP[ 'parent1_cell_phone' ] )}
											{$obj->mP[ 'parent1_cell_phone' ]}<br/>
										{/if}
										{if !empty( $obj->mP[ 'parent1_work_phone' ] )}
											{$obj->mP[ 'parent1_work_phone' ]}<br/>
										{/if}
										{$obj->mP[ 'parent1_email' ]}
									</p>
								</div>
							</div>
						</div>
						<div class=col-md-4>
							<div class="panel panel-warning">
								<div class=panel-heading><h4>Parent 2: <span style="float:right;"><a href=""><span class="glyphicon glyphicon-pencil"></span></a></span></h4></div>
								<div class=panel-body>
									<p>
										{$obj->mP[ 'parent2_name' ]}<br/>
										{if !empty( $obj->mP[ 'parent2_cell_phone' ] )}
											{$obj->mP[ 'parent2_cell_phone' ]}<br/>
										{/if}
										{if !empty( $obj->mP[ 'parent2_work_phone' ] )}
											{$obj->mP[ 'parent2_work_phone' ]}<br/>
										{/if}
										{$obj->mP[ 'parent2_email' ]}
									</p>
								</div>
							</div>
						</div>
						<div class=col-md-4>
							<div class="panel panel-warning">
								<div class=panel-heading><h4>Address: <span style="float:right;"><a href=""><span class="glyphicon glyphicon-pencil"></span></a></span></h4></div>
								<div class=panel-body>
									<p>
										{$obj->mP[ 'street' ]} {$obj->mP[ 'street1' ]} <br/>
										{$obj->mP[ 'city' ]},
										{$obj->mP[ 'state'  ]} 
										{$obj->mP[ 'zip' ]}<br/>
									</p>
								</div>
							</div>
						</div>
					</div>
			</div>
			<div class=panel-footer>
				<p><input type=submit class="btn btn-default btn-primary btn-lg" name="tgp_openplay_registration_finalize" value="Complete Application&raquo;"></p>
			</div>
		</div>
	</div>
	<div class=col-md-5>
		<div class="panel-default">
			<div class=panel-heading>
					<h1>Open Play Information</h1>
			</div>
			<div class=panel-body>
				<div class=list-group>
							<li class=list-group-item>
								<h3 class=list-group-item-heading>Package Info</h3>
								<p class=list-group-item-text>
									{$obj->mPackage.type} - {$obj->mPackage.title} <span class="label label-default label-danger"><large>${$obj->mPackage.price}.00</large></span>
								</p>
							</li>
							<li class="list-group-item">
								<h3 class=list-group-item-heading>Available Classes</h3>
								<p>	Below are the classes you can visit with your open play pass in the 
								<b>{$obj->mSeason.title} season from {date( 'F jS, Y', strtotime( $obj->mSeason.start_date ) )} to {date( 'F jS, Y', strtotime( $obj->mSeason.end_date ) )}</b><br/>
								</p>
								<p class=list-group-item-text>
									
									{section name=i loop=$obj->mClasses}
										{$obj->mClasses[ i ].weekday} {date( 'g:ia', strtotime( $obj->mClasses[ i ].start_time ) )} - {date( 'g:ia', strtotime( $obj->mClasses[ i ].end_time ) )}<br/>
									{/section}
								</p>
							</li>
				</div>
			</div>
			<div class=panel-footer>
				<div class=row>
						<h2 class="bg-info">Payment Info</h2>
						<div class="col-sm-6">
							<div class="panel panel-warning">
								<div class=panel-heading><h4>Card Info: <span style="float:right;"><a href=""><span class="glyphicon glyphicon-pencil"></span></a></span></h4></div>
								<div class=panel-body>
									<p>
										{$obj->mP[ 'name_on_card' ]}<br/>
										{$obj->mP[ 'cardType' ]} -
										{substr( $obj->mP[ 'cardNumber'  ], ( strlen( $obj->mP[ 'cardNumber' ] ) - 4 ), strlen( $obj->mP[ 'cardNumber' ] )  )}<br/>
										{$obj->mP[ 'expiration_date' ]}<br/>
										{$obj->mP[ 'authorization_code' ]}<br/>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="panel panel-warning">
								<div class=panel-heading>
									<h4>Billing Address: <span style="float:right;"><a href=""><span class="glyphicon glyphicon-pencil"></span></a></span></h4>
								</div>
								<div class=panel-body>
									<p>
										{$obj->mP[ 'billing_street' ]}<br/>
										{$obj->mP[ 'billing_city' ]}, 
										{$obj->mP[ 'billing_state'  ]} 
										{$obj->mP[ 'billing_zip' ]}<br/>				
									</p>
								</div>
							</div>
						</div>
				</div>
				<h2>Charges</h2>
				<p>
					Your card will be charged: ${$obj->mPackage.price}.00
					+ $50.00<br/>
					Total: ${$obj->mPackage.price + 50}.00
				</p>
			</div>
		</div>
	</div>
</div>
</form>