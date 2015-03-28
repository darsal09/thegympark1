{load_presentation_object filename="checkout" assign="obj"}

<h1>Check out</h1>
<form method=post>
	<h1>Participant Personal Information</h1>
		<p>
			<label>Name</label><br/>
			<input type=text name=tgp_checkout_name value="">
		</p>
		<p>
			<label>DOB</label><br/>
			<input type=text name=tgp_check_dob value="">
		</p>
		<p>
			<label>Gender</label><br/>
			<input type=radio name=tgp_checkout_gender value="M"> Male<br/>
			<input type=radio name=tgp_checkout_gender value="F"> Female
		</p>
	<input type=submit name=tgp_checkout_save value="Continue">
</form>