{load_presentation_object filename="addExistingParticipant" foldername="admin" assign="obj"}
<div class=breadcrumb>
	<a href="{$obj->mLinkBackToClass}">&laquo;Back to Class</a><br/>
	{section name=i loop=$obj->mLinks}
		<a href="{$obj->mLinks[ i ].link}">{$obj->mLinks[ i ].title}</a>
	{/section}
</div>
<div class=page-header>
	<h1>
		Add Students To Class
		<small>
		
		</small>
	</h1>
</div>
<p>
Filter First Names Starting With: &nbsp;
{if $obj->mLetter != ''}
	<a style="font-weight:bold;" href="{$obj->mLinkToAll}">All</a> &nbsp; | &nbsp;
{/if}
{section name=i loop=$obj->mFilters}
	<a style="font-weight:bold;" href="{$obj->mFilters[ i ].link}">{$obj->mFilters[ i ].letter}</a> &nbsp; | &nbsp;
{/section}
</p>
<form method=post>
	<div class=form-group>
		<label>Start Date</label>
		<input type=text id=start_date name=start_date value="">
	</div>
	<div class=form-group>
		<label>End Date</label>
		<input type=text id=end_date name=end_date value="">	
	</div>
	<div class=form-group>
		{section name=i loop=$obj->mParticipants}
			<input type=checkbox name="tgp_existing_participants[]" value="{$obj->mParticipants[ i ].id}"> <a href="{$obj->mParticipants[ i ].link}">{$obj->mParticipants[ i ].name}</a><br/>
		{/section}
	</div>	
	<div class=form-group>
		<input class="btn btn-default btn-primary btn-lg" type=submit name=tgp_class_add_existing_participants value="Add To Class&raquo;">
	</div>
</form>

<script>
$( document ).ready(function(){
	$( '#start_date' ).datepicker({
		dateFormat:"mm/dd/yy",
		changeMonth:true,
		changeYear:true,
		numberOfMonths: 1		
	});
	
	$('#end_date' ).datepicker({
			dateFormat:"mm/dd/yy",
			changeMonth:true,
			changeYear:true,
			numberOfMonths: 1
		});
});
</script>