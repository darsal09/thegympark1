{load_presentation_object filename="addContactInfo" assign="obj"}
	<form method=post>
			<p {if $obj->mErrors[ ':hPhone' ]} class=error{/if}>
				<label>Home Phone</label><br/>
				<input type=text name=tgp_student_contact_info_homePhone value="{$obj->mP[ ':hPhone' ]}">
			
			</p>
			<p {if $obj->mErrors[ ':cPhone' ]} class=error{/if}>
				<label>Cell Phone</label><br/>
				<input type=text name=tgp_student_contact_info_cellPhone value="{$obj->mP[ ':cPhone' ]}">
			
			</p>
			<p {if $obj->mErrors[ ':email' ]} class=error{/if}>
				<label>Email</label><br/>
				<input type=text name=tgp_student_contact_info_email value="{$obj->mP[ ':email' ]}">
			</p>
		<p>
			<input type=submit name=tgp_student_contact_info_add value="Add Student's Contact Info&raquo;">
		</p>
	</form>