{load_presentation_object filename="kids" assign="obj"}
<div class="panel panel-primary">
	<div class=panel-heading>
		<h1 style="color:white;">
			Members
			<span style="float:right;color:white;"><a style="color:white;" href="{$obj->mLinkToAddChild}">Add member&raquo;</a>
			</span>
		</h1>
	</div>
	<div class="panel-body table-responsive">
		<table class="table table-default table-striped table-hover">
			<thead>
				<tr><th>Name</th><th>Gender</th><th>DOB</th><th>Options</th></tr>
			</thead>
			<tbody>
			{section name=i loop=$obj->mKids}
				<tr><td><a href="{$obj->mKids[ i ].link}">{$obj->mKids[ i ].first} {$obj->mKids[ i ].last}</a></td>
				<td>
					{if !empty( $obj->mKids[ i ].gender )}
						{$obj->mSex[ $obj->mKids[ i ].gender ]}
					{/if}
				</td>
				<td>{date( 'M. dS, Y', strtotime( $obj->mKids[ i ].dob ) )}</td>
				<td><a href="">Remove</a> :: <a href="{$obj->mKids[ i ].register}">Register</a> :: <a href="{$obj->mKids[ i ].edit}">Edit</a></tr>
			{/section}
			</tbody>
		</table>
	</div>
</div>