{load_presentation_object filename="addSeason" foldername="admin" assign="obj"}
<div class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a>
	{/section}
</div>
<div class=page-header>
	<h1>
		Add Season
		<small class=pull-right>
			<a class="btn btn-default btn-primary btn-lg" href="{$obj->mLinkToAddClasses}">+Add Classes&raquo;</a>
		</small>
	</h1>
</div>
	<p>
		By creating a season here you will enable to add classes in this season. Without creating a season you won't be able to create classes for a specific season.
	</p>
	<form method=post>
	
		<p
		{if $obj->mErrors[ ':season' ]}
			class=error
		{/if}
		>
			<input type=radio name=tgp_season_season value="Fall-Winter"> Fall-Winter<br/>
			<input type=radio name=tgp_season_season value="Winter-Spring"> Winter-Spring<br/>
			<input type=radio name=tgp_season_season value="Summer"> Summer<br/>
		
		</p>	
		<p
		{if $obj->mErrors[ ':start_date' ]}
			class=error
		{/if}
		>
			<label>Start Date</label><br/>
			<input id=datepicker type=text name=tgp_season_start_date value="">
		</p>
		<p
		{if $obj->mErrors[ ':end_date' ]}
			class=error
		{/if}
		>
			<label>End Date</label><br/>
			<input id=datepicker2 type=text name=tgp_season_end_date value="">
		</p>
		
		<p>
			<input class="btn btn-default btn-primary" type=submit name=tgp_add_season value="Save Seaosn&raquo;">
		</p>
	</form>
</fieldset>
