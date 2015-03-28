<?php /* Smarty version Smarty-3.1.8, created on 2015-01-18 18:38:53
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\addClassTitle.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2802854bc43627950d8-72251546%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e478a684733649b0a99507de8b899fce54c85463' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\addClassTitle.tpl',
      1 => 1421624331,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2802854bc43627950d8-72251546',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bc436287b856_32608067',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bc436287b856_32608067')) {function content_54bc436287b856_32608067($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addClassTitle",'foldername'=>'admin','assign'=>"obj"),$_smarty_tpl);?>

<ol class=breadcrumb>
	<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mLinks) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total']);
?>
		<li><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
">&laquo;<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</a></li>
	<?php endfor; endif; ?>
</ol>
<div class=page-header>
	<h1>Add A Class Title</h1>
</div>
<div class=row>
	<div class=col-md-6>
			<form method=post>
				<input type=hidden name=tgp_classTitle_programID value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mProgramID;?>
">
				<input type=hidden name=tgp_classTitle_categoryID value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCategoryID;?>
">
				<?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mErrorMessage)){?>
					<p class=attention>
						<?php echo $_smarty_tpl->tpl_vars['obj']->value->mErrorMessage;?>

					</p>
				<?php }?>
				
				<div class="form-group <?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mErrorMessage)){?>has-error<?php }?>">
					<label>Type</label><br/>
					<input type=radio name=tgp_classTitle_type 
						<?php if ($_smarty_tpl->tpl_vars['obj']->value->mP[':type']=="Fixed"){?>
							checked = true
						<?php }?> 
					value="Fixed"> Fixed &nbsp;&nbsp;
					<input type=radio name=tgp_classTitle_type 
						<?php if ($_smarty_tpl->tpl_vars['obj']->value->mP[':type']=="Flexible"){?>
							checked = true
						<?php }?> 
					value="Flexible">Flexible
				</div>
				
				<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':Title']){?>has-error<?php }?>">
					<label class=control-label>Title</label>
					<div class="input-group">
						<input type=text class=form-control name=tgp_classTitle_title value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':Title'];?>
">
					</div>
				</div>
				
				<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':ageGroup']){?>has-error<?php }?>">
					<label class=control-label>Age Group</label>
					<div class=input-group>
						<input type=text class=form-control name=tgp_classTitle_age value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':ageGroup'];?>
">
					</div>
				</div>
				<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':totalTime']){?>has-error<?php }?>">
					<label class=control-label>Total Time</label>
					<div class=input-group>
						<div class="input-group-addon">Minutes</div>
						<input type=text class=form-control name=tgp_classTitle_totalTime value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':totalTime'];?>
">
					</div>
				</div>
				<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':price']){?>has-error<?php }?>">
					<label class=control-label>Price</label>
					<div class="input-group">
						<div class="input-group-addon">$</div>
						<input type=text class=form-control name=tgp_classTitle_price value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':price'];?>
">
					</div>
				</div>
				
				<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors[':price']){?>has-error<?php }?>">
					<label class=control-label>9 Week Price</label>
					<div class="input-group">
						<div class="input-group-addon">$</div>
						<input type=text class=form-control name=tgp_classTitle_9week_price value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP[':price'];?>
">
					</div>
				</div>
				
				<p>
					<input type=submit class="btn btn-default btn-primary btn-lg" name="tgp_add_class_title" value="Save Class Title&raquo;">
				</p>
			</form>
	</div>
</div><?php }} ?>