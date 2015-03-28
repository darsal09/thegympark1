{load_presentation_object filename="weekly" assign="obj"}

        <!-- Page Title -->
        <div class="page-title">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <i class="icon-table page-title-icon"></i>
                        <h2>Schedule /</h2>
                        <p>Below you can you see our current schedule</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Services Full Width Text -->
        <div class="services-full-width container">
            <div class="row">
                <div class="services-full-width-text span12">

				<table cellpadding=5 cellspacing=5 width=100%>
					<thead>
						<tr><th>class title</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th></tr>
					</thead>
					<tbody>
					{section name=i loop=$obj->classes}
						<tr style="background-color:#{$obj->classes[ i ]->mColor};">
						<td>
							{if $obj->mIsAdmin}
								{if $obj->classes[ i ]->mType == "Flexible"}
									<p align=right><a href="{$obj->classes[ i ]->mLinkToAddPackageToClass}">add class package&raquo;</a></p>
								{/if}
							{/if}
							<a href="{$obj->classes[ i ]->mLinkToClass}">{$obj->classes[ i ]->mTitle}&raquo;</a><br/><span style="font-size:15px;">{$obj->classes[ i ]->mAgeGroup}</span>
							</td>
						{for $j = 1 to 7 step 1}
							<td>
								{section name=k loop=$obj->classes[ i ]->mWeekdays[ $j ]}
									<a href="{$obj->classes[ i ]->mWeekdays[ $j][ k ]->mLinkToClass}"> {$obj->classes[ i ]->mWeekdays[ $j ][ k ]->mTime}&raquo;</a><br/>
								{sectionelse}
									&nbsp;
								{/section}
							</td>
						{/for}
						</tr>
					{sectionelse}
						<tr><td colspan=8>no classes available</td></tr>
					{/section}
					</tbody>
					</table>
					<p>&nbsp;</p>
				</div>
			</div>
		</div>