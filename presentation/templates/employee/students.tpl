{load_presentation_object filename="students" foldername="employee" assign="obj"}

<div class=page-header>
	<h1>Students</h1>
</div>
<table class="table table-responsive">
	<thead>
		<tr><th>#</th><th>Lastname</th><th>Firstname</th><th>DOB</th><th>Options</th></tr>
	</thead>
	{section name=i loop=$obj->mStudents}
		<tr><td>{$smarty.section.i.index + 1}.</td><td>{$obj->mStudents[ i ].last}</td><td>{$obj->mStudents[ i ].first}</td><td>{$obj->mStudents[ i ].dob}</td><td></td></tr>
	{/section}
</table>