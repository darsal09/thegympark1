{load_presentation_object filename="myMemberEdit" assign="obj"}	

<form method=post>
	<div class="panel-default">
		<div class=panel-heading>
			<h1>Edit Member Information</h1>
		</div>
		<div class=panel-body>
			<div class="form-group {if $obj->mErrors[ ':type' ]}has-error{/if}">
				<label for=":first" class="col-sm-2 control-label">Member Types</label>
				<div class="col-sm-10">
					<p>
						<input type=radio name=:type value="Son" {if $obj->mMember[ 'type' ] == 'Son'}checked{/if}> Son <input type=radio name=:type value="Daughter" {if $obj->mMember[ 'type' ] == 'Daughter'}checked{/if}> Daughter 
						<input type=radio name=:type value="Wife" {if $obj->mMember[ 'type' ] == 'Wife'}checked{/if}> Wife <input type=radio name=:type value="Husband" {if $obj->mMember[ 'type' ] == 'Husband'}checked{/if}> Husband
						<input type=radio name=:type value="Mother" {if $obj->mMember[ 'type' ] == 'Mother'} checked{/if}}> Mother <input type=radio name=:type value="Father" {if $obj->mMember[ 'type' ] == 'Father'}checked{/if}> Father
					</p>
				</div>
			</div>
			<div class=clear></div>
			<div class="form-group {if $obj->mErrors[ ':first' ]}has-error{/if}">
				<label for=":first" class="col-sm-2 control-label">First Name</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="first name" name=:first value="{$obj->mMember[ 'first' ]}">
				</div>
			</div>
					<div class="form-group {if $obj->mErrors[ ':last' ]}has-error{/if}">
						<label for=":last" class="col-sm-2 control-label">Last Name</label>
						<div class="col-sm-10">
							<input type=text class="form-control" placeholder="last name" name=:last value="{$obj->mMember[ 'last' ]}">
						</div>
					</div>
					<div class="form-group {if $obj->mErrors[ ':dob' ]}has-error{/if}">
						<label for=":dob" class="col-sm-2 control-label">Date of birth</label>
						<div class="col-sm-10">
							<input id=datepicker type=text class="form-control" placeholder="date of birth" name=:dob value="{$obj->mMember[ 'dob' ]}">
						</div>
					</div>
					<div class="form-group">
						<label for=gender class="cols-sm-12 {if $obj->mErrors[ ':gender' ]}has-error{/if}">Gender</label>
						<div class="col-sm-12">
							<div class=col-sm-2></div>
							<div class="col-sm-10">
								<div class="radio">
									<label class="{if $obj->mErrors[ ':gender' ]}has-error{/if}">
										<input type=radio name=:gender value="M" {if $obj->mMember[ 'gender'] == 'M'}checked{/if}> Male
									</label>
								</div>
								<div class="radio">
									<label class="{if $obj->mErrors[ ':gender' ]}has-error{/if}">
										<input type=radio name=:gender value="F" {if $obj->mMember[ 'gender'] == 'F'}checked{/if}> Female
									</label>
								</div>
							</div>
						</div>
					</div>
		</div>
		<div class=panel-footer>
			<p>
				<input type=submit class="btn btn-default btn-primary btn-lg" name="edit_member_info" value="Save Changes&raquo;"> <input type=submit class="btn btn-default btn-primary btn-lg" name=cancel value="Cancel">
			</p>		
		</div>
	</div>
</form>
	