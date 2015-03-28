{load_presentation_object filename="season" assign="obj"}
<ol class=breadcrumb>
	<li><a href="{$obj->mLinkToAdmin}">&laquo;Admin</a></li>
	<li><a href="{$obj->mLinkToSeasons}">&laquo;Seasons</a></li>
</ol>
<div class="panel panel-default">
	<div class="panel-heading">
		<h1>{$obj->mSeason.season} {$obj->mSeason.year}: {$obj->mSeason.start_date} - {$obj->mSeason.end_date}</h1>
	</div>
	<div class=panel-body>
		<ol class=breadcrumb> 
			Show Classes by day:  {if isset( $obj->mWeekday ) }<li><a href="{$obj->mLinkToWholeWeek}">Whole Week</a></li> {/if}
			{section name=i loop=$obj->mWeekdays}
				<li><a href="{$obj->mWeekdays[ i ].link}">{$obj->mWeekdays[ i ].weekday}</a></li>
			{/section}
		</ol>
		<ol class=breadcrumb>
			Show Classes by group: {if isset( $obj->mTitleID ) }<li><a href="{$obj->mLinkToTitles}">Show All Titles</a></li> {/if}
			{section name=i loop=$obj->mTitles}
				<li><a href="{$obj->mTitles[ i ].link}">{$obj->mTitles[ i ].title}</a></li>
			{/section}
		</ol>
			{section name=i loop=$obj->mObjects}
				<div class="objects col-md-2" onClick="goTo( '{$obj->mObjects[ i ].link}' );" title="{$obj->mObjects[ i ].title}" style="background:{$obj->mObjects[ i ].hexColor}">
					<p>
						<a href="{$obj->mObjects[ i ].link}">{$obj->mObjects[ i ].title}</a>
					</p>
				</div>	
			{sectionelse}
				<p>There are no classes available</p>
			{/section}
	</div>
</div>