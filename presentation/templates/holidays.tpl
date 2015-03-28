{load_presentation_object filename="holidays" assign="obj"}

<h1 class=program_title>
	Holidays for {$obj->mYear}
	<span style="float:right;font-size:20px;">
		<a href="{$obj->mLinkToAddHoliday}">+Add Holiday&raquo;</a>
	</span>
</h1>

<table class=tables>
	<thead>
		<tr><th>#</th><th>Title</th><th>Date</th><th>Options</th></tr>
	</thead>
	<tbody>
		{section name=i loop=$obj->mHolidays}
			<tr>
				<td>{$smarty.section.i.index + 1}.</td><td><a href="{$obj->mHolidays[ i ].link}">{$obj->mHolidays[ i ].title}</a></td><td>{$obj->mHolidays[ i ].hdate}</td><td><a href="{$obj->mHolidays[ i ].edit}">edit&raquo;</a> :: <a href="{$obj->mHolidays[ i ].remove}">remove&raquo;</a></td>
			</tr>
		{/section}
	</tbody>
</table>