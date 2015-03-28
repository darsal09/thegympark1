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
<h1>Online Application</h1>
<form method=post>
	<fieldset>
		<legend>Participant Information</legend>
			<p>Please  fill out all the information below</p>
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
					<input id=datepicker type=text class="form-control" placeholder="date of birth" name=dob value="{$obj->mP[ 'dob' ]}">
				</div>
			</div>
			<div class="form-group">
				<label for=gender class="col-sm-2 {if $obj->mErrors[ 'gender' ]}has-error{/if}">Gender</label>
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
			<p>
				<input type=submit class="btn btn-default btn-primary btn-lg" name="class_sign_up_adult_step1" value="Continue&raquo;">
			</p>
	</fieldset>
</form>