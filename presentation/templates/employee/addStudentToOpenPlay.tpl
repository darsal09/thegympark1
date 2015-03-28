{load_presentation_object filename="addStudentToOpenPlay" foldername="employee" assign="obj"}
<div class=page-header>
	<h1>Add Student To Open Play ere</h1>
</div>

<div class="container">
	<div class=list-group>
		{section name=i loop=$obj->mPackages}
			<a class=list-group-item href="{$obj->mPackages[ i ].link}">{$obj->mPackages[ i ].title} <span class="label label-primary">${$obj->mPackages[ i ].price}.00</span></a>
		{/section}
	</div>
</div>