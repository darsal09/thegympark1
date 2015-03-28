<?php /* Smarty version Smarty-3.1.8, created on 2015-01-18 13:02:33
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\addSeason.tpl" */ ?>
<?php /*%%SmartyHeaderCode:873354bbf539a8add4-39028977%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '232fd626ddf86a7bfa64acba5f8e52d832cdcec2' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\addSeason.tpl',
      1 => 1409501495,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '873354bbf539a8add4-39028977',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bbf539c44459_17130769',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bbf539c44459_17130769')) {function content_54bbf539c44459_17130769($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addSeason",'assign'=>"obj"),$_smarty_tpl);?>

<fieldset>
	<legend><h1>Add Season</h1></legend>
	<p align=right>
		<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddClasses;?>
">+Add Classes&raquo;</a>
	</p>
	<p>
		By creating a season here you will enable to add classes in this season. Without creating a season you won't be able to create classes for a specific season.
	</p>
	<form method=post>
	
		<p
		<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':season']){?>
			class=error
		<?php }?>
		>
			<input type=radio name=tgp_season_season value="Fall-Winter"> Fall-Winter<br/>
			<input type=radio name=tgp_season_season value="Winter-Spring"> Winter-Spring<br/>
			<input type=radio name=tgp_season_season value="Summer"> Summer<br/>
		
		</p>	
		<p
		<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':start_date']){?>
			class=error
		<?php }?>
		>
			<label>Start Date</label><br/>
			<input id=datepicker type=text name=tgp_season_start_date value="">
		</p>
		<p
		<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':end_date']){?>
			class=error
		<?php }?>
		>
			<label>End Date</label><br/>
			<input id=datepicker2 type=text name=tgp_season_end_date value="">
		</p>
		
		<p>
			<input type=submit name=tgp_add_season value="Save Seaosn&raquo;">
		</p>
	</form>
</fieldset>
<?php }} ?>