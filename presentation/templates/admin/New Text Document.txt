{load_presentation_object filename="emails" foldername=admin assign="obj"}
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a></li>
	{/section}
</ol>
<div class=page-header>
	<h1>Emails</h1>
</div>
<div class="panel-group" id=accordion role=tabList aria-multiselectable="true">

	{section name=i loop=$obj->mObjects}
		<div class="panel panel-default">
			<div class="panel-heading" role="tab" id="heading{$obj->mObjects[ i ].title}">
			  <h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" href="#collapse{$obj->mObjects[ i ].title}" aria-expanded="true" aria-controls="collapse{$ojb->mObjects[ i ].title}">				
					{$obj->mObjects[ i ].title}
				</a>
				</h4>
			</div>
			<div id="collapse{$obj->mObjects[ i ].title}" class="panel-collapse collapse out" role="tabpanel" aria-labelledby="heading{$obj->mObjects[ i ].title}">
				<div class="panel-body">	
					
				</div>
			</div>
		</div>
	{/section}	
</div>
