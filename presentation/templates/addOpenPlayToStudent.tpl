{load_presentation_object filename="addOpenPlayToStudent" assign="obj"}
<h1 class=program_title><i>Add Open Plays To</i> {$obj->mParticipant.first} {$obj->mParticipant.last}</h1>
<p>&nbsp;</p>
<form method=post>
		<table>
		<tr><th colspan=3 class=program_title>Open Plays</td></tr>
		<tr><th>#</th><th>Title</th><th>Amount</th></tr>
			{section name=i loop=$obj->mOpenPlays}
			<tr>
				<td>	
					{($smarty.section.i.index + 1 )}
				</td>
				<td style="text-align:left;">
					<input type=checkbox name=tgp_openplays[] value="{$obj->mOpenPlays[ i ].id}"> {$obj->mOpenPlays[ i ].title}
				</td>
				<td>
					<input type=text name="openplay_{$obj->mOpenPlays[ i ].id}" value="" style="width:40px;">
				</td>
			</tr>
			{/section}
		</table>
	<p>&nbsp;</p>
	<p>
		<input type=submit name="tgp_add_open_play" value="Save Open Play(s)&raquo;">
	</p>
</form>

