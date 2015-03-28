{load_presentation_object filename="adminClassGroup" assign="obj"}
	<ol class=breadcrumb>
		{section name=i loop=$obj->mLinks}
			<li><a href="{$obj->mLinks[ i ].link}">&laquo;{$obj->mLinks[ i ].title}</a></li>
		{/section}
	</ol>
<div class="panel panel-default">
	{if !$obj->mEdit}
		<div class="panel-heading">
			<h1>
					<i>classes: </i> {$obj->mClassTitle.title} <i>for</i> {$obj->mClassTitle.age_group}
				<span class=program_options>
					<form method=post>
						<input type=submit class="btn btn-default btn-primary" name=tgp_class_group_delete value="Delete&raquo;"> <input type=submit class="btn btn-default btn-primary" name=tgp_class_group_edit value="Edit&raquo;"> <input type=submit class="btn btn-default btn-primary" name=tgp_class_group_send_email value="Send Email&raquo;">
					</form>
				</span>
			</h1>	
		</div>
		<div class="panel-body">
			<p>
				<label>title: </label> {$obj->mClassTitle.title}<br/>
				<label>age group: </label> {$obj->mClassTitle.age_group}<br/>
				<label>total time: </label> {$obj->mClassTitle.total_time} minutes<br/>
				<label>price: </label> ${$obj->mClassTitle.price}<br/>
				<label>9 week price: </label> ${$obj->mClassTitle.9WeekPrice}<br/>
			</p>
		</div>
	{else}
		<div class="panel-heading">
			<h1>
					<i>updating: </i> {$obj->mClassTitle.title} for {$obj->mClassTitle.age_group}
			</h1>
		</div>
		<div class="panel-body">
			<form method=post role=form>
				<div class="form-group">
					<label>Title</label><br/>
					<input type=text class=form-control name="tgp_class_group_title" value="{$obj->mClassTitle.title}">
				</div>
				<div class="form-group">
					<label>Age Group</label>
					<input type=text class=form-control name="tgp_class_group_ageGroup" value="{$obj->mClassTitle.age_group}">
				</div>
				<div class=form-group>
					<label>Total Time</label>
					<div class="input-group">
						<div class="input-group-addon">Minutes</div>					
						<input type=number class=form-control name="tgp_class_group_totalTime" value="{$obj->mClassTitle.total_time}">
					</div>
				</div>
				<div class="form-group">
					<label>Price</label><br/>
					<div class="input-group">
						<div class="input-group-addon">$</div>
						<input type=text class=form-control name="tgp_class_group_price" value="{$obj->mClassTitle.price}">
					</div>
				</div>
				<div class="form-group">
					<label>9 Week Price</label><br/>
					<div class="input-group">
						<div class="input-group-addon">$</div>
						<input type=text class=form-control name="tgp_class_group_9week_price" value="{$obj->mClassTitle.9WeekPrice}">
					</div>
				</div>			
				<p><input type=submit class="btn btn-default btn-primary btn-lg" name="tgp_class_group_edit_save" value="Save Canges&raquo;"> <input type=submit class="btn btn-default btn-lg btn-info" name="tgp_class_group_edit_cancel" value="&laquo;Cancel">
			</form>
		</div>
	{/if}
</div>
		<p>&nbsp;</p>
		<h3 class=program_title>
			Classes Available
			<span style="float:right;"><a href="{$obj->mLinkToAddClass}">+Add Class&raquo;</a></span>
		</h3>
		<table width=100%>
			<tr><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th></tr>
			<tr>
				{section name=i loop=$obj->mWeek}
					<td>
						{section name=j loop=$obj->mWeek[ i ]}
							<p>
								<a href="{$obj->mWeek[ i ][ j ].link_to_class}">{$obj->mWeek[ i ][ j ].start_time}&raquo;</a>
							</p>
						{/section}
					</td>
				{sectionelse}
					<p>There are no times schedule for the week this season. The times will be set soon and when they are set we will email you the possible times you can come for the class.
				{/section}
			</tr>
		</table>

		{if $obj->mClassTitle.type == "Flexible"}
			<form method=post>
			<p>
				Buying one of the packages below lets you visit any of the class times shown above. We provide you with the following packages for your convinience. To register for this group of classes please select your package below:
			</p>
			<p>
					<p><b>Individual Packages</b></p>
					{section name=i loop=$obj->mClassPackagesIndividual}
						<input type=checkbox name=tgp_class_group_package[] value="Individual__{$obj->mClassPackagesIndividual[ i ].price}__{$obj->mClassPackagesIndividual[ i ].title}"> {$obj->mClassPackagesIndividual[ i ].title} for <b>${$obj->mClassPackagesIndividual[ i ].price}</b><br/>
					{/section}
					
					<p><b>Family Packages</b></p>
					
					{section name=i loop=$obj->mClassPackagesFamily}
						<input type=checkbox name=tgp_class_group_package[] value="Family__{$obj->mClassPackagesFamily[ i ].price}__{$obj->mClassPackagesFamily[ i ].title}"> {$obj->mClassPackagesFamily[ i ].title} for <b>${$obj->mClassPackagesFamily[ i ].price}</b><br/>
					{/section}
			</p>
			<p>
				<input type=submit name=tgp_class_group_register value="Register &raquo;"> 
			</p>
		</form>
		{/if}
