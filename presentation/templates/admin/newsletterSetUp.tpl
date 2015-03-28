{load_presentation_object filename="newsletterSetUp" assign="obj"}
<form method=post>
{if isset( $obj->mAPIKey[ 'id' ] ) }
	<input type=hidden name=mailchimp_api_key_id value="{$obj->mAPIKey[ 'id' ]}">
{/if}
<p>
	<label>Title</label><br/>
	<input type=text name=mailchimp_title value="{$obj->mAPIKey[ 'title' ]}">
</p>
<p>
	<label>MailChimp API Key</label><br/>
	<input type=text name=mailchimp_api_key value="{$obj->mAPIKey[ 'api_key' ]}">
</p>
<p>	
	Click <a href="http://admin.mailchimp.com/account/api" target="_blank">here </a> to get MailChimp  API Key
</p>
<p>
	<input type=submit name=update_mailchimp_api_key value="Update&raquo;">
</p>
</form>