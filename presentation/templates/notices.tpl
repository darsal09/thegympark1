{load_presentation_object filename="notices" assign="obj"}
{if sizeof( $obj->mNotices ) > 0 }
	<div class="panel panel-warning">
		<div class=panel-heading>
			<h1>Notices</h1>
		</div>
		<div class="panel-body">
			<h3>Pending Payment(s)</h3>
			<div class="list-group">
				{section name=i loop=$obj->mNotices}
					<a class=list-group-item href="">{$obj->mNotices[ i ].type} Payment {$obj->mNotices[ i ].payment} ${$obj->mNotices[ i ].amount}</a>
				{/section}
			</div>
		</div>
		<div class=panel-footer>
			<h3>Pending Parent Consent for</h3>
			<div class=list-group>
				{section name=i loop=$obj->mConsents}
					<a class=list-group-item href="">{$obj->mConsents[ i ].name} to participate in {$obj->mConsents[ i  ].type}</a> 
				{/section}
			</div>
		</div>
	</div>
{/if}