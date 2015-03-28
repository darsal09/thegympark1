{load_presentation_object filename="classesInfo" foldername="admin" assign="obj"}
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">&laquo;{$obj->mLinks[ i ].title}</a></li>
	{/section}
</ol>
<div class=page-header>
	<h1>
		Classes
		<small><span class=pull-right><a class="btn btn-default btn-success btn-lg" href="{$obj->mLinkToAddClasses}">+Add Classes&raquo;</a></span></small>
	</h1>
</div>
	<ol class=breadcrumb>
	{if isset( $obj->mDay )}
		<li><a href="{$obj->mLinkToAllWeek}">Show All Days</a> </li>
	{/if}
		{section name=i loop=$obj->mObjects}
			<li><a href="{$obj->mObjects[ i ].link}">{$obj->mObjects[ i ].title}</a></li>		
		{/section}
	</ol>
	<p class=clear></p>
<div class=row>	
	{section name=i loop=$obj->mClasses}
			<div class="objects col-md-2" onClick="goTo( '{$obj->mClasses[ i ].link}' );" title="{$obj->mClasses[ i ].title}" style="background:{$obj->mClasses[ i ].hexColor};">
				<p>
					<a href="{$obj->mClasses[ i ].link}">{$obj->mClasses[ i ].title}</a>
				</p>
			</div>
	{/section}
</div>