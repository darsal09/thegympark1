{load_presentation_object filename="monthlyClasses" assign="obj"}
<p>&nbsp;</p>
<table cellpadding=0 cellspacing=0 style="width:100%;border:1px solid black;padding:0px;">
<tr><th><a href="{$obj->mLinkToPreviousMonth}">&laquo; previous</a></th><th  colspan=5><h3>{$obj->monthInfo->title} {$obj->monthInfo->year}</h3></th><th><a href="{$obj->mLinkToNextMonth}">next &raquo;</a></th></tr>

<tr><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th></tr>

<tr>
{for $i =( $obj->monthInfo->start_weekday_index - 1) to 0 step -1}
	<td bgcolor=gray valign=top><a href="{$obj->previousMonth->days[ ( ($obj->previousMonth->end_day - $i ) - 1 ) ]->mLinkToDay}">{$obj->previousMonth->end_day - $i}</a><br/>
		{section name=j loop =$obj->previousMonth->days[ ( ( $obj->previousMonth->end_day - $i ) -1 ) ]->mClasses}
			<a href="{$obj->previousMonth->days[ ( ( $obj->previousMonth->end_day - $i ) - 1 ) ]->mClasses[ j ].class_link}">{$obj->previousMonth->days[ ( ( $obj->previousMonth->end_day - $i ) - 1 ) ]->mClasses[ j ].start_time} {$obj->previousMonth->days[ ( ($obj->previousMonth->end_day - $i ) - 1) ]->mClasses[ j ].title}&raquo;</a>
		{/section}	
	</td>
{/for}

{for $i = 1 to $obj->monthInfo->end_day step 1}
	<td valign=top><a href="{$obj->monthInfo->days[ ( $i - 1 ) ]->mLinkToDay}">{$i}</a><br/>
		{section name=j loop =$obj->monthInfo->days[ ( $i - 1 ) ]->mClasses}
			<a href="{$obj->monthInfo->days[ ($i - 1 ) ]->mClasses[ j ].class_link}">{$obj->monthInfo->days[ ( $i - 1 ) ]->mClasses[ j ].start_time} {$obj->monthInfo->days[ ($i - 1) ]->mClasses[ j ].title}&raquo;</a>
		{/section}
	</td>
	{if ( $i + $obj->monthInfo->start_weekday_index)  % 7 == 0}
		</tr><tr>
	{/if}
{/for}

{for $i = 1 to ( 7 - ( $obj->monthInfo->end_day + $obj->monthInfo->start_weekday_index ) % 7 ) step 1}
	<td bgcolor=gray valign=top><a href="{$obj->nextMonth->days[ ( $i - 1 ) ]->mLinkToDay}">{$i}</a><br/>
		{section name=j loop =$obj->nextMonth->days[ ( $i - 1 ) ]->mClasses}
			<a href="{$obj->nextMonth->days[ ( $i - 1 ) ]->mClasses[ j ].class_link}">{$obj->nextMonth->days[ ( $i - 1 ) ]->mClasses[ j ].start_time} {$obj->nextMonth->days[ ($i - 1) ]->mClasses[ j ].title}&raquo;</a>
		{/section}		
	</td>
{/for}
</tr>
</table>