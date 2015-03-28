{load_presentation_object filename="addAddress" assign="obj"}	
<form method=post>
			<p {if $obj->mErrors[ ':street' ]}class=error{/if} >
				<label>Street</label><br/>
				<input type=text name=tgp_student_address_street value="{$obj->mP[ ':street' ]}">
			</p>
			<p {if $obj->mErrors[ ':city' ]}class=error{/if}>
				<label>City</label><br/>
				<input type=text name=tgp_student_address_city  value="{$obj->mP[ ':city' ]}">
			</p>
			<p {if $obj->mErrors[ ':state' ]}class=error{/if}>
				<label>State</label><br/>
				<input type=text name=tgp_student_address_state  value="{$obj->mP[ ':state' ]}">
			</p>	
			<p {if $obj->mErrors[ ':zip' ]}class=error{/if}>
				<label>Zip</label><br/>
				<input type=text name=tgp_student_address_zip value="{$obj->mP[ ':zip' ]}">
			</p>	
	<p>
		<input type=submit name=tgp_student_address_add value="Add Student's Address&raquo;">
	</p>
</form>
