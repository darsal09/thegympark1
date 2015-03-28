{load_presentation_object filename="addParent" assign="obj"}
<form method=post>
<p {if $obj->mErrors[ ':name' ]} class=error {/if} >
	<label>Name</label><br/>
	<input type=text name="tgp_parent_name" value="{$obj->mP[ ':name' ]}">
</p>
<p {if $obj->mErrors[ ':hPhone' ]} class=error {/if}>
	<label>Home Phone</label><br/>
	<input type=text name="tgp_parent_hPhone" value="{$obj->mP[ ':hPhone' ]}">
</p>
<p {if $obj->mErrors[ ':wPhone' ]} class=error {/if}>
	<label>Work Phone</label><br/>
	<input type=text name="tgp_parent_wPhone" value="{$obj->mP[ ':wPhone' ]}">
</p>
<p {if $obj->mErrors[ ':cPhone' ]} class=error {/if}>
	<label>Cell Phone</label><br/>
	<input type=text name="tgp_parent_cPhone" value="{$obj->mP[ ':cPhone' ]}">
</p>
<p {if $obj->mErrors[ ':email' ]} class=error {/if}>
	<label>Email</label><br/>
	<input type=text name="tgp_parent_email" value="{$obj->mP[ ':email' ]}">
</p>
<p>
	<input type=submit name="tgp_parent_add" value="Add Parent&raquo;">
</p>

</form>
