{load_presentation_object filename="openPlaySignUp" assign="obj"}
<div class=row>
	<div class=col-md-8>
		<form method=post role="form">
			<fieldset>
				<legend><p class="bg-primary" style="font-weight:bold;">Relationship to Participant</p></legend>
				{if in_array( true, $obj->mErrors )}
					<p class="error">You need to select one of the options</p>
				{/if}
				
				<p>What is your relationship to the person you are registering?</p>
						
				<div class="form-group {if in_array( true, $obj->mErrors )}has-error{/if}">
					<div class=radio>
						<label>
							<input type=radio name=relation value="PG"> Parent/Legal Guardian
						</label>
					</div>
					<div class=radio>
						<label>
							<input type=radio name=relation value="C"> Caregiver
						</label>
					</div>
					<div class=radio>
						<label>
							<input type=radio name=relation value="R"> Relative
						</label>
					</div>
					<div class=radio>
						<label>
							<input type=radio name=relation value="M"> Myself
						</label>
					</div>
				</div>
				<p>
					<input type=submit class="btn btn-default btn-lg btn-primary" name="tgp_class_sign_up" value="Continue&raquo;">
				</p>
			</fieldset>
		</form>
	</div>
	<div class=col-md-4>
		<fieldset>
			<legend><p class=bg-primary style="font-weight:bold;">Class Information</p></legend>
			<p>{$obj->mClassInfo.title}<br/>
			{$obj->mClassInfo.weekday}s at {$obj->mClassInfo.start_time}<br/>
			Class Dates: {$obj->mClassInfo.begin} to {$obj->mClassInfo.end}<br/>
			Price: ${$obj->mClassInfo.Price}
		</fieldset>
	</div>
</div>