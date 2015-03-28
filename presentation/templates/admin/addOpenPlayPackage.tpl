{load_presentation_object filename="addOpenPlayPackage" foldername="admin" assign=obj}
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a></li>
	{/section}
</ol>
<div class=page-header>
	<h1>Add Open Play Package</h1>
</div>
<form method=post role=form>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=:title class=control-label>Title</label>
		</div>
		<div class=col-md-11>
			<input type=text name=":title" class=form-control value="">
		</div>
	</div>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=price class=control-label>Price</label>
		</div>
		<div class=col-md-11>
			<div class=input-group>
				<span class="input-group-addon">$</span>
				<input type=text name=":price" class=form-control value="">
				<span class="input-group-addon">.00</span>
			</div>
		</div>
	</div>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=:amount class=control-label>Amount</label>
		</div>
		<div class=col-md-11>
			<select name=:amount>
				<option value="1">Dropping</option>
				<option value="3">3 Pack </option>
				<option value="10">10 Pack</option>
				<option value="-1">Monthly</option>
				<option value=""></option>
				<option value=""></option>
			</select>
		</div>
	</div>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=:type class=control-label>Type</label>
		</div>
		<div class=col-md-11>
			<select name=:type>
				<option value="Individual">Individual</option>
				<option value="Family">Family</option>
			</select>
		</div>
	</div>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=:valid class=control-label>Valid</label>
		</div>
		<div class=col-md-11>
			<input type=text name=":valid" class=form-control value="">
		</div>
	</div>
	<div class="row form-group">
		<div class=col-md-1>
			<label for=:options class=control-label>Options</label>
		</div>
		<div class=col-md-11>
			<select name=:valid>
			
			</select>
			<select name=:options>
				<option value="Day">Day</option>
				<option value="Month">Month</option>
				<option value="Year">Year</option>
			</select>
		</div>
	</div>
	<p>&nbsp;</p>
	<div class="row form-group">
		<div class=col-md-1>
			
		</div>
		<div class=col-md-11>
			<input type=button id=cancel class="btn btn-warning btn-lg" name="cancel" value="Cancel"> <input class="btn btn-primary btn-lg" type=submit name=save_packages value="Save&raquo;"
		</div>
	</div>
</form>