{load_presentation_object filename="addOpenPlayPayment" foldername="employee" assign="obj"}
<div class=page-header>
	<h1>Add Open Play Payment</h1>
</div>
<div class=container>
	<form method=post>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<a data-toggle="collapse" data-parent="#accordion" href="#class_0">New Card</a>
				</div>
				<div id="class_0" class="panel-collapse collapse in">
						<div class="panel-body">		
							<div class=form-group>
								<div class=col-md-2>
									<label for=name class=control-label>Type</label>
								</div>
								<div class=col-md-10>
									<input type=radio name="type" value="Visa"> Visa<br/>
									<input type=radio name="type" value="MasterCard"> Master Card<br/>
									<input type=radio name="type" value="AmericanExpress"> American Express<br/>
									<input type=radio name="type" value="Discover"> Discover
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=name class=control-label>Name</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name="name">
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>Number</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=number>
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>Expiration Date</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=expire_date>
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>Card Code</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=card_code>
								</div>
							</div>
							<h3>Credit Card Address</h3>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>Street</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=street>
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>City</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=city>
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>State</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=state>
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>zip</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=zip>
								</div>
							</div>
						</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<a data-toggle="collapse" data-parent="#accordion" href="#class_1">Existing Cards</a>
				</div>
				<div id="class_1" class="panel-collapse collapse out">
					<div class="panel-body">	
						{section name=i loop=$obj->mCards}
							<p><input type=radio name="existing_card" value="{$obj->mCards[ i ].id}"> {$obj->mCards[ i ].card.name} {$obj->mCards[ i ].card.type}-{$obj->mCards[ i ].card.last4}</p>
						{/section}
					</div>
				</div>
			</div>
			<p>&nbsp;</p>
			<div class=form-group>
				<div class=col-md-2>
				
				</div>
				<div class=col-md-10>
					<input type=submit class="btn btn-default btn-primary btn-lg" name="make_payment" value="Payment&raquo;">
				</div>
			</div>
		</div>		
	</form>
</div>