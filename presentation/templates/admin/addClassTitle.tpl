{load_presentation_object filename="addClassTitle" foldername='admin' assign="obj"}
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">&laquo;{$obj->mLinks[ i ].title}</a></li>
	{/section}
</ol>
<div class=page-header>
	<h1>Add A Class Title</h1>
</div>
<div class=row>
	<div class=col-md-6>
			<form method=post>
				<input type=hidden name=tgp_classTitle_programID value="{$obj->mProgramID}">
				<input type=hidden name=tgp_classTitle_categoryID value="{$obj->mCategoryID}">
				{if !empty( $obj->mErrorMessage )}
					<p class=attention>
						{$obj->mErrorMessage}
					</p>
				{/if}
				
				<div class="form-group {if !empty( $obj->mErrorMessage )}has-error{/if}">
					<label>Type</label><br/>
					<input type=radio name=tgp_classTitle_type 
						{if $obj->mP[ ':type' ] == "Fixed"}
							checked = true
						{/if} 
					value="Fixed"> Fixed &nbsp;&nbsp;
					<input type=radio name=tgp_classTitle_type 
						{if $obj->mP[ ':type' ] == "Flexible"}
							checked = true
						{/if} 
					value="Flexible">Flexible
				</div>
				
				<div class="form-group {if $obj->mErrors[ ':Title' ]}has-error{/if}">
					<label class=control-label>Title</label>
					<div class="input-group">
						<input type=text class=form-control name=tgp_classTitle_title value="{$obj->mP[ ':Title' ]}">
					</div>
				</div>
				
				<div class="form-group {if $obj->mErrors[ ':ageGroup' ]}has-error{/if}">
					<label class=control-label>Age Group</label>
					<div class=input-group>
						<input type=text class=form-control name=tgp_classTitle_age value="{$obj->mP[ ':ageGroup' ]}">
					</div>
				</div>
				<div class="form-group {if $obj->mErrors[ ':totalTime' ]}has-error{/if}">
					<label class=control-label>Total Time</label>
					<div class=input-group>
						<div class="input-group-addon">Minutes</div>
						<input type=text class=form-control name=tgp_classTitle_totalTime value="{$obj->mP[ ':totalTime' ]}">
					</div>
				</div>
				<div class="form-group {if $obj->mErrors[ ':price' ]}has-error{/if}">
					<label class=control-label>Price</label>
					<div class="input-group">
						<div class="input-group-addon">$</div>
						<input type=text class=form-control name=tgp_classTitle_price value="{$obj->mP[ ':price' ]}">
					</div>
				</div>
				
				<div class="form-group {if $obj->mErrors[ ':price' ]}has-error{/if}">
					<label class=control-label>9 Week Price</label>
					<div class="input-group">
						<div class="input-group-addon">$</div>
						<input type=text class=form-control name=tgp_classTitle_9week_price value="{$obj->mP[ ':price' ]}">
					</div>
				</div>
				
				<p>
					<input type=submit class="btn btn-default btn-primary btn-lg" name="tgp_add_class_title" value="Save Class Title&raquo;">
				</p>
			</form>
	</div>
</div>