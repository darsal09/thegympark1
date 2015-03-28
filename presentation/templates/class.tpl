{load_presentation_object filename="classInfo" assign="obj"}
<div class="panel panel-default">
  <div class="panel-heading">
	<h1>{$obj->mClassInfo.title}</h1>
  </div>
  <div class="panel-body">
			<p>Age: <strong>{$obj->mClassInfo.age_group}</strong></p>
			<p>Day & Time: <strong>{$obj->mClassInfo.weekday}s</strong> <strong>{$obj->mClassInfo.start_time} - {$obj->mClassInfo.end_time}</strong></p>
			<p>Dates: <strong>{$obj->mClassInfo.start_date}  - {$obj->mClassInfo.end_date}</strong></p>
						
				<div class="lis-group">
					<h3>Registration Options</h3>
					<a class="list-group-item" href="{$obj->mLinkToSignUp}">Full Season: 18 Weeks <strong>${$obj->mClassInfo.price}</strong> &raquo;</a>
					<a class="list-group-item" href="{$obj->mLinkToSignUpFirst}">	First 9 Weeks: {$obj->mFBegin} - {$obj->mFEnd} <strong>${$obj->mClassInfo.9WeekPrice}</strong> &raquo;</a>
					<a class="list-group-item" href="{$obj->mLinkToSignUpLast}">	Last 9 Weeks: {$obj->mLBegin} - {$obj->mLEnd} <strong>${$obj->mClassInfo.9WeekPrice}</strong> &raquo;</a>
				</div>
	</div>

	{if $obj->mSimilarClasses > 0}		
		<div class="panel-footer">
						<h3>Similar  Classes</h3>
						<p>
							Other available classes offered during the week.
						</p>
							
								{section name=i loop=$obj->mWeek}
									{if sizeof( $obj->mWeek[ i ] ) > 1}
									<li class=list-group-item>
										<div class=row>
										<div class=col-md-2>
											{$obj->mWeek[ i ].weekdays}
										</div>
											{section name=j loop=$obj->mWeek[ i ]}
												{if isset( $obj->mWeek[ i ][ j ] )}
													<div class=col-md-1><a href="{$obj->mWeek[ i ][ j ].link_to_class}">{$obj->mWeek[ i ][ j ].start_time}&raquo;</a></div>
												{/if}
											{/section}
										</div>
									</li>
									{/if}
								{sectionelse}
									<p>There are no similar classes available!</p>
								{/section}					
		</div>
	{/if}
</div>			
