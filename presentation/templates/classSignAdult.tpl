{load_presentation_object filename="classSignAdult" assign="obj"}
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
<form method=post>
	<div class=row>
		<div class=col-md-7>
			<div class="panel panel-default">
				<div class=panel-heading>
					<h1>Participant Information</h1>
				</div>
				<div class=panel-body>
					<p>Please fill out all the information below</p>
					<div class="form-group {if $obj->mErrors[ 'first_name' ]}has-error{/if}">
						<label for="first_name" class="col-sm-2 control-label">First Name</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="first name" name=first_name value="{$obj->mP[ 'first_name' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'last_name' ]}has-error{/if}">
						<label for="last_name" class="col-sm-2 control-label">Last Name</label>
						<div class="col-sm-10">
							<input type=text class="form-control" placeholder="last name" name=last_name value="{$obj->mP[ 'last_name' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ 'dob' ]}has-error{/if}">
						<label for="dob" class="col-sm-2 control-label">Date of birth</label>
						<div class="col-sm-10">
							<input id=datepicker type=date class="form-control" placeholder="date of birth" name=dob value="{$obj->mP[ 'dob' ]}">
						</div>
					</div>
					
					<div class="form-group {if $obj->mErrors[ 'gender' ]}has-error{/if}">
						<label for=gender class="col-sm-12 control-label">Gender</label>
						<div class=col-sm-2>
						</div>
						<div class=col-sm-10>
							<div class="radio">
								<label class="col-sm-12 {if $obj->mErrors[ 'gender' ]}has-error{/if}">
									<input type=radio name=gender value="M" {if $obj->mP[ 'gender'] == 'M'}checked{/if}> Male
								</label>
								<label class="col-sm-12 {if $obj->mErrors[ 'gender' ]}has-error{/if}">
									<input type=radio name=gender value="F" {if $obj->mP[ 'gender'] == 'F'}checked{/if}> Female
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class=panel-footer>	
					<p>
						<input type=submit class="btn btn-default btn-primary btn-lg" name="class_sign_up_adult_step1" value="Continue&raquo;">
					</p>
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
						Starting {date( 'M jS, Y', strtotime( $obj->mClassInfo[ 'begin' ] ) )} to {date( 'M jS, Y', strtotime( $obj->mClassInfo[ 'end' ] ) )}<br/>
						Description:<br/>{$obj->mClassInfo[ 'description' ]}
					</p>
					<p>
						<span class="label label-lg label-primary">Price ${$obj->mClassInfo[ 'price' ]}.00</span>
					</p>
					
				</div>
				<div class=panel-footer>
					<h3>Signing</h3>
					{$obj->mRelation}
				</div>
			</div>
		</div>
	</div>
</form>
