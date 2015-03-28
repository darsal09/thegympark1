{load_presentation_object filename="openPlayRegistrationStep1" assign="obj"}
	<div class=row>
		<div class=col-md-7>
			<form method=post role="form">
				<div class="panel panel-default">
					<div class=panel-heading>
						<h1>Participant Information</h1>	
					</div>
					<div class=panel-body>
						{if in_array( true, $obj->mErrors )}
							<p class=error>You need fill in all the fields to continue with the application</p>
						{/if}
						<p>Please  fill out all the information below</p>
						<div class="form-group {if $obj->mErrors[ 'first_name' ]}has-error{/if}">
							<label for="first_name" class="col-md-3 control-label">First Name</label>
							<div class=col-md-8>
								<input type="text" class="form-control" placeholder="first name" name=first_name value="{$obj->mP[ 'first_name' ]}">
							</div>
						</div>
						<div class=clear></div>
						<div class="form-group {if $obj->mErrors[ 'last_name' ]}has-error{/if}">
							<label for="last_name" class="col-md-3 control-label">Last Name</label>
							<div class=col-md-8>
								<input type=text class="form-control" placeholder="last name" name=last_name value="{$obj->mP[ 'last_name' ]}">
							</div>
						</div>
						<div class=clear></div>
						<div class="form-group {if $obj->mErrors[ 'dob' ]}has-error{/if}">
							<label for="dob" class="col-md-3 control-label">Date of birth</label>
							<div class=col-md-8>
								<input id=datepicker type=date class="form-control" placeholder="date of birth" name=dob value="{$obj->mP[ 'dob' ]}">
							</div>
						</div>
						<div class=clear></div>
						<div class="form-group {if $obj->mErrors[ 'gender' ]}has-errors{/if}">
							<label for=gender class="cols-md-6 control-label">Gender</label>
								<div class="radio">
									<label class="{if $obj->mErrors[ 'gender' ]}has-error{/if}">
										<input type=radio name=gender value="M" {if $obj->mP[ 'gender'] == 'M'}checked{/if}> Male
									</label>
								</div>
								<div class="radio">
									<label class="{if $obj->mErrors[ 'gender' ]}has-error{/if}">
										<input type=radio name=gender value="F" {if $obj->mP[ 'gender'] == 'F'}checked{/if}> Female
									</label>
								</div>
						</div>
					</div>
					<div class=panel-footer>
						<p>
							<input type=submit class="btn btn-default btn-primary btn-lg" name="tgp_openplay_registration_step1" value="Continue&raquo;">
						</p>
					</div>
				</div>	
			</form>
		</div>
		<div class=col-md-5>
			<div class=panel-default>
				<div class=panel-heading><h1>Application Review</h1></div>
				<div class=panel-body>
					<div class=list-group>
						<li class=list-group-item>
							<h3 class=list-group-item-heading>Package Info</h3>
							<p class=list-group-item-text>
								{$obj->mPackage.title} <span class=badge>${$obj->mPackage.price}.00</span>
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
				</div>
			</div>			
		</div>
	</div>