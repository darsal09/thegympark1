{load_presentation_object filename="employee" foldername="admin" assign="obj"}
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a>
	{/section}
</ol>
<div class=page-header>
	<h1>Employees</h1>
</div>

<div class="panel panel-default">
	<div class=panel-heading>
		<h1>
			{$obj->mEmployee.first} {$obj->mEmployee.last}
			<small class=pull-right>
				<a class="btn btn-primary btn-lg" href="">Email&raquo;</a>
				<a class="btn btn-primary btn-lg" href="">Edit&raquo;</a>
				
			</small>
		</h1>
	</div>
	<div class=panel-body>
		<h3>Contact Information</h3>
		<p>Email: {$obj->mEmployee.uEmail}</p>
	</div>
	<div class=panel-footer>
		<h3>Working Schedule</h3>
	</div>
</div>