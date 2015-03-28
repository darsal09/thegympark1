{load_presentation_object filename="bronze" assign="obj"}
<h1>{$obj->mMembership.title}</h1>
<p>
	<b>Note: {$obj->mMembership.description}</b>
</p>
<p>&nbsp;</p>
<div class=features>
<p style="font-weight:normal;font-style:italic;">
	This membership includes the following features. If you sign up for this membership you will get the following:
</p>
{section name=i loop=$obj->mFeatures}
	<p>{$obj->mFeatures[ i ].title} </p>
{/section}
</div>
<p>&nbsp;</p>
<p>
	You will have an option from one of the options below:
</p>
<div class=features>
<p style="font-weight:normal;font-style:italic;">
	This membership includes one of the following options:
</p>
{section name=i loop=$obj->mOptions}
	<p>{$obj->mOptions[ i ].title}</p>
{/section}
</div>
<p>&nbsp;</p>
{if !$obj->mHasMembership}
	<form method=post>
		<p><input type=submit name="tgp_membership_bronze_register" value="Get Membership &raquo;"></input></p>
	</form>
{/if}