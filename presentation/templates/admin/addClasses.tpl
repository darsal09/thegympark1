{load_presentation_object filename="addClasses" foldername="admin" assign="obj"}
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a></li>
	{/section}
</ol>
	<div class=page-header>
		<h1>Add Classes</h1>
	</div>
	<form method=post onSubmit="return checkSeason( 'tgp_addClass_season' );">
	<p>
		<b>Please Select A Season:</b><br/>
		<div id=seasons>
			{if !empty( $obj->mCurrentSeason.title )}
				<input type=checkbox name="tgp_addClass_season[]" value="{$obj->mCurrentSeason.id}"> {$obj->mCurrentSeason.title}&nbsp;
			{/if}
			
			{section name=i loop=$obj->mNextSeasons}
				<input type=checkbox name="tgp_addClass_season[]" value="{$obj->mNextSeasons[ i].id}"> {$obj->mNextSeasons[ i ].title}&nbsp;
			{/section}
		</div>
			
		&nbsp; <a id=addSeason href="{$obj->mLinkToNewSeason}">+Add Season&raquo;</a>
	</p>
	<p>
		Add classes by either entering the time in the empty fields or by checking an existing time.<br/>
		When adding the classes make sure you use military time to input the time.
	</p>
	<table class=tables>
		<thead>
			<tr>
				<th>Class Groups</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th>
			</tr>
		</thead>
		<tbody>
			{section name=i loop=$obj->mClassTitles}
				<tr style="background:{$obj->mClassTitles[ i ].hexColor};">
					<td>
						<a class=classes href="{$obj->mClassTitles[ i ].link}">{$obj->mClassTitles[ i ].title}</a>
					</td>
					<input type=hidden name="tgp_classes_titles[]" value="{$obj->mClassTitles[ i ].id}:{$obj->mClassTitles[ i ].category_id}:{$obj->mClassTitles[ i ].program_id}">
					{section name=j loop=$obj->mClassTitles[ i ].mWeek}
						<td>
							{if sizeof( $obj->mClassTitles[ i ].mWeek[ j ] ) > 0 }
								{section name=k loop=$obj->mClassTitles[ i ].mWeek[ j ]}
									<input type=checkbox name="tgp_{$obj->mClassTitles[ i ].id}_exist[]" value="{$obj->mClassTitles[ i ].mWeek[ j ][ k ].weekday}_{$obj->mClassTitles[ i ].mWeek[ j ][ k ].start_time}">{$obj->mClassTitles[ i ].mWeek[ j ][ k ].start_time}<br/>
								{/section}
							{else}
								<input type=text name="tgp_{$obj->mClassTitles[ i ].id}_{$obj->mWeekDays[ $smarty.section.j.index ]}_new[]" style="width:70px;"><br/>
							{/if}
						</td>
					{/section}
				</tr>
			{/section}
		</tbody>
	</table>
	<p>
		<input class="btn btn-default btn-primary btn-lg" type=submit name=tgp_classes_add value="Save Classes&raquo;">
	</p>
	</form>
	
<!-- MODAL FOR EDITING STUDENT INFORMATION -->
				<div class="modal fade" id=newSeason tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="edit_myModalLabel">Add New Season</h3>
						</div>
						<div class=modal-content style="padding:5px;">							
							<form id=addNewSeason>
								<div class=form-group>
									<label>Season</label>
									<div class=input-group>
										<select name=season>
											<option value="Winter-Spring">Winter-Spring</option>
											<option value="Summer">Summer</option>
											<option value="Fall-Winter">Fall-Winter</option>
										</select>
									</div>
								</div>
								<div class="row form-group">
									<div class=col-md-6>
										<label>Start Date</label>
										<input type=text id=startDate name=startDate placeholder="mm/dd/yyyy" value="">
									</div>
									<div class=col-md-6>
										<label>End Date</label>
										<input type=text id=endDate name=endDate placeholder="mm/dd/yyyy" value="">
									</div>
								</div>
								<div class=form-group>
									<a class='btn btn-default btn-primary btn-lg add' href="">Add&raquo;</a>
									<a class='btn btn-default btn-primary btn-lg cancel' id=newSeason_modal href="">Cancel</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	
<script>
$( document ).ready( function()
{
	$( '#addSeason' ).click( function( e )
	{
		e.preventDefault();
		
		showModal( 'newSeason' );
	});
	
	$( '.add' ).click( function ( e )
	{
		e.preventDefault();
		
		$.post( "{$obj->mLinkToAddNewSeason}",
			$('#addNewSeason' ).serialize(),
			function( data, status )
			{
				data = jQuery.parseJSON( data );
				
				if( !data.success )
					return alert( data.message );
				var seasons = $( '#seasons' ).html();
				
				$( '#seasons' ).html( seasons + '<input type=checkbox name="tgp_class_seasons[]" value="'+data.info.id+'"> '+data.info.season+' '+data.info.year+'<br/>' );
				
				closeModal( 'newSeason' );
				
			} );
	})
	
	$('#startDate' ).datepicker({
			dateFormat:"mm/dd/yy",
			changeMonth: true,
			changeYear:true,
			numberOfMonths: 1
		});
	$('#endDate' ).datepicker({
			dateFormat:"mm/dd/yy",
			changeMonth: true,
			changeYear:true,
			numberOfMonths: 1
		});
		
	
});
</script>