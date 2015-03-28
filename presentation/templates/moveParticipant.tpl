{load_presentation_object filename="moveParticipant" assign="obj"}
<h1><i>Moving</i> {$obj->mStudent.first} {$obj->mStudent.last}</h1>
<h2><i>From</i> {$obj->mClass.title}</h2>
<h2><i>To</i></h2>
<p>
{if !empty( $obj->mType )}
	<a href="{$obj->mLinkToAll}">All</a> |
{/if}

{section name=i loop=$obj->mFilters}
	<a href="{$obj->mFilters[ i ].link}">{$obj->mFilters[ i ].title}</a> | 
{/section}
</p>
<form method=post>
<p>
{section name=i loop=$obj->mAvailableClasses}
<input type=radio name=tgp_new_class value="{$obj->mAvailableClasses[ i ].class_id}"> {$obj->mAvailableClasses[ i ].title}<br/>
{/section}
</p>
<p>
	<input type=submit name=tgp_move_student value="Save Changes&raquo;"> <input type=submit name=tgp_cancel value="Cancel">
</p>
</form>