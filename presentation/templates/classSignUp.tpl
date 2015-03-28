{load_presentation_object filename="classSignUp" assign="obj"}
<div class=row>
	<div class=col-md-8>
		<form method=post role="form">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1>Relationship to Participant</h1>
				</div>
				<div class=panel-body>
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
				</div>
				<div class="panel-footer">
					<p>
						<input type=submit class="btn btn-default btn-lg btn-primary" name="tgp_class_sign_up" value="Continue&raquo;">
					</p>
				</div>
			</div>
		</form>
	</div>
	<div class=col-md-4>
		<div class="panel-default">
			<div class="panel-heading"><h1>Class Information</h1></div>
			<div class=panel-body>
				<p>{$obj->mClassInfo.title}<br/>
				{$obj->mClassInfo.weekday}s at {$obj->mClassInfo.start_time}<br/>
				Class Dates: {$obj->mClassInfo.begin} to {$obj->mClassInfo.end}<br/>
				Price: ${$obj->mClassInfo.Price}
			</div>
		</div>
	</div>
</div>