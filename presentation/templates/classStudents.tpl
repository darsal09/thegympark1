{load_presentation_object filename="classStudents" assign="obj"}
	<h3 class=program_title>
		Students
		<span style="float:right;"><a href="{$obj->mLinkToAddExistingParticipant}">Add Existing Participant&raquo;<a/> :: <a href="{$obj->mLinkToAddChild}">+Add New Participant&raquo;</a></span>
	</h3>
	
	{if sizeof( $obj->mStudents )  > 0}	
		<table class=tables>
		<tr><th>#</th><th>Name</th><th>Age</th><th style="text-align:right;">Options</th></tr>
		{section name=i loop=$obj->mStudents}
			<tr>
				<td>{$smarty.section.i.index + 1 }.</td>
				<td>
					<a href="{$obj->mStudents[ i ].link_to_student}">{$obj->mStudents[ i ].last}, {$obj->mStudents[ i ].first}</a>
				</td>
				<td>
					{$obj->mStudents[ i ].age}
				</td>
				<td align=right>
					<a href="{$obj->mStudents[ i ].link_to_student}">view</a>
					:: <a href="{$obj->mStudents[ i ].link_to_remove}">remove</a>
				</td>
			</tr>
		{/section}
		</table>
	{else}
		<p>No students in this class yet!</p>
	{/if}
	<p>&nbsp;</p>