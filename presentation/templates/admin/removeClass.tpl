{load_presentation_object filename="removeClass" foldername="admin" assign="obj"}
<div class=page-header>
	<h1>
		Removing student from class<br/>
		<small>
			{$obj->mClass.title} on {$obj->mClass.weekday} - {helper::getTimeFormat( $obj->mClass.start_time )}<br/>
		</small>
	</h1>
</div>
<form method=post>

	<h3>Are you sure you want to remove <span style="color:red;">{$obj->mStudent.first} {$obj->mStudent.last}</span> from class?</h3>
	<p>
		<input class="btn btn-default btn-danger btn-lg" type=submit name=tgp_remove_class value="Remove"> &nbsp; &nbsp; &nbsp;
		<a class="btn btn-default btn-primary btn-lg" href="{$obj->mLinkToCancel}">Cancel</a>
	</p>
</form>