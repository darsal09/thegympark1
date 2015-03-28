{load_presentation_object filename="registerPayment" assign="obj"}
<h1>
	Registering {$obj->mMemberInfo.first}:
</h1>
<table class="table table-responsive">
	<thead>
		<tr><th>Title</th><th>Weekday</th><th>Start Time</th><th>Start</th><th>End Date</th><th>Options</th></tr>
	</thead>
	<tbody>
		<tr>
			<td>
				{$obj->mClassInfo.title}
			</td>
			<td>
				{$obj->mClassInfo.weekday}
			</td>
			<td>
				{date( 'g:ia', strtotime( $obj->mClassInfo.start_time  ) )}
			</td>
			<td>
				{if $obj->mOption == 'First'}
					{date( 'M. jS, Y', strtotime( $obj->mClassInfo.start_date ) )}
				{elseif $obj->mOption == 'Last'}
					{date( 'M. jS, Y', strtotime( '+9 weeks', strtotime( $obj->mClassInfo.start_date ) ) )}
				{else}
					{date( 'M. jS, Y', strtotime( $obj->mClassInfo.start_date ) )}
				{/if}
			</td>
			<td>
				{if $obj->mOption == 'First'}
					{date( 'M. jS, Y', strtotime( '+8 weeks', strtotime( $obj->mClassInfo.start_date ) ) )}
				{elseif $obj->mOption == 'Last'}
					{date( 'M. jS, Y', strtotime( $obj->mClassInfo.end_date ) )}
				{else}
					{date( 'M. jS, Y', strtotime( $obj->mClassInfo.end_date ) )}
				{/if}
			</td>
			<td>		
				<a href="{$obj->mLinkToClasses}">Change class</a>
			</td>
		</tr>
	</tbody>
</table>

