{load_presentation_object filename="openPlayRegistrationStep3" assign="obj"}
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
<div class=row>
	<div class=col-md-7>
		<form method=post role="form">
			<input type=hidden name=first_name value="{$obj->mP[ 'first_name' ]}">
			<input type=hidden name=last_name value="{$obj->mP[ 'last_name' ]}">
			<input type=hidden name=dob value="{$obj->mP[ 'dob' ]}">
			<input type=hidden name=gender value="{$obj->mP[ 'gender' ]}">
			
			<input type=hidden name=parent1_name value="{$obj->mP[ 'parent1_name' ]}">
			<input type=hidden name=parent1_cell_phone value="{$obj->mP[ 'parent1_cell_phone' ]}">
			<input type=hidden name=parent1_work_phone value="{$obj->mP[ 'parent1_work_phone' ]}">
			<input type=hidden name=parent1_email value="{$obj->mP[ 'parent1_email' ]}">
			
			<input type=hidden name=parent2_name value="{$obj->mP[ 'parent2_name' ]}">
			<input type=hidden name=parent2_cell_phone value="{$obj->mP[ 'parent2_cell_phone' ]}">
			<input type=hidden name=parent2_work_phone value="{$obj->mP[ 'parent2_work_phone' ]}">
			<input type=hidden name=parent2_email value="{$obj->mP[ 'parent2_email' ]}">
			
			<input type=hidden name=street value="{$obj->mP[ 'street' ]}">
			<input type=hidden name=street1 value="{$obj->mP[ 'street1' ]}">
			<input type=hidden name=city value="{$obj->mP[ 'city' ]}">
			<input type=hidden name=state value="{$obj->mP[ 'state' ]}">
			<input type=hidden name=zip value="{$obj->mP[ 'zip' ]}">
			
			<input type=hidden name=emergency_relation value="{$obj->mP[ 'emergency_relation' ]}">
			<input type=hidden name=emergency_name value="{$obj->mP[ 'emergency_name' ]}">
			<input type=hidden name=emergency_phone value="{$obj->mP[ 'emergency_phone' ]}">
			<input type=hidden name=caregiver_name value="{$obj->mP[ 'caregiver_name' ]}">
			<input type=hidden name=caregiver_phone value="{$obj->mP[ 'caregiver_phone' ]}">
			
			<div class="panel panel-default">
				<div class=panel-heading><h1>Payment Info</h1></div>
				<div class=panel-body>
					<div class="form-group {if $obj->mErrors[ 'cardType' ]}has-error{/if}">
						<label for="cardType" class="col-md-3 control-label">Card type</label>
						<div class=col-md-8>
							<select name=cardType class="form-control">
								<option value="Visa">Visa</option>
								<option value="Mastercard">Mastercard</option>
								<option value="Discover">Discover</option>
								<option value="American Express">American Express</option>
							</select>
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'name_on_card' ]}has-error{/if}">
						<label for=name_on_card class="col-md-3 control-label">Name on card</label>
						<div class="col-md-8">
							<input type=text  name=name_on_card class=form-control placeholder="name on card" value="{$obj->mP[ 'name_on_card' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'cardNumber' ]}has-error{/if}">
						<label for="cardNumber" class="col-md-3 control-label">Card number</label>
						<div class="col-md-8">
							<input type=text name=cardNumber class=form-control placeholder="card number" value="{$obj->mP[ 'cardNumber' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'expiration_date' ]}has-error{/if}">
						<label for="expiration_date" class="col-md-3 control-label">Expiration date</label>
						<div class="col-md-8">
							<input type=text name=expiration_date class=form-control placeholder="expiration date" value="{$obj->mP[ 'expiration_date' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'authorization_code' ]}has-error{/if}">
						<label for="authorization_code" class="col-md-3 control-label">Authorization code</label>
						<div class="col-md-8">
							<input type=text name=authorization_code class=form-control placeholder="authorization code" value="{$obj->mP[ 'authorization_code' ]}">
						</div>
					</div>
					<div class=clear></div>
					<legend>Billing Address</legend>
					
					<div class="form-group {if $obj->mErrors[ 'billing_street' ]}has-error{/if}">
						<label for="billing_street" class="col-md-3 control-label">Street</label>
						<div class="col-md-8">
							<input type=text name=billing_street class=form-control placeholder="billing street" value="{$obj->mP[ 'billing_street' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'billing_city' ]}has-error{/if}">
						<label for="billing_city" class="col-md-3 control-label">City</label>
						<div class="col-md-8">
							<input type=text name=billing_city class=form-control placeholder="billing city" value="{$obj->mP[ 'billing_city' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'billing_state' ]}has-error{/if}">
						<label for="billing_state" class="col-md-3 control-label">State</label>
						<div class=col-md-8>
							<select name=billing_state class=form-control>
								<option value="AL">Alabama</option>
								<option value="AK">Alaska</option>
								<option value="AZ">Arizona</option>
								<option value="AR">Arkansas</option>
								<option value="CA">California</option>
								<option value="CO">Colorado</option>
								<option value="CT">Connecticut</option>
								<option value="DE">Delaware</option>
								<option value="DC">District Of Columbia</option>
								<option value="FL">Florida</option>
								<option value="GA">Georgia</option>
								<option value="HI">Hawaii</option>
								<option value="ID">Idaho</option>
								<option value="IL">Illinois</option>
								<option value="IN">Indiana</option>
								<option value="IA">Iowa</option>
								<option value="KS">Kansas</option>
								<option value="KY">Kentucky</option>
								<option value="LA">Louisiana</option>
								<option value="ME">Maine</option>
								<option value="MD">Maryland</option>
								<option value="MA">Massachusetts</option>
								<option value="MI">Michigan</option>
								<option value="MN">Minnesota</option>
								<option value="MS">Mississippi</option>
								<option value="MO">Missouri</option>
								<option value="MT">Montana</option>
								<option value="NE">Nebraska</option>
								<option value="NV">Nevada</option>
								<option value="NH">New Hampshire</option>
								<option value="NJ">New Jersey</option>
								<option value="NM">New Mexico</option>
								<option value="NY">New York</option>
								<option value="NC">North Carolina</option>
								<option value="ND">North Dakota</option>
								<option value="OH">Ohio</option>
								<option value="OK">Oklahoma</option>
								<option value="OR">Oregon</option>
								<option value="PA">Pennsylvania</option>
								<option value="RI">Rhode Island</option>
								<option value="SC">South Carolina</option>
								<option value="SD">South Dakota</option>
								<option value="TN">Tennessee</option>
								<option value="TX">Texas</option>
								<option value="UT">Utah</option>
								<option value="VT">Vermont</option>
								<option value="VA">Virginia</option>
								<option value="WA">Washington</option>
								<option value="WV">West Virginia</option>
								<option value="WI">Wisconsin</option>
								<option value="WY">Wyoming</option>
							</select>
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'billing_zip' ]}has-error{/if}">
						<label for=billing_zip class="col-md-3 control-label">Zip</label>
						<div class="col-md-8">
							<input type=text name=billing_zip maxlength=5 size=5 class=form-control placeholder="billing zip" value="{$obj->mP[ 'billing_zip' ]}">
						</div>
					</div>
				</div>
				<div class=panel-footer>
					<p><input type=submit class="btn btn-default btn-primary btn-lg" name="tgp_openplay_registration_step3" value="Continue&raquo;"></p>
				</div>
			</div>
		</form>
	</div>
	<div class=col-md-5>
		<div class="panel-default">
			<div class=panel-heading><h1>Application review</h1></div>
			<div class=panel-body>
					<div class=list-group>
						<li class=list-group-item>
							<h3 class=list-group-item-heading>Package Info</h3>
							<p class=list-group-item-text>
								{$obj->mPackage.type} - {$obj->mPackage.title} <span class=badge>${$obj->mPackage.price}.00</span>
							</p>
						</li>
						<li class="list-group-item">
							<h3 class=list-group-item-heading>Weekly Classes</h3>
							<p class=list-group-item-text>
						{section name=i loop=$obj->mClasses}
							{$obj->mClasses[ i ].weekday} {date( 'g:ia', strtotime( $obj->mClasses[ i ].start_time ) )} - {date( 'g:ia', strtotime( $obj->mClasses[ i ].end_time ) )}<br/>
						{/section}
							</p>
						</li>
					</div>
			</div>
			<div class=panel-footer>
				<h3>Relationship to participant</h3>
				{$obj->mRelation}
				
				<h3>Child Information</h3>
				<p>
					{$obj->mP[ 'first_name' ]} {$obj->mP[ 'last_name' ]} -- 
					{$obj->mP[ 'dob' ]} --
					{$obj->mP[ 'gender' ]}
				</p>
				<h3>Contact Information</h3>
				<p>
					Parent 1:<br/>
					{$obj->mP[ 'parent1_name' ]}<br/>
					{if !empty( $obj->mP[ 'parent1_cell_phone' ] )}
						{$obj->mP[ 'parent1_cell_phone' ]} --
					{/if}
					{if !empty( $obj->mP[ 'parent1_work_phone' ] ) }
						{$obj->mP[ 'parent1_work_phone' ]} --
					{/if}
					{$obj->mP[ 'parent1_email' ]}
				</p>
				<p>
					Parent 2:<br/>
					{$obj->mP[ 'parent2_name' ]}<br/>
					{if !empty( $obj->mP[ 'parent2_cell_phone' ] )}
						{$obj->mP[ 'parent2_cell_phone' ]} -- 
					{/if}
					{if !empty( $obj->mP[ 'parent2_work_phone' ] ) }
						{$obj->mP[ 'parent2_work_phone' ]} -- 
					{/if}
					{$obj->mP[ 'parent2_email' ]}
				</p>
				<p>
					Address<br/>
					{$obj->mP[ 'street' ]},
					{$obj->mP[ 'city' ]}, 
					{$obj->mP[ 'state' ]}  
					{$obj->mP[ 'zip' ]}<br/>
				</p>
				<p>
					Emergency Contact<br/>
					{$obj->mP[ 'emergency_relation' ]} --
					{$obj->mP[ 'emergency_name' ]} --
					{$obj->mP[ 'emergency_phone' ]}
				</p>
				<p>
					Caregiver Info<br/>
					{$obj->mP[ 'caregiver_name' ]} --
					{$obj->mP[ 'caregiver_phone' ]}<br/>
				</p>
			</div>
		</div>	
	</div>
</div>