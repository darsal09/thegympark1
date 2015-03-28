{load_presentation_object filename="addStudentToOpenPlay" foldername="admin" assign="obj"}
<ol class=breadcrumb>
	<li><a href="{Link::Build( 'admin' )}">&laquo;Admin</a></li>
</ol>
<div class=row>
	<div class=col-md-6>
	
		<h1>Kids Not In Open Play</h1>
		<p>
			Select the kids that you want to add to open play from the list below
		</p>
		<ol class=breadcrumb> Select student by letter
			{if isset( $obj->mLetter )}
				<li><a href="{$obj->mLinkToShowAll}">Show All</a> </li>
			{/if}
			{section name=i loop=$obj->mFilters}
				<li><a href="{$obj->mFilters[ i ].link}">{$obj->mFilters[ i ].letter}</a></li>
			{/section}
		</ol>
		<form method=post role=form>

			<table class=responsive>
				<thead>
					<tr>
						<th>
							&nbsp;
						</th>
						<th>
							Participant's Name
						</th>
						<th>
							Open Play Amount
						</th>
					</tr>
				</thead>
				<tbody>
					{section name=i loop=$obj->mStudents}
					<tr>
						<td><input type=checkbox name="tgp_students_id[]" value="{$obj->mStudents[ i ].id}"></td><td>{$obj->mStudents[ i ].name}</td><td> <input type=text name="tgp_students_{$obj->mStudents[ i ].id}_amount" style="width:50px;"></td>
					</tr>
					{/section}
				</tbody>
			</table>
			
			<p>
				<input type=submit class="btn btn-default btn-primary btn-lg" name=tgp_add_students value="Add Students&raquo;">
			</p>
		</form>
	</div>
	<div class=col-md-2></div>
	<div class=col-md-4>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#class_{$smarty.section.i.index}">Kids In Open Play&raquo;</a></h1>
				</div>
				<div id="class_{$smarty.section.i.index}" class="panel-collapse collapse in">
					<div class="panel-body">
						{section name=i loop=$obj->mParticipants}
							<p>{$obj->mParticipants[ i ].first} {$obj->mParticipants[ i ].last}</p>
						{sectionelse}
							<p>There are  no kids for <b>{$obj->mOpenPlay.title}</b></p>
						{/section}
					</div>
					<div class="">
					
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
