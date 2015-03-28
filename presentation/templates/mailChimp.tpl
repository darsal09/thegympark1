{load_presentation_object filename="mailChimp" assign="obj"}
<h1>MailChimp</h1>
{if !$obj->mIsConnected}
	<a href="{Link::Build( 'newsletterSetUp' )}">Update API Key</a>
{/if}

<p>Here you will see the information to control your mailchimp account</p>

<h2>Campaigns</h2>
<table>
	<thead>
		<tr><th>#</th><th>Title</th><th>Options</th></tr>
	</thead>
	<tbody>
		{section name=i loop=$obj->mMailChimp[ 'campaigns' ][ 'data' ] }
			<tr><td>{$smarty.section.i.index + 1}.</td><td><a href="{$obj->mMailChimp[ 'campaigns' ][ 'data' ][ i ].link}">{$obj->mMailChimp[ 'campaigns' ][ 'data' ][ i ].title }</a></td><td></td></tr>
		{/section}
	</tbody>
</table>
<p>&nbsp;</p>
<h2>Lists</h2>
<table>
	<thead>
		<tr><th>#</th><th>Title</th><th>Options</th></tr>
	</thead>
	<tbody>
		{section name=i loop=$obj->mMailChimp[ 'lists' ][ 'data' ]}
			<tr><td>{$smarty.section.i.index + 1}.</td><td><a href="{$obj->mMailChimp[ 'lists' ][ 'data' ][ i ].link}">{$obj->mMailChimp[ 'lists' ][ 'data' ][ i ].name}</a></td><td></td></tr>
		{/section}
	</tbody>
</table>
<p>&nbsp;</p>