{load_presentation_object filename="holiday" assign="obj"}
{section name=i loop=$obj->mLinks}
	<a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a>
	
	{if ( $smarty.section.i.index + 1 ) < sizeof( $obj->mLinks )}
		 | 
	{/if}
{/section}

{if !$obj->mEdit}
<h1 class=program_title>
	{$obj->mHoliday.title}
	<span style="float:right;font-size:20px;">
		<a href="{$obj->mLinkToEdit}">edit</a> :: <a href="{$obj->mLinkToRemove}">remove</a>
	</span>
</h1>
	<p>weekday: {$obj->mHoliday.weekday}</p>
	<p>date: {$obj->mHoliday.hdate}</p>
	<p>added on: {$obj->mHoliday.addedOn}</p>
{else}
<h1 class=program_title>
	Editing 
	<span style="float:right;font-size:20px;">
		<a href="{$obj->mLinkToRemove}">remove</a>
	</span>
</h1>
	<form method=post>
		<p>
			<label>Title</label</br>
			<input type=text name=":title" value="{$obj->mHoliday[ 'title' ]}">
		</p>
		<p>
			<label>Title</label</br>
			<input type=text id=datepicker name=":date" value="{$obj->mHoliday[ 'hdate' ]}">
		</p>
		<p>
			<input type=submit name=tgp_edit_holiday_save value="Save Changes&raquo;"> <input type=submit name=tgp_edit_holiday_cancel value="Cancel">
		</p>
	</form>
{/if}