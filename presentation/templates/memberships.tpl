{load_presentation_object filename="membershipsPlans" assign="obj"}
	{if $obj->mIsAdmin}
		{include file="adminMemberships.tpl"}
	{else}
		<div id=memberships>
			<h1>Memberships</h1>
			{if $obj->mIsLoggedIn && $obj->mIsRegular}
				<h3>
					Our files indicate you don't have a membership. If you would like to get a membership you can select one from below:
				</h3>
			{/if}
			<p>
				We provide the following memberships:
			</p>
			<p>
				<ul>
					{section name=i loop=$obj->mMemberships}
						<li>{$obj->mMemberships[ i ].title} for ${$obj->mMemberships[ i ].price} <a href="{$obj->mMemberships[ i ].link_to_membership}">more inform&raquo</a></li>
					{sectionelse}
						<h3>There are no memberships available</h3>
					{/section}
				</ul>
			</p>
			<p>
				Please feel free to browse through them. To see which one will benefit you better.
			</p>
			<p>
				<a href="javascript:hide( 'memberships' );">skip memberships</a>
			</p>
		</div>
	{/if}