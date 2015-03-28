{load_presentation_object filename="mandrill" assign="obj"}
<form method=post>
<p>
	<label>mandrill API Key</label><br/>
	<input type=text name=mandrill_api_key value="{$obj->mP[ 'api_key' ]}">
</p>

<p>
	<input type=submit name=mandrill_api_key_update value="Update&raquo;">
</p>
</form>