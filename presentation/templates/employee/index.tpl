{load_presentation_object filename="index" foldername=employee assign="obj"}
<div class=page-header>
	<h1>Welcome, {user::getName()}</h1>
</div>
<div class=container>
	<div class=row>
		<div class=col-md-9>
		
		</div>
		<div class=col-md-3>
			<h1>Quick Links</h1>
			<div class=list-group>
				{section name=i loop=$obj->mObjects}
					<a class=list-group-item href="{$obj->mObjects[ i ].link}">{$obj->mObjects[ i ].title}</a>
				{/section}
			</div>
		</div>
	</div>
</div>