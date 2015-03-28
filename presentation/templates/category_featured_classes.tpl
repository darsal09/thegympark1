{load_presentation_object filename="categoryFeaturedClasses" assign="obj"}
<div class=class_group>
	<h3 class=program_title style="clear:right;">Available Classes</h3>	
	<table width=100%>
	<tbody>
	{section name=i loop=$obj->mWeek}
		<tr>
			{if sizeof( $obj->mWeek[ i ] ) > 1 }
					<th align=right class=noborder>
						{$obj->mWeek[ i ].weekdays}
					</th>
					<td style="text-align:left;">
						{section name=j loop=$obj->mWeek[ i ]}
							{if isset( $obj->mWeek[ i ][ j ] ) }
								&nbsp;<a href="{$obj->mWeek[ i ][ j ].class_link}">{$obj->mWeek[ i ][ j ].start_time} {$obj->mWeek[ i ][ j ].title}&raquo;</a> &nbsp;
							{/if}
						{/section}
					</td>
			{/if}
		</tr>
	{sectionelse}
		<p>There are no featured classes available for this program</p>
	{/section}
	</tbody>
	</table>
</div>