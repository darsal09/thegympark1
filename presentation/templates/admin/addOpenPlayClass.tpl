{load_presentation_object filename="addOpenPlayClass" foldername="admin" assign="obj"}	
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a></li>
	{/section}
</ol>

	{if in_array( true, $obj->mErrors )}
		<p class=error>{$obj->mErrorMessage}</p>
	{/if}
<div class=row>
	<div class=col-md-8>
		<form method=post role=form>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1>Add A Class</h1>
				</div>
				<div class="panel-body">
						<p>
							{if !empty( $obj->mCSeason.title )}
								<input type=checkbox name="tgp_class_season[]" value="{$obj->mCSeason.id}"> {$obj->mCSeason.title}&nbsp;
							{/if}
							
							{section name=i loop=$obj->mNSeasons}
								<input type=checkbox name="tgp_class_season[]" value="{$obj->mNSeasons[ i ].id}"> {$obj->mNSeasons[ i ].title} &nbsp; 
							{/section}
							
							&nbsp; <a href="javascript:show( 'new_season' );">+Add New Season&raquo;</a>
						</p>
						<div id=new_season style="display:none;">
							<h3 class=program_title>Class Season Info</h3>
							<div class="form-group {if $obj->mErrors[ ':Season' ]}has-error{/if}">
								<label>Season</label><br/>
								{html_options name='tgp_class_seasons' options=$obj->mSeasons}
							</div>
							<div class="form-group {if $obj->mErrors[ ':sDate' ]}has-error{/if}">
										<label>Start Date</label><br/>
										<input type=text name=tgp_class_startDate id=datepicker style="width:150px;" value="{$obj->mP[ ':sDate' ]}">
							</div>
							<div class="program-group {if $obj->mErrors[ ':eDate' ]}has-error{/if}">
										<label>End Date</label><br/>
										<input type=text name=tgp_class_endDate id=datepicker2 style="width:150px" value="{$obj->mP[ ':eDate' ]}">
							</div>
						</div>
						<div class=form-group>
							<label>Program Featured</label><br/>
							<input type=radio name=tgp_class_programFeatured value="Y"> Yes &nbsp; &nbsp;
							<input type=radio name=tgp_class_programFeatured value="N"> No
						</div>		
						<div class=form-group>
							<label>Category Featured</label><br/>
							<input type=radio name=tgp_class_categoryFeatured value="Y"> Yes &nbsp; &nbsp;
							<input type=radio name=tgp_class_categoryFeatured value="N"> No
						</div>		
						<div class=form-group>
							<label>Weekday</label><br/>
							{html_options name='tgp_class_wDay' options=$obj->mWeekdays}
						</div>
							
						<div class="form-group {if $obj->mErrors[ ':sTime' ]}has-error{/if}">
							<label>Start Time</label><br/>
							<input type=time name=tgp_class_starttime value="{$obj->mP[ ':sTime' ]}">
						</div>
				</div>
				<div class=panel-footer>
					<p>
						<input type=submit class="btn btn-default btn-primary btn-lg" name=tgp_class_add value="Save Class&raquo;">
					</p>
				</div>
			</div>
		</form>			
	</div>
	<div class=col-md-4>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h1>Classes in the system</h1>
			</div>
			<div class="panel-body">
				<h3>Current Season</h3>
				{section name=i loop=$obj->mCurrentSeasonClasses}
					
				{sectionelse}
					<p>There are no classes for this season yet</p>
				{/section}
			</div>
			<div class=panel-footer>
				<h3>Next Season</h3>
				{section name=i loop=$obj->mNextSeasonClasses}
				
				{sectionelse}
					<p>There are no classes for this season yet</p>	
				{/section}
			</div>
		</div>
	</div>
</div>