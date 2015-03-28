{load_presentation_object filename="addClassToStudent" assign="obj"}
<h1>{$obj->mParticipant.first} {$obj->mParticipant.last}</h1>
{section name=i loop=$obj->mWeek}
	<a href="">{$obj->mWeek[ i ]}</a> &nbsp; &nbsp;
{/section}

<form method=post>
	<p>
		{section name=i loop=$obj->mClasses}
			<input type=checkbox name=tgp_classes[] value="{$obj->mClasses[ i ].class_id}"><a href="{$obj->mClasses[ i ].link}">{$obj->mClasses[ i ].title}&raquo;</a><br/>
		{/section}
	</p>
	<p>
		<input type=submit name=tgp_student_add_classes value="Add Classes&raquo;">
	</p>
</form>