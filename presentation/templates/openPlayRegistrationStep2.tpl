{load_presentation_object filename="openPlayRegistrationStep2" assign="obj"}
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
			
			<div class="panel panel-default">
				<div class=panel-heading><h1>Contact Information</h1></div>
				<div class=panel-body>
					<legend><h3>Parent 1</h3></legend>
					<div class="form-group {if $obj->mErrors[ 'parent1_name' ]}has-error{/if}">
						<label for=parent1_name class="col-md-3 control-label">Name</label>
						<div class="col-md-8">
							<input type=text name=parent1_name class=form-control placeholder="parent 1: name" value="{$obj->mP[ 'parent1_name' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'parent1_cell_phone' ]}has-error{/if}">
						<label for=paren1_cell_phone class="col-md-3 control-label">Cell Phone</label>
						<div class="col-md-8">
							<input type=tel name=parent1_cell_phone class=form-control placeholder="parent 1: cell phone" value="{$obj->mP[ 'parent1_cell_phone' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'parent1_work_phone' ]}has-error{/if}">
						<label for=parent1_work_phone class="col-md-3 control-label">Work Phone</label>
						<div class="col-md-8">
							<input type=tel name=parent1_work_phone class=form-control placeholder="parent 1: work phone" value="{$obj->mP[ 'parent1_work_phone' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'parent1_email' ]}has-error{/if}">
						<label for=parent1_email class="col-md-3 control-label">Email</label>
						<div class="col-md-8">
							<input type=email name=parent1_email class=form-control placeholder="parent 1: email" value="{$obj->mP[ 'parent1_email' ]}">
						</div>
					</div>

					<legend><h3>Parent 2</h3></legend>
					<div class="form-group {if $obj->mErrors[ 'parent2_name' ]}has-error{/if}">
						<label for=parent2_name class="col-md-3 control-label">Name</label>
						<div class="col-md-8">
							<input type=text name=parent2_name class=form-control placeholder="parent 2: name" value="{$obj->mP[ 'parent2_name' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'parent2_cell_phone' ]}has-error{/if}">
						<label for=parent2_cell_phone class="col-md-3 control-label">Cell Phone</label>
						<div class="col-md-8">
							<input type=tel name=parent2_cell_phone class=form-control placeholder="parent 2: cell phone" value="{$obj->mP[ 'parent2_cell_phone' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'parent2_work_phone' ]}has-error{/if}">
						<label for=parent2_work_phone class="col-md-3 control-label">Work Phone</label>
						<div class="col-md-8">
							<input type=tel name=parent2_work_phone class=form-control placeholder="parent 2: work phone" value="{$obj->mP[ 'parent2_work_phone' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'parent2_email' ]}has-error{/if}">
						<label for=parent2_email class="col-md-3 control-label">Email</label>
						<div class="col-md-8">
							<input type=email name=parent2_email class=form-control placeholder="parent 2: email" value="{$obj->mP[ 'parent2_email' ]}">
						</div>
					</div>
					
					<legend>Address</legend>
					<div class="form-group {if $obj->mErrors[ 'street' ]}has-error{/if}">
						<label for=street class="col-md-3 control-label">House Address</label>
						<div class="col-md-8">
							<input type=text name=street class=form-control placeholder="Street address" value="{$obj->mP[ 'street' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'city' ]}has-error{/if}">
						<label for=city class="col-md-3 control-label">City</label>
						<div class="col-md-8">
							<input type=text name=city class=form-control placeholder="city" value="{$obj->mP[ 'city' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'state' ]}has-error{/if}">
						<label for=state class="col-md-3 control-label">State</label>
						<div class="col-md-8">
							<input type=text name=state class=form-control placeholder="state" value="{$obj->mP[ 'state' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'zip' ]}has-error{/if}">
						<label for=zip class="col-md-3 control-label">Zip</label>
						<div class="col-md-8">
							<input type=text name=zip class=form-control placeholder="zip" value="{$obj->mP[ 'zip' ]}">
						</div>
					</div>
					
					<legend><h3>Emergency Contact Info</h3></legend>
					
					<div class="form-group {if $obj->mErrors[ 'emergency_relation' ]}has-error{/if}">
						<label for=emergency_relation class="col-md-3 control-label">Relation</label>
						<div class="col-md-8">
							<input type=radio name=emergency_relation value="Family" {if $obj->mP[ 'emergency_relation' ] == 'Family'}checked{/if}> Family &nbsp; &nbsp;
							<input type=radio name=emergency_relation value="Friend" {if $obj->mP[ 'emergency_relation' ] == 'Friend'}checked{/if}> Friend
						</div>
					</div>
					<div class=clear></div>
					<div class="form-group {if $obj->mErrors[ 'emergency_name' ]}has-error{/if}">
						<label for=emergency_name class="col-md-3 control-label">Name</label>
						<div class="col-md-8">
							<input type=text name=emergency_name class=form-control placeholder="emergency contact name" value="{$obj->mP[ 'emergency_name' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'emergency_phone' ]}has-error{/if}">
						<label for=emergency_phone class="col-md-3 control-label">Phone</label>
						<div class="col-md-8">
							<input type=tel name=emergency_phone class=form-control placeholder="emergency contact phone" value="{$obj->mP[ 'emergency_phone' ]}">
						</div>
					</div>

					<legend><h3>Caregiver Info</h3></legend>
					<div class="form-group {if $obj->mErrors[ 'caregiver_name' ]}has-error{/if}">
						<label for=caregiver_name class="col-md-3 control-label">Name</label>
						<div class="col-md-8">
							<input type=text name=caregiver_name class=form-control placeholder="caregiver name" value="{$obj->mP[ 'caregiver_name' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'caregiver_phone' ]}has-error{/if}">
						<label for=caregiver_phone class="col-md-3 control-label">Cell Phone</label>
						<div class="col-md-8">
							<input type=tel name=caregiver_phone class=form-control placeholder="caregiver phone" value="{$obj->mP[ 'caregiver_phone' ]}">
						</div>
					</div>		
				</div>
				<div class=panel-footer>
					<p>
						<input type=submit class="btn btn-default btn-primary btn-lg" name="tgp_openplay_registration_step2" value="Continue&raquo;">
					</p>
				</div>
			</div>
		</form>
	</div>
	<div class=col-md-5>
		<div class=panel-default>
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
					{$obj->mP[ 'first_name' ]} {$obj->mP[ 'last_name' ]}<br/>
					{$obj->mP[ 'dob' ]}<br/>
					{$obj->mP[ 'gender' ]}
				</p>
			</div>
		</div>
	</div>
</div>