{load_presentation_object filename="addOpenPlay" foldername=admin assign="obj"}
<div class=page-header>
	<h1>Add Open Play</h1>
</div>
<form method=post role=form>
	<p>
		You can add open play for than one season
	</p>
	<div class=form-group>
		<div class=col-md-1>
			<label>Season</label>
		</div>
		<div class=col-md-11>
			{section name=i loop=$obj->mSeasons}
				<label><input type=checkbox name=tgp_seasons[] value="{$obj->mSeasons[ i ].id}"> {$obj->mSeasons[ i ].title}</label><br/>
			{/section}
		</div>
	</div>
	<div class=form-group>
		<div class=col-md-1>
			<label>Title</label>
		</div>
		<div class=col-md-11>
			<input type=text name=open_play_title value="">
		</div>
	</div>
	<p>&nbsp;</p>
	<div class=form-group>
		<div class=col-md-1></div>
		<div class=col-md-11>
			<input class="btn btn-default btn-primary btn-lg" type=submit name="tgp_add_open_play" value="Save Open Play(s)&raquo;">
		</div>
	</div>
</form>