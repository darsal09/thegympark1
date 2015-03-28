{load_presentation_object filename="addProgram" assign="obj"}
<ol class=breadcrumb>
		<li><a href="{Link::Build( 'admin' )}">Admin</a></li>
		<li><a href="{Link::Build( 'admin/programs' )}">Programs</a></li>		
</ol>

<div class=row>
	<div class=col-md-6>
		<fieldset>
			<legend><h1>Add Program</h1></legend>
			
			{if !empty( $obj->mErrorMessage )}
				<p class=attention>{$obj->mErrorMessage}</p>
			{/if}
			
			<form method=post role=form>
				<div class="form-group {if $obj->mErrors[ ':pTitle' ]}has-error{/if}">
					<label class=control-label>Title</label>
					<input type=text class=form-control name=tgp_program_title>
				</div>
				<div class="form-group {if $obj->mErrors[ ':pDesc' ]}has-error{/if}">
					<label class=control-label>Description</label>
					<textarea class=form-control name=tgp_program_description></textarea>
				</div>
				<p>
					<input type=submit class="btn btn-default btn-primary btn-lg" name=tgp_program_addProgram value="Save Program &raquo;">
				</p>
			</form>
		</fieldset>
	</div>
</div>