{load_presentation_object filename="weekly" assign="obj"}
<table class=tables>
<thead>
	<tr>
		<th colspan=8><h3>{$obj->mSeason.season} {$obj->mSeason.year}: <i>{$obj->mSeason.start_date} to {$obj->mSeason.end_date}</i></h3></th>
	</tr>
	<tr class=classHeader>
		<th>class title</th><th>Mon</th><th>Tues</th><th>Wed</th><th>Thur</th><th>Fri</th><th>Sat</th><th>Sun</th>
	</tr>
</thead>
<tbody>
{section name=i loop=$obj->classes}
	<tr style="background-color:{$obj->classes[ i ]->mColor};">
	<td>
		{if $obj->mIsAdmin}
			{if $obj->classes[ i ]->mType == "Flexible"}
				<p align=right><a href="{$obj->classes[ i ]->mLinkToAddPackageToClass}">add class package&raquo;</a></p>
			{/if}
		{/if}
		<a class=classes href="{$obj->classes[ i ]->mLinkToClass}">{$obj->classes[ i ]->mTitle}&raquo;</a><br/><span style="font-size:15px;">{$obj->classes[ i ]->mAgeGroup}</span>
	</td>

	{for $j = 1 to 7 step 1}
		<td>
			{section name=k loop=$obj->classes[ i ]->mWeekdays[ $j ]}
				<a class=classes href="{$obj->classes[ i ]->mWeekdays[ $j][ k ]->mLinkToClass}"> {$obj->classes[ i ]->mWeekdays[ $j ][ k ]->mTime}&raquo;</a><br/>
			{/section}
		</td>
	{/for}
	</tr>
{sectionelse}
	<tr><td colspan=8>no classes available</td></tr>
{/section}
</tbody>
</table>