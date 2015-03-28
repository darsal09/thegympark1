{load_presentation_object filename="classSignUpStep3" assign="obj"}
<form method=post>
	<input type=hidden name=first_name value="{$obj->mP[ 'first_name' ]}">
	<input type=hidden name=last_name value="{$obj->mP[ 'last_name' ]}">
	<input type=hidden name=dob value="{$obj->mP[ 'dob' ]}">
	<input type=hidden name=gender value="{$obj->mP[ 'gender' ]}">
	<input type=hidden name=home_phone value="{$obj->mP[ 'home_phone' ]}">
	<input type=hidden name=work_phone value="{$obj->mP[ 'work_phone' ]}">
	<input type=hidden name=cell_phone value="{$obj->mP[ 'cell_phone' ]}">
	<input type=hidden name=email value="{$obj->mP[ 'email' ]}">
	<input type=hidden name=street value="{$obj->mP[ 'street' ]}">
	<input type=hidden name=street1 value="{$obj->mP[ 'street1' ]}">
	<input type=hidden name=city value="{$obj->mP[ 'city' ]}">
	<input type=hidden name=state value="{$obj->mP[ 'state' ]}">
	<input type=hidden name=zip value="{$obj->mP[ 'zip' ]}">
	<input type=hidden name=emergency_relation value="{$obj->mP[ 'emergency_relation' ]}">
	<input type=hidden name=emergency_name value="{$obj->mP[ 'emergency_name' ]}">
	<input type=hidden name=emergency_phone value="{$obj->mP[ 'emergency_phone' ]}">

	<div class=row>
		<div class=col-md-7>
			<div class="panel panel-default">
				<div class=panel-heading><h1>Payment</h1></div>
				<div class=panel-body>
					<div class=form-group>
						<label for="cardType" class="col-md-3 control-label">Card type</label>
						<div class=col-md-9>
							<select name=cardType class="form-control">
								<option value="Visa">Visa</option>
								<option value="Mastercard">Mastercard</option>
								<option value="Discover">Discover</option>
								<option value="American Express">American Express</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for=name_on_card class="col-md-3 control-label">Name on card</label>
						<div class="col-md-9">
							<input type=text  name=name_on_card placeholder="name on card" value="{$obj->mP[ 'name_on_card' ]}">
						</div>
					</div>
					<div class="form-group">
						<label for="cardNumber" class="col-md-3 control-label">Card number</label>
						<div class="col-md-9">
							<input type=text name=cardNumber placeholder="card number" value="{$obj->mP[ 'cardNumber' ]}">
						</div>
					</div>
					<div class="form-group">
						<label for="expiration_date" class="col-md-3 control-label">Expiration date</label>
						<div class="col-md-9">
							<input type=text name=expiration_date placeholder="expiration date" value="{$obj->mP[ 'expiration_date' ]}">
						</div>
					</div>
					<div class="form-group">
						<label for="authorization_code" class="col-md-3 control-label">Authorization code</label>
						<div class="col-md-9">
							<input type=text name=authorization_code placeholder="authorization code" value="{$obj->mP[ 'authorization_code' ]}">
						</div>
					</div>
					<div>&nbsp;</div>
					<legend>Billing Address</legend>
					
					<div class="form-group">
						<label for="billing_street" class="col-md-3 control-label">Street</label>
						<div class="col-md-9">
							<input type=text name=billing_street placeholder="billing street" value="{$obj->mP[ 'billing_street' ]}">
						</div>
					</div>
					<div class="form-group">
						<label for="billing_city" class="col-md-3 control-label">City</label>
						<div class="col-md-9">
							<input type=text name=billing_city placeholder="billing city" value="{$obj->mP[ 'billing_city' ]}">
						</div>
					</div>
					<div class="form-group">
						<label for="billing_state" class="col-md-3 control-label">State</label>
						<div class=col-md-9>
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
					<div class="form-group">
						<label for=billing_zip class="col-md-3 control-label">Zip</label>
						<div class="col-md-9">
							<input type=text name=billing_zip maxlength=5 size=5 placeholder="billing zip" value="{$obj->mP[ 'billing_zip' ]}">
						</div>
					</div>
				</div>
				<div class=panel-footer>
					<input type=submit class="btn btn-default btn-primary btn-lg" name="class_sign_up_adult_step3" value="Continue&raquo;">
				</div>
			</div>
		</div>
		<div class=col-md-5>
			<div class="panel-default">
				<div class=panel-heading>
					<h1>Application Information</h1>
				</div>
				<div class=panel-body>
					<h3>Class Information</h3>
					<p>
						{$obj->mClassInfo[ 'title' ]}<br/>
						{$obj->mClassInfo[ 'weekday' ]}s at {date( 'g:ia', strtotime( $obj->mClassInfo[ 'start_time' ]) )} - {date( 'g:ia', strtotime( $obj->mClassInfo[ 'end_time' ] ) )}<br/>
						Dates {date( 'M jS, Y', strtotime( $obj->mClassInfo[ 'begin' ] ) )} - {date( 'M jS, Y', strtotime( $obj->mClassInfo[ 'end' ] ) )}<br/>
					</p>
					<p>
						<span class="label label-lg label-primary">Price ${$obj->mClassInfo[ 'price' ]}.00</span>
					</p>
					
				</div>
				<div class=panel-footer>
					<h3>Signing</h3>
					<p>
						{$obj->mRelation}<br/>
						{$obj->mP[ 'first_name' ]} {$obj->mP[ 'last_name' ]}<br/>
						{$obj->mP[ 'dob' ]}<br/>
						{$obj->mP[ 'gender' ]}
					</p>
					<p>
						Contact<br/>
						{if !empty( $obj->mP[ 'home_phone' ] )}
							{$obj->mP[ 'home_phone' ]}<br/>
						{/if}
						{if !empty( $obj->mP[ 'work_phone' ] ) }
							{$obj->mP[ 'work_phone' ]}<br/>
						{/if}
						{if !empty( $obj->mP[ 'cell_phone' ] ) }
							{$obj->mP[ 'cell_phone' ]}<br/>
						{/if}
						{$obj->mP[ 'email' ]}<br/>
					</p>
					<p>
						Address<br/>
						{$obj->mP[ 'street' ]}<br/>
						{$obj->mP[ 'city' ]}, 
						{$obj->mP[ 'state' ]} 
						{$obj->mP[ 'zip' ]}<br/>
					</p>
					<p>
						Emergency Contact<br/>
						{$obj->mP[ 'emergency_relation' ]}<br/>
						{$obj->mP[ 'emergency_name' ]}<br/>
						{$obj->mP[ 'emergency_phone' ]}<br/>
						
					</p>
				</div>
			</div>				
		</div>
	</div>
</form>