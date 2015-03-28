{load_presentation_object filename="programFeaturedClasses" assign="obj"}
<div class=class_group>
	<h3 class=program_title>Available Classes</h3>
	
	<table class=tables><tr><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th></tr>
	<tr>
	{section name=i loop=$obj->mWeek}
		<td valign=top>
			{section name=j loop=$obj->mWeek[ i ]}
				<p><a href="{$obj->mWeek[ i  ][ j ].class_link}"> {$obj->mWeek[ i ][ j ].start_time} {$obj->mWeek[ i ][ j ].title}</a></p>
			{/section}
		</td>
	{sectionelse}
		<p>There are no featured classes available for this program</p>
	{/section}
	</tr></table>
</div>