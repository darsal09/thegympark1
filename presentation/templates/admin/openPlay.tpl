{load_presentation_object filename="openPlay" foldername=admin assign="obj"}
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a></li>
	{/section}
</ol>

<div class="panel panel-default">
	<div class="panel-heading">
		<h1>
			{$obj->mOpenPlay.title} for {$obj->mOpenPlay.season} {$obj->mOpenPlay.year} 
			<small class=pull-right><a class="btn btn-default btn-warning btn-lg" href="{$obj->mLinkToTakeAttendance}">Take Attendance</a> <a class="btn btn-default btn-success btn-lg" href="{$obj->mLinkToAddClasses}">+Add Class(es)&raquo;</a></small>
		</h1>
	</div>
	<div class=body>
		<p>
			Available  Classes:<br/>
			click on the class to do the attendance.
		
		</p>
		
			{section name=i loop=$obj->mClasses}
				<div class="col-md-2 objects">
					<p>
						<a href="{$obj->mClasses[ i ].link}">{$obj->mClasses[ i ].title}</a>
					</p>
				</div>
			{sectionelse}
				<a href="{$obj->mLinkToAddClasses}">+Add Class(es)&raquo;</a>
			{/section}
			<div class=clear></div>
	</div>
	<div class="panel-footer list-group">
		<h1>
			Students 
			<span style="float:right;font-size:18px;"><a href="{$obj->mLinkToAddStudents}">+Add Student(s)&raquo;</a></span>
		</h1>
		
		<p>Students enrolled in this season's open play:</p>
			<div class="row non-mobile">
					<div class=col-md-4>Name</div><div class=col-md-1>Total</div><div class=col-md-1>Used</div><div class=col-md-1>Left</div>
				</div>
				{section name=i loop=$obj->mStudents}
					<div class="row list-group-item">
						<div class=col-md-4><a href="{$obj->mStudents[ i ].link}">{$obj->mStudents[ i ].name}</a></div>
						<div class=col-md-1><span class=mobile-only>Total: </span>{$obj->mStudents[ i ].amount}</div>
						<div class=col-md-1><span class=mobile-only>Used: </span><a href="{$obj->mStudents[ i ].history}" title="click to view your used history">{$obj->mStudents[ i ].used}</a></div>
						<div class=col-md-1><span class=mobile-only>Left: </span>{$obj->mStudents[ i ].amount - $obj->mStudents[ i ].used}</div>
					</div>
				{/section}
	</div>
</div>