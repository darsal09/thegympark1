{load_presentation_object filename="addPackageToStudent"  foldername="admin" assign="obj"}
<h1 class=program_title><i>Add Open Plays To</i> {$obj->mParticipant.first} {$obj->mParticipant.last}</h1>
<p>&nbsp;</p>
<form method=post>
			{section name=i loop=$obj->mOpenPlays}
			
			{/section}
	<p>
		<input type=submit name="tgp_add_open_play" value="Save Open Play(s)&raquo;">
	</p>
</form>

