{load_presentation_object filename="addHoliday" assign="obj"}
<form method=post>
	<p>
		<label>Title</label><br/>
		<input type=text name=":title" value="{$obj->mP[ ':title' ]}">
	</p>
	<p>
		<label>Date</label><br/>
		<input id=datepicker type=text name=":date" value="{$obj->mP[ ':date' ]}">
	</p>
	<p>
		<input type=submit name=tgp_add_holiday_save value="Save Holiday&raquo;">
	</p>
	
</form>
