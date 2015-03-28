{load_presentation_object filename="employees" foldername="admin" assign="obj"}
<div class=page-header>
	<h1>Employees</h1>
</div>
{section name=i loop=$obj->mEmployees}
	<div class=col-md-2>
		<a href="{$obj->mEmployees[ i ].link}">{$obj->mEmployees[ i ].first} {$obj->mEmployees[ i ].last}</a>
	</div>	
{/section}