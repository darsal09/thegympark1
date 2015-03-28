{load_presentation_object filename="classSignChildStep2" assign="obj"}
<div class=row>
	<div class=col-md-8>
		<form method=post role="form">
			<input type=hidden name=first_name value="{$obj->mP[ 'first_name' ]}">
			<input type=hidden name=last_name value="{$obj->mP[ 'last_name' ]}">
			<input type=hidden name=dob value="{$obj->mP[ 'dob' ]}">
			<input type=hidden name=gender value="{$obj->mP[ 'gender' ]}">
			
			<div class="panel panel-default">
				<div class=panel-heading><h1>Contact Information</h1></div>
				<div class=panel-body>
					<legend><h3>Parent 1</h3></legend>
					<div class=form-group>
						<label for=parent1_name class="col-md-3 control-label">Name</label>
						<div class="col-md-9">
							<input type=text name=parent1_name class=form-control placeholder="parent 1: name" value="">
						</div>
					</div>
					<div class=form-group>
						<label for=paren1_cell_phone class="col-md-3 control-label">Cell Phone</label>
						<div class="col-md-9">
							<input type=text name=parent1_cell_phone class=form-control placeholder="parent 1: cell phone" value="">
						</div>
					</div>
					<div class=form-group>
						<label for=parent1_work_phone class="col-md-3 control-label">Work Phone</label>
						<div class="col-md-9">
							<input type=text name=parent1_work_phone class=form-control placeholder="parent 1: work phone" value="">
						</div>
					</div>
					<div class=form-group>
						<label for=parent1_email class="col-md-3 control-label">Email</label>
						<div class="col-md-9">
							<input type=text name=parent1_email class=form-control placeholder="parent 1: email" value="">
						</div>
					</div>

					<legend><h3>Parent 2</h3></legend>
					<div class=form-group>
						<label for=parent2_name class="col-md-3 control-label">Name</label>
						<div class="col-md-9">
							<input type=text name=parent2_name class=form-control placeholder="parent 2: name" value="">
						</div>
					</div>
					<div class=form-group>
						<label for=parent2_cell_phone class="col-md-3 control-label">Cell Phone</label>
						<div class="col-md-9">
							<input type=text name=parent2_cell_phone class=form-control placeholder="parent 2: cell phone" value="">
						</div>
					</div>
					<div class=form-group>
						<label for=parent2_work_phone class="col-md-3 control-label">Work Phone</label>
						<div class="col-md-9">
							<input type=text name=parent2_work_phone class=form-control placeholder="parent 2: work phone" value="">
						</div>
					</div>
					<div class=form-group>
						<label for=parent2_email class="col-md-3 control-label">Email</label>
						<div class="col-md-9">
							<input type=text name=parent2_email class=form-control placeholder="parent 2: email" value="">
						</div>
					</div>
					
					<legend>Address</legend>
					<div class=form-group>
						<label for=street class="col-md-3 control-label">House Address</label>
						<div class="col-md-9">
							<input type=text name=street class=form-control placeholder="Street address" value="">
						</div>
					</div>
					<div class=form-group>
						<label for=city class="col-md-3 control-label">City</label>
						<div class="col-md-9">
							<input type=text name=city class=form-control placeholder="city" value="">
						</div>
					</div>
					<div class=form-group>
						<label for=state class="col-md-3 control-label">State</label>
						<div class="col-md-9">
							<input type=text name=state class=form-control placeholder="state" value="">
						</div>
					</div>
					<div class=form-group>
						<label for=zip class="col-md-3 control-label">Zip</label>
						<div class="col-md-9">
							<input type=text name=zip class=form-control placeholder="zip" value="">
						</div>
					</div>
					
					<legend><h3>Emergency Contact Info</h3></legend>
					
					<div class=form-group>
						<label for=emergency_relation class="col-md-12">Relation</label>
						<div class="col-md-3">
						</div>
						<div class=col-md-9>
							<div class="radio col-md-12">
								<label class="{if $obj->mErrors[ 'gender' ]}has-error{/if}">
									<input type=radio name=emergency_relation value="Family"> Family
								</label>
							</div>
							<div class="radio col-md-12">
								<label class="{if $obj->mErrors[ 'gender' ]}has-error{/if}">
									<input type=radio name=emergency_relation value="Friend"> Friend
								</label>
							</div>
						</div>
					</div>
					<div class=clear></div>
					<div class=form-group>
						<label for=emergency_name class="col-md-3 control-label">Name</label>
						<div class="col-md-9">
							<input type=text name=emergency_name class=form-control  placeholder="emergency contact name" value="">
						</div>
					</div>
					<div class=form-group>
						<label for=emergency_phone class="col-md-3 control-label">Phone</label>
						<div class="col-md-9">
							<input type=text name=emergency_phone class=form-control placeholder="emergency contact phone" value="">
						</div>
					</div>

					<legend><h3>Caregiver Info</h3></legend>
					<div class=form-group>
						<label for=caregiver_name class="col-md-3 control-label">Name</label>
						<div class="col-md-9">
							<input type=text name=caregiver_name class=form-control placeholder="caregiver name" value="">
						</div>
					</div>
					<div class=form-group>
						<label for=caregiver_phone class="col-md-3 control-label">Cell Phone</label>
						<div class="col-md-9">
							<input type=text name=caregiver_phone class=form-control placeholder="caregiver phone" value="">
						</div>
					</div>		
				</div>
				<div class=panel-footer>
					<p>
						<input type=submit class="btn btn-default btn-primary btn-lg" name="class_sign_up_child_step2" value="Continue&raquo;">
					</p>
				</div>
			</div>
		</form>
	</div>
	<div class=col-md-4>
		<div class=panel-default>
			<div class=panel-heading><h1>Application review</h1></div>
			<div class=panel-body>
				<h3>Class Info</h3>
				<p>
					{$obj->mClassInfo.title}<br/>
					{$obj->mClassInfo.weekday}s at {$obj->mClassInfo.start_time}<br/>
					Class Dates: {$obj->mClassInfo.begin} to {$obj->mClassInfo.end}<br/>
					Price: ${$obj->mClassInfo.Price}
				</p>
			</div>
			<div class=panel-footer>
				<h3>Registering child</h3>
				<p>
					{$obj->mP[ 'first_name' ]} {$obj->mP[ 'last_name' ]}<br/>
					{$obj->mP[ 'dob' ]}<br/>
					{$obj->mP[ 'gender' ]}
				</p>			
			</div>
		</div>
	</div>
</div>