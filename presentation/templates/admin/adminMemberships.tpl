{load_presentation_object filename="adminMemberships" assign="obj"}
<fieldset>
	<legend><h1>Admin Memberships</h1></legend>

	<table width=100%>
	<tr><th>Title</th><th>Type</th><th>Price</th></tr>
	{section name=i loop=$obj->mMemberships}
		<tr><th>{$obj->mMemberships[ i ].title}</th><th>{$obj->mMemberships[ i ].type}</th><th>${$obj->mMemberships[ i ].price}.00</th></tr>
		<tr><td colspan=3>
			<h2>Features:</h2>
			<p align=right><a href="">Add Feature</a></p>
			<table width=100%>
			<tr><th>Title</th><th>options</th></tr>
		{section name=j loop=$obj->mMemberships[ i ].features}
			<tr><td>{$obj->mMemberships[ i ].features[ j ].title}</td><td> <a href="">remove</a></td></tr>
		{sectionelse}
			There are no features
		{/section}
			</table>
		</td></tr>
	{sectionelse}
		There are no memberships available
	{/section}
	</table>
</fieldset>