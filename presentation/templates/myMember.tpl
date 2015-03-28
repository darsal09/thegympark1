{load_presentation_object filename="myMember" assign="obj"}
<ul class=breadcrumb>
	<li><a href="{$obj->mLinkToMyAccount}">&laquo;my page</a></li>
	<li><a href="{$obj->mLinkToEdit}">Edit</a></li>
</ul>
<div class="panel panel-default">
	<div class=panel-heading>
		<h1>Family Member Information</h1>
	</div>
	<div class=panel-body>
		<p>
			type: {$obj->mMember.type} <br/>
			name: {$obj->mMember.first} {$obj->mMember.last}<br/>
			dob: {$obj->mMember.dob}<br/>
			gender: {$obj->mMember.gender}
		</p>
	</div>
	<div class="panel-footer">
		<h3>Current Classes</h3>	
		{section name=i loop=$obj->mClasses}
			{$obj->mClasses[ i ].title}
		{sectionelse}
			<p>No Current Classes</p>
		{/section}
		
		<h3>Current Open Plays</h3>
		{section name=i loop=$obj->mOpenPlays}
			{$obj->mOpenPlays[ i ].title}
		{sectionelse}
			<p>No Current Open Plays</p>
		{/section}
	</div>
</div>