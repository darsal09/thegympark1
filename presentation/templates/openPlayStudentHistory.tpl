{load_presentation_object filename="openPlayStudentHistory" assign="obj"}
<div class=page-header>
	<h1>Open Play: {$obj->mOpenPlay.season}{$obj->mOpenPlay.year}</h1>
</div>
<div class="panel panel-default">
	<div class=panel-heading>
		<h3>{$obj->mStudent.first} {$obj->mStudent.last}'s History</h3>
		<p>
			You have attended to the following open play classes:
		</p>
	</div>
	<div class=panel-body>

		<div class="row list-group">
			{section name=i loop=$obj->mHistory}
					<a class=list-group-item href="">{date( 'l, F jS, Y', strtotime( $obj->mHistory[ i ].dates ) )}</a>
			{/section}
		</div>
	</div>
</div>