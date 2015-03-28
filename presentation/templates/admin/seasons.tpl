{load_presentation_object filename="seasons" foldername="admin" assign="obj"}
<div class=page-header>
	<h1>
		Seasons
		<small class="pull-right">
			<a class="btn btn-default btn-primary btn-lg" href="{$obj->mLinkToAddSeason}">+Add Season&raquo;</a>
		</small>
	</h1>
</div>
{section name=i loop=$obj->mSeasons}
	<div class=row style="padding:5px;">
		<div class=col-md-4><a href="{$obj->mSeasons[ i ].link}"><strong>{$obj->mSeasons[ i ].season} {$obj->mSeasons[ i ].year}</strong></a></div>
		<div class="col-md-3"><a class="btn btn-success" href="{$obj->mSeasons[ i ].link}">View&raquo;<a/> &nbsp; <a class="btn btn-primary" href="{$obj->mSeasons[ i ].link_edit}">Edit</a> &nbsp; <a class="btn btn-warning" href="{$obj->mSeasons[ i ].link_remove}">Remove</a></div>
	</div>
{/section}