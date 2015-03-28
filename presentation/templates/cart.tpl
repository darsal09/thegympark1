{load_presentation_object filename="cart" assign="obj"}
<fieldset>
	<legend><h1>Shopping Cart</h1></legend>
	<p>&nbsp;</p>
	<form method=post>
	<table width=100% cellpadding=5 cellspacing=0>
	<tr><th>Class(es)</th><th>Weekday(s)</th><th>Package</th><th>Quantity</th><th>Price</th></tr>
	{section name=i loop=$obj->mClasses}
		<input type=hidden name="tgp_cart_ids[]" value="{$obj->mClasses[ i ].sc_id}"> 
		<tr><td>{$obj->mClasses[ i ].class_title}</td><td> {$obj->mClasses[ i ].weekday} </td><td>{$obj->mClasses[ i ].package}</td><td><input type=text style="width:80px;" name="tgp_cart_quantity[]" value="{$obj->mClasses[ i ].quantity}"></td><td>${$obj->mClasses[ i ].class_price}</td></tr>
	{/section}
	<tr><td style="border-right:0px;font-weight:bold;">Total </td><td colspan=3 style="border-right:0px;"></td><td style="font-weight:bold;">${$obj->mTotalPrice}</td></tr>
	<tr><td colspan=5 align=right><p>&nbsp;</p><p><input type=submit name=tgp_cart_clear value="Empty Cart"> <input type=submit name=tgp_cart_update value="Update Cart"> <input type=submit name=tgp_cart_checkout value="Check Out&raquo;"></p></td></tr>
	</table>
	</form>
</fieldset>