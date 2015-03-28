{load_presentation_object filename="classSignUpStep2" assign="obj"}
<form method=post>
				<input type=hidden name=first_name value="{$obj->mP[ 'first_name' ]}">
				<input type=hidden name=last_name value="{$obj->mP[ 'last_name' ]}">
				<input type=hidden name=dob value="{$obj->mP[ 'dob' ]}">
				<input type=hidden name=gender value="{$obj->mP[ 'gender' ]}">
	<div class=row>
		<div class=col-md-7>
			<div class="panel panel-default">				
				<div class=panel-heading><h1>Contact Information</h1></div>
					
				<div class=panel-body>
						<div class="form-group {if $obj->mErrors[ 'adult_fields' ]}has-error{/if}">
							<label for="home_phone" class="col-md-3 control-label">Home phone</label>
							<div class="col-md-9">
								<input type=tel class=form-control name=home_phone placeholder="home phone" value="{$obj->mP[ 'home_phone' ]}">
							</div>
						</div>
						
						<div class="form-group {if $obj->mErrors[ 'adult_fields' ]}has-error{/if}">
							<label for=work_phone class="col-md-3 control-label">Work phone</label>
							<div class="col-md-9">
								<input type=tel class=form-control name=work_phone placeholder="work phone" value="{$obj->mP[ 'work_phone']}">
							</div>
						</div>
						<div class="form-group {if $obj->mErrors[ 'adult_fields' ]}has-error{/if}">
							<label for=cell_phone class="col-md-3 control-label">Cell phone</label>
							<div class="col-md-9">
								<input type=tel class=form-control name=cell_phone placeholder="cell phone" value="{$obj->mP[ 'cell_phone' ]}">
							</div>
						</div>
						<div class="form-group {if $obj->mErrors[ 'email' ]}has-error{/if}">
							<label for=email class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<input type=email class=form-control name=email placeholder="email" value="{$obj->mP[ 'email' ]}">
							</div>
						</div>
						
						<legend>Address</legend>
						<div class="form-group {if $obj->mErrors[ 'street' ]}has-error{/if}">
							<label for=street class="col-md-3 control-label">House Number</label>
							<div class="col-md-9">
								<input type=text class=form-control name=street placeholder="house number" value="{$obj->mP[ 'street' ]}">
							</div>
						</div>
						<div class="form-group">
							<label for=street1 class="col-md-3 control-label">Apt</label>
							<div class="col-md-9">
								<input type=text class=form-control name=street1 placeholder="apt" value="{$obj->mP[ 'street1' ]}">
							</div>
						</div> 
						<div class="form-group {if $obj->mErrors[ 'city' ]}has-error{/if}">
							<label for=city class="col-md-3 control-label">City</label>
							<div class="col-md-9">
								<input type=text class=form-control name=city placeholder="city" value="{$obj->mP[ 'city' ]}">
							</div>
						</div>
						<div class="form-group {if $obj->mErrors[ 'state' ]}has-error{/if}">
							<label for=state class="col-md-3 control-label">State</label>
							<div class="col-md-9">
								<input type=text class=form-control name=state placeholder="state" value="{$obj->mP[ 'state' ]}">
							</div>
						</div>
						<div class="form-group {if $obj->mErrors[ 'zip' ]}has-error{/if}">
							<label for=zip class="col-md-3 control-label">Zip</label>
							<div class="col-md-9">
								<input type=text class=form-control name=zip placeholder="zip" value="{$obj->mP[ 'zip' ]}">
							</div>
						</div>
						<legend>Emergency Contact</legend>
						<div class="form-group {if $obj->mErrors[ 'emergency_relation' ]}has-error{/if}">
							<label for=emergency_name class="col-md-3 control-label">Relation</label>
							<div class="col-md-9">
								<p>
									<input type=radio name="emergency_relation" {if $obj->mP[ 'emergency_relation' ] == 'Family'}checked{/if} value="Family"> Family &nbsp; &nbsp;
									<input type=radio name="emergency_relation" {if $obj->mP[ 'emergency_relation' ] == 'Friend'}checked{/if} value="Friend">Friend
								</p>
							</div>
						</div>
						<div class="form-group {if $obj->mErrors[ 'emergency_name' ]}has-error{/if}">
							<label for=emergency_name class="col-md-3 control-label">Name</label>
							<div class="col-md-9">
								<input type=text class=form-control name=emergency_name placeholder="emergency name" value="{$obj->mP[ 'emergency_name' ]}">
							</div>
						</div>
						<div class="form-group {if $obj->mErrors[ 'emergency_phone' ]}has-error{/if}">
							<label for=zip class="col-md-3 control-label">Phone</label>
							<div class="col-md-9">
								<input type=text class=form-control name=emergency_phone placeholder="emergency phone" value="{$obj->mP[ 'emergency_phone' ]}">
							</div>
						</div>
					</div>
				<div class=panel-footer>	
					<input type=submit class="btn btn-default btn-primary btn-lg" name="class_sign_up_adult_step2" value="Continue&raquo;">
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
						
				</div>
			</div>		
		</div>
	</div>
</form>
