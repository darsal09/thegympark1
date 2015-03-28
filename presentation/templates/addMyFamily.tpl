{load_presentation_object filename="addMyFamily" assign="obj"}
<form method=post>
<div class=row style="overflow:hidden;">
	<div class=col-sm-6>
		<h2>Father</h2>
		<div class="form-group col-sm-6 {if $obj->mErrors[ 'first_name' ]}has-error{/if}" style="width:100%">
			<label for="first_name" class="col-sm-3 control-label">First Name</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" placeholder="first name" name=first_name value="{$obj->mP[ 'first_name' ]}">
			</div>
		</div>
		<div class="form-group col-sm-6 {if $obj->mErrors[ 'last_name' ]}has-error{/if}" style="width:100%;">
				<label for="last_name" class="col-sm-3 control-label">Last Name</label>
				<div class="col-sm-3">
					<input type=text class="form-control" placeholder="last name" name=last_name value="{$obj->mP[ 'last_name' ]}">
				</div>
		</div>
		<div class="form-group col-sm-6 {if $obj->mErrors[ 'dob' ]}has-error{/if}" style="width:100%;">
				<label for="dob" class="col-sm-3 control-label">Date of birth</label>
				<div class="col-sm-3">
					<input id=datepicker type=text class="form-control" placeholder="date of birth" name=dob value="{$obj->mP[ 'dob' ]}">
				</div>
		</div>
	</div>
		
	<div class=col-sm-6>
		<h2>Mother</h2>
		<div class="form-group col-sm-6 {if $obj->mErrors[ 'first_name' ]}has-error{/if}" style="width:100%;">
			<label for="first_name" class="col-sm-3 control-label">First Name</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" placeholder="first name" name=first_name value="{$obj->mP[ 'first_name' ]}">
			</div>
		</div>
			<div class="form-group col-sm-6 {if $obj->mErrors[ 'last_name' ]}has-error{/if}" style="width:100%;">
				<label for="last_name" class="col-sm-3 control-label">Last Name</label>
				<div class="col-sm-3">
					<input type=text class="form-control" placeholder="last name" name=last_name value="{$obj->mP[ 'last_name' ]}">
				</div>
			</div>
			<div class="form-group col-sm-6 {if $obj->mErrors[ 'dob' ]}has-error{/if}" style="width:100%;">
				<label for="dob" class="col-sm-3 control-label">Date of birth</label>
				<div class="col-sm-3">
					<input id=datepicker type=text class="form-control" placeholder="date of birth" name=dob value="{$obj->mP[ 'dob' ]}">
				</div>
			</div>
		</div>		
</div>
<div class=row style="overflow:hidden;">
	<div class=col-sm-6>
		<h2>Son</h2>
		<div class="form-group col-sm-6 {if $obj->mErrors[ 'first_name' ]}has-error{/if}" style="width:100%">
			<label for="first_name" class="col-sm-3 control-label">First Name</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" placeholder="first name" name=first_name value="{$obj->mP[ 'first_name' ]}">
			</div>
		</div>
		<div class="form-group col-sm-6 {if $obj->mErrors[ 'last_name' ]}has-error{/if}" style="width:100%;">
				<label for="last_name" class="col-sm-3 control-label">Last Name</label>
				<div class="col-sm-3">
					<input type=text class="form-control" placeholder="last name" name=last_name value="{$obj->mP[ 'last_name' ]}">
				</div>
		</div>
		<div class="form-group col-sm-6 {if $obj->mErrors[ 'dob' ]}has-error{/if}" style="width:100%;">
				<label for="dob" class="col-sm-3 control-label">Date of birth</label>
				<div class="col-sm-3">
					<input id=datepicker type=text class="form-control" placeholder="date of birth" name=dob value="{$obj->mP[ 'dob' ]}">
				</div>
		</div>
	</div>
		
	<div class=col-sm-6>
		<h2>Daughter</h2>
		<div class="form-group col-sm-6 {if $obj->mErrors[ 'first_name' ]}has-error{/if}" style="width:100%;">
			<label for="first_name" class="col-sm-3 control-label">First Name</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" placeholder="first name" name=first_name value="{$obj->mP[ 'first_name' ]}">
			</div>
		</div>
			<div class="form-group col-sm-6 {if $obj->mErrors[ 'last_name' ]}has-error{/if}" style="width:100%;">
				<label for="last_name" class="col-sm-3 control-label">Last Name</label>
				<div class="col-sm-3">
					<input type=text class="form-control" placeholder="last name" name=last_name value="{$obj->mP[ 'last_name' ]}">
				</div>
			</div>
			<div class="form-group col-sm-6 {if $obj->mErrors[ 'dob' ]}has-error{/if}" style="width:100%;">
				<label for="dob" class="col-sm-3 control-label">Date of birth</label>
				<div class="col-sm-3">
					<input id=datepicker type=text class="form-control" placeholder="date of birth" name=dob value="{$obj->mP[ 'dob' ]}">
				</div>
			</div>
		</div>		
</div>
	<p>
		<input type=submit class="btn btn-default btn-primary btn-lg" name="add_my_child" value="Save Child&raquo;">
	</p>

</form>