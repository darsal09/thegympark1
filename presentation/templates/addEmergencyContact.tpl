{load_presentation_object filename="addEmergencyInfo" assign="obj"}
<form method=post>
		<p>
			Someone other than parent if participant is under 18.
		</p>
		
		<p {if $obj->mErrors[ ':eName' ]}class=error{/if}>
			<label>Name</label><br/>
			<input type=text name=tgp_student_emergency_name value="{$obj->mP[ ':eName' ]}">
		</p>
		<p {if $obj->mErrors[ ':eRelation' ]}class=error{/if}>
			<label>Relation</label><br/>
			<input type=radio name=tgp_student_emergency_relation {if $obj->mP[ ':eRelation' ] === "Family"}checked{/if} value="Family"> Family &nbsp; &nbsp;
			<input type=radio name=tgp_student_emergency_relation {if $obj->mP[ ':eRelation' ] === "Friend"}checked{/if} value="Friend"> Friend
		</p>
		
		<div {if $obj->mErrors[ 'combined' ]} class=error{/if}>
			{if $obj->mErrors[ 'combined' ]}
				<p> At least one of the fields below must filled out!</p>
			{/if}
			<p>
				<label>Home Phone</label><br/>
				<input type=text name=tgp_student_emergency_homePhone value="{$obj->mP[ ':ehPhone' ]}">
			</p>
			<p>
				<label>Cell Phone</label><br/>
				<input type=text name=tgp_student_emergency_cellPhone value="{$obj->mP[ ':ecPhone' ]}">
			</p>
			<p>
				<label>Work Phone</label><br/>
				<input type=text name=tgp_student_emergency_workPhone value="{$obj->mP[ ':ewPhone' ]}">
			</p>
		</div>
	<p>
		<input type=submit name=tgp_student_emergency_contact_add value="Add Emergency Contact&raquo;">
	</p>
</form>