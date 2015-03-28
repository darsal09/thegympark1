{load_presentation_object filename="classSignChild" assign="obj"}
	<h1>Online Application</h1>
	<a href="{$obj->mLinkToSign}">sign up</a>
	<div class=row>
		<div class=col-md-7>
			<form method=post role="form">
				<div class="panel panel-default">
					<div class=panel-heading><h1>Participant Information</h1></div>
					<div class=panel-body>
						{if in_array( true, $obj->mErrors )}
							<p class=error>You need fill in all the fields to continue with the application</p>
						{/if}
						<p>Please  fill out all the information below</p>
						
						<div class="form-group {if $obj->mErrors[ 'first_name' ]}has-error{/if}">
							<label for="first_name" class="col-md-3 control-label">First Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" placeholder="first name" name=first_name value="{$obj->mP[ 'first_name' ]}">
							</div>
						</div>
						<div class="form-group {if $obj->mErrors[ 'last_name' ]}has-error{/if}">
							<label for="last_name" class="col-md-3 control-label">Last Name</label>
							<div class="col-md-9">
								<input type=text class="form-control" placeholder="last name" name=last_name value="{$obj->mP[ 'last_name' ]}">
							</div>
						</div>
						<div class="form-group {if $obj->mErrors[ 'dob' ]}has-error{/if}">
							<label for="dob" class="col-md-3 control-label">Date Of Birth</label>
							<div class="col-md-9">
								<input id=datepicker type=text class="form-control" placeholder="date of birth" name=dob value="{$obj->mP[ 'dob' ]}">
							</div>
						</div>
						<div class="form-group">
							<label for=gender class="col-md-12 {if $obj->mErrors[ 'gender' ]}has-error{/if}">Gender</label>
							<div class=col-md-3>
							</div>
							<div class=col-md-9>
								<div class="radio col-md-12">
									<label class="{if $obj->mErrors[ 'gender' ]}has-error{/if}">
										<input type=radio name=gender value="M" {if $obj->mP[ 'gender'] == 'M'}checked{/if}> Male
									</label>
								</div>
								<div class="radio col-md-12">
									<label class="{if $obj->mErrors[ 'gender' ]}has-error{/if}">
										<input type=radio name=gender value="F" {if $obj->mP[ 'gender'] == 'F'}checked{/if}> Female
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class=panel-footer>
						<p>
							<input type=submit class="btn btn-default btn-primary btn-lg" name="class_sign_up_child_step1" value="Continue&raquo;">
						</p>
					</div>
				</div>	
			</form>
		</div>
		<div class=col-md-5>
			<div class="panel-default">
				<div class=panel-heading><h1>Application Review</h1></div>
				<div class=panel-body>
					<h3>Class Information</h3>
					<p>{$obj->mClassInfo.title}<br/>
					{$obj->mClassInfo.weekday}s at {$obj->mClassInfo.start_time}<br/>
					Class Dates: {$obj->mClassInfo.begin} to {$obj->mClassInfo.end}<br/>
					Price: ${$obj->mClassInfo.Price}
				</div>
				<div class=panel-footer>
					<h3>Relationship to registree</h3>
					{$obj->mRelation}
				</div>
			</div>			
		</div>
	</div>
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
