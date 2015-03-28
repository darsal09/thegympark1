{load_presentation_object filename="openPlayRegister" assign="obj"}
<div class="row">
	<form method=post role=form>
		<div class="col-md-7">
			<div class="panel panel-default">
				<div class=panel-heading>
					<h1><small>Registering for</small> Open Play</h1>
				</div>
				<div class=panel-body>
					<div class="form-group">
						<label>Relationship</label>
						<div class="radio">
							<label>
								<input type=radio name=tgp_op_relation value="Parent/Legal Guardian">Parent/Legal Guardian<br/>
							</label>
						</div>
						<div class=radio>
							<label>
								<input type=radio name=tgp_op_relation value="Relative">Relative<br/>
							</label>
						</div>
						<div class=radio>
							<label>
								<input type=radio name=tgp_op_relation value="Caregiver">Caregiver<br/>
							</label>
						</div>
					</div>
				</div>
				<div class=panel-footer>
						<input type=submit name=tgp_op_sign_up_continue class="btn btn-primary btn-lg" value="Continue&raquo;">
				</div>
			</div>
		</div>
	</form>
	<div class="col-md-5">
		<div class="panel-default">
			<div class=panel-heading>
				<h1><small>Open Play</small> Package Information</h1>
			</div>
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
			
			</div>
		</div>
	</div>
</div>