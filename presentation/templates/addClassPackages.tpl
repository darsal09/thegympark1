{load_presentation_object filename="addClassPackages" assign="obj"}
<h1>Add class packages</h1>
<p>
	<h3>For <strong>{$obj->mClassGroupTitle.title}</strong></h3>
</p>
<form method=post action="">
<h4>Individual Packages:</h4>
{section name=i loop=$obj->mIndividualPackages}
	<p><input type=checkbox name=tgp_class_options[] value="{$obj->mIndividualPackages[ i ].id}"> {$obj->mIndividualPackages[ i ].title} for ${$obj->mIndividualPackages[ i ].price}</p>
{/section}
<h4>Family Packages:</h4>
{section name=i loop=$obj->mFamilyPackages}
	<p><input type=checkbox name=tgp_class_options[] value="{$obj->mFamilyPackages[ i ].id}"> {$obj->mFamilyPackages[ i ].title} for ${$obj->mFamilyPackages[ i ].price}</p>
{/section}
<p>
	<input type=submit name="tgp_class_save_packages" value="Save Class Packages">
</p>