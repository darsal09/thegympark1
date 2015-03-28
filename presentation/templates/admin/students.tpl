{load_presentation_object filename="students" foldername="admin" assign="obj"}
<div class=page-header>
	<h1>
		Students
		<small>
			<span class=pull-right>
				<div><input type=text name=query class="input-medium"> <input class="btn btn-default btn-primary btn-lg" type=submit value="Go"> <a class="btn btn-default btn-success btn-lg" href="">+Add Student</a></div>
			</span>
		</small>
	</h1>
</div>
	<div class=table-responsive>
		<table class=table>
		<tr><th>#</th><th><a href="{$obj->mLinkToSortByLast}">Last Name</a></th><th><a href="{$obj->mLinkToSortByFirst}">First Name</a></th><th><a href="{$obj->mLinkToSortByDOB}">DOB : Age</a></th><th style="text-align:right;">Options</th></tr>
		{section name=i loop=$obj->mStudents}
			<tr>
				<td>{$smarty.section.i.index + 1 }.</td>
				<td>
					<a href="{$obj->mStudents[ i ].link_to_student}">{$obj->mStudents[ i ].last}</a>
				</td>
				<td> 
					<a href="{$obj->mStudents[ i ].link_to_student}">{$obj->mStudents[ i ].first}</a>
				</td>
				<td>
					{$obj->mStudents[ i ].dob} : {$obj->mStudents[ i ].age} year(s)
				</td>
				<td>
					<span class=pull-right><a class="btn btn-default btn-success" href="{$obj->mStudents[ i ].link_to_student}">view&raquo;</a> <a class="btn btn-default btn-warning" href="{$obj->mStudents[ i ].link_to_email}">Email&raquo;</a></span>
				</td>
			</tr>
		{/section}
		</table>
	</div>