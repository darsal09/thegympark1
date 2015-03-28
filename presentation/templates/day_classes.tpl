{load_presentation_object filename="dailyClasses" assign="obj"}
<h1>{$obj->mDayInfo->mTitle} Classes</h1>
{section name=i loop=$obj->mDayInfo->mClasses}
	<p><a href="{$obj->mDayInfo->mClasses[ i ].class_link}">{$obj->mDayInfo->mClasses[ i ].start_time} {$obj->mDayInfo->mClasses[ i ].title} &raquo;</a></p>
{sectionelse}
	<p>No classes there</p>
{/section}