<form method=post>
	<fieldset>
		<legend><h3>Contact Info</h3></legend>
			{if !empty( $obj->mContactInfo.email )}
				<div class=row>We have the following information in the system. Please make any changes neccessary to the information display or add new information.</div>
			{else}
				<div class="row error">We don't have any contact information for {$obj->mMemberInfo.first}, please provide us her/his contact information.</div>
			{/if}
		<div class=row>
			<input type=hidden name=:contact_info_id value="{$obj->mContactInfo.id}">
			
			<div class="form-group">
				<label for=homePhone class="col-sm-2 control-label">Home Phone</label>
				<div class=col-sm-10>
						<input type=text  class=form-control name=:homePhone placeholder="new home phone" value="{$obj->mContactInfo.homePhone}">
				</div>
			</div>
			<div class="form-group">
				<label for=workPhone class="col-sm-2 control-label">Work Phone</label>
				<div class=col-sm-10>
					<input type=text class=form-control name=:workPhone placeholder="new work phone" value="{$obj->mContactInfo.workPhone}">
				</div>
			</div>
			<div class="form-group">
				<label for=cellPhone class="col-sm-2 control-label">Cell Phone</label>
				<div class=col-sm-10>
					<input type=text class=form-control name=:cellPhone placeholder="new cell phone" value="{$obj->mContactInfo.cellPhone}">
				</div>
			</div>
			<div class="form-group">
				<label for=:email class="col-sm-2 control-label">Email</label>
				<div class=col-sm-10>
					<input type=text class=form-control name=:email placeholder="new email" value="{$obj->mContactInfo.email}">
				</div>
			</div>
		</div>
		<legend><h3>Emergency Contact Info <span id=new_emergency_link style="display:none;float:right;"><a href="javascript:show( 'new_emergency' );">Add Emergency Contact</a></span></h3></legend>
			<div class=row>
		{if !empty( $obj->mEmergencyInfo )}
				<div class="form-group">
					<label for=:emergency_info_id class="col-sm-2 control-label">Contacts on file:</label>
					<div class=col-sm-10>
						{section name=i loop=$obj->mEmergencyInfo}
							<input type=radio onClick="hide( 'new_emergency' ); show( 'new_emergency_link' );" name=:emergency_info_id value="{$obj->mEmergencyInfo[ i ].id}"> {$obj->mEmergencyInfo[ i ].name} - {$obj->mEmergencyInfo[ i ].cellPhone}<br/>
						{/section}
					</div>
				</div>
			</div>
			<div class=row id=new_emergency>			
				<h4>New emergency contact:</h4>
		{else}
			<p class=error>Our system indicate there is no emergency contact for {$obj->mMemberInfo.first}. Please provide us an emergency contact info for our records.</p>
		{/if}
			<div class="form-group">
				<label for=:emergy_relation class="col-sm-2 control-label">Relation</label>
				<div class=col-sm-10>
						<input type=radio name=:emergency_relation value="Family"> Family &nbsp; &nbsp; 
						<input type=radio name=:emergency_relation value="Friend"> Friend
				</div>
			</div>
			<div class=clear></div>
			<div class="form-group">
				<label for=:emergency_name class="col-sm-2 control-label">Name</label>
				<div class=col-sm-10>
					<input type=text class=form-control name=:emergency_name placeholder="new emergency contact person's name" value="">
				</div>
			</div>
			<div class="form-group">
				<label for=:emergency_phone class="col-sm-2 control-label">Phone</label>
				<div class=col-sm-10>
					<input type=text class=form-control name=:emergency_phone placeholder="new emergency contact person's phone" value="">
				</div>
			</div>
		</div>
	
		<legend><h3>Payment <span style="display:none;float:right;" id=new_contact_link><a href="javascript:show( 'new_contact' ); javascript:clearRadios( 'card_on_file' );">Add Credit Card</a></span></h3></legend>
		<div class=row id="old_cards">
			{if !empty( $obj->mCard )}
			<div class="form-group">
				<label for=card_on_file class="col-sm-2 control-label">Cards on file</label>
				<div class=col-sm-10>
					{section name=i loop=$obj->mCard}
						<input type=radio onClick="hide( 'new_contact' ); show( 'new_contact_link' );" name=card_on_file value="{$obj->mCard[ i ].id}"> {$obj->mCard[ i ].card.name} - {$obj->mCard[ i ].card.last4}<br/>
					{/section}
				</div>
			</div>
		</div>
		<div class=clear></div>
		<div class=row id=new_contact>
			{/if}
			<div class="form-group {if $obj->mErrors.cardType}has-error{/if}">
				<label for="cardType" class="col-sm-2 control-label">Card type</label>
				<div class=col-sm-10>
					<input type=radio name=cardType value="Visa"> Visa &nbsp;&nbsp;
					<input type=radio name=cardType value="Mastercard"> Mastercard &nbsp;&nbsp;
					<input type=radio name=cardType value="Discover"> Discover &nbsp;&nbsp;
					<input type=radio name=cardType value="American Express"> American Express
				</div>
			</div>
			<div class=clear></div>
			<div class="form-group {if $obj->mErrors.name_on_card}has-error{/if}">
				<label for=name_on_card class="col-sm-3 control-label">Name on card</label>
				<div class="col-sm-9">
					<input type=text  name=name_on_card class=form-control placeholder="name on card" value="{$obj->mP[ 'name_on_card' ]}">
				</div>
			</div>
			<div class="form-group {if $obj->mErrors.cardNumber}has-error{/if}">
				<label for=cardNumber class="col-sm-3 control-label">Card number</label>
				<div class="col-sm-9">
					<input type=text name=cardNumber class=form-control placeholder="card number" value="{$obj->mP[ 'cardNumber' ]}">
				</div>
			</div>
			<div class="form-group {if $obj->mErrors.expiration_date}has-error{/if}">
				<label for="expiration_date" class="col-sm-3 control-label">Expiration date</label>
				<div class="col-sm-9">
					<input type=text name=expiration_date class=form-control placeholder="expiration date" value="{$obj->mP[ 'expiration_date' ]}">
				</div>
			</div>
			<div class="form-group {if $obj->mErrors.authorization_code}has-error{/if}">
				<label for="authorization_code" class="col-sm-3 control-label">Authorization code</label>
				<div class="col-sm-9">
					<input type=text name=authorization_code class=form-control placeholder="authorization code" value="{$obj->mP[ 'authorization_code' ]}">
				</div>
			</div>
				<legend><h3>Billing Address</h3></legend>
				
				<div class="form-group {if $obj->mErrors.billing_street}has-error{/if}">
					<label for="billing_street" class="col-sm-2 control-label">Street</label>
					<div class="col-sm-10">
						<input type=text name=billing_street placeholder="billing street" value="{$obj->mP[ 'billing_street' ]}">
					</div>
				</div>
				<div class="form-group {if $obj->mErrors.billing_city}has-error{/if}">
					<label for="billing_city" class="col-sm-2 control-label">City</label>
					<div class="col-sm-10">
						<input type=text name=billing_city placeholder="billing city" value="{$obj->mP[ 'billing_city' ]}">
					</div>
				</div>
				<div class="form-group {if $obj->mErrors.billing_state}has-error{/if}">
					<label for="billing_state" class="col-sm-2 control-label">State</label>
					<div class=col-sm-10>
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
				<div class="form-group {if $obj->mErrors.billing_zip}has-error{/if}">
					<label for=billing_zip class="col-sm-2 control-label">Zip</label>
					<div class="col-sm-10">
						<input type=text name=billing_zip maxlength=5 size=5 placeholder="billing zip" value="{$obj->mP[ 'billing_zip' ]}">
					</div>
				</div>
			</div>
		<div class=row>
			<div class="form-group">
				<div class="col-sm-10">	
					<input type=submit class="btn btn-default btn-primary btn-lg" name="register_payment_save" value="Continue&raquo;">
				</div>
			</div>
		</div>
	</fieldset>
</form>

<script>
function clearRadios( inputs )
{
	var options = document.getElementByName( inputs );
	
	var size = options.length;
	
	for( var i = 0; i < size; i++ )
	{
		if( options[ i ].checked )
		{
			options[ i ].checked = false;
			return;
		}
	}
}
</script>