{load_presentation_object filename="addMyChild" assign="obj"}
<h1 class=bg-primary>Member Information</h1>
<form method=post role=form>
	<div class="form-group col-sm-12">
		<label for=type class="cols-sm-2 {if $obj->mErrors[ 'type' ]}has-error{/if}">Relation</label>
		<div class=col-sm-10>
			<select name=type>
				<option value="Son"> Son </option>
				<option value="Daughter"> Daughter </option>
				<option value="Husband"> Husband </option>
				<option value="Wife"> Wife </option>
				<option value="Son"> Father </option>
				<option value="Mother"> Mother </option>
			</select>
		</div>
	</div>

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
	<p>
		<input type=submit class="btn btn-default btn-primary btn-lg" name="add_my_child" value="Save Child&raquo;">
	</p>

</form>