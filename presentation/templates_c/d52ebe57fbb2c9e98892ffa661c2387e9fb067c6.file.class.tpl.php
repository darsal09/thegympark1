<?php /* Smarty version Smarty-3.1.8, created on 2015-01-10 01:21:59
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\class.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1987954ad7326a41003-81921409%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd52ebe57fbb2c9e98892ffa661c2387e9fb067c6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\class.tpl',
      1 => 1420870910,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1987954ad7326a41003-81921409',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54ad7326b90f07_33389392',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54ad7326b90f07_33389392')) {function content_54ad7326b90f07_33389392($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"classInfo",'assign'=>"obj"),$_smarty_tpl);?>

<div class="panel panel-default">
  <div class="panel-heading">
	<h1><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['title'];?>
</h1>
  </div>
  <div class="panel-body">
			<p>Age: <strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['age_group'];?>
</strong></p>
			<p>Day & Time: <strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['weekday'];?>
s</strong> <strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_time'];?>
 - <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['end_time'];?>
</strong></p>
			<p>Dates: <strong><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_date'];?>
  - <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['end_date'];?>
</strong></p>
						
				<div class="lis-group">
					<h3>Registration Options</h3>
					<a class="list-group-item" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSignUp;?>
">Full Season: 18 Weeks <strong>$<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['price'];?>
</strong> &raquo;</a>
					<a class="list-group-item" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSignUpFirst;?>
">	First 9 Weeks: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mFBegin;?>
 - <?php echo $_smarty_tpl->tpl_vars['obj']->value->mFEnd;?>
 <strong>$<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['9WeekPrice'];?>
</strong> &raquo;</a>
					<a class="list-group-item" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSignUpLast;?>
">	Last 9 Weeks: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mLBegin;?>
 - <?php echo $_smarty_tpl->tpl_vars['obj']->value->mLEnd;?>
 <strong>$<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['9WeekPrice'];?>
</strong> &raquo;</a>
				</div>
	</div>

	<?php if ($_smarty_tpl->tpl_vars['obj']->value->mSimilarClasses>0){?>		
		<div class="panel-footer">
						<h3>Similar  Classes</h3>
						<p>
							Other available classes offered during the week.
						</p>
							
								<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mWeek) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
									<?php if (sizeof($_smarty_tpl->tpl_vars['obj']->value->mWeek[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']])>1){?>
									<li class=list-group-item>
										<div class=row>
										<div class=col-md-2>
											<?php echo $_smarty_tpl->tpl_vars['obj']->value->mWeek[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['weekdays'];?>

										</div>
											<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['j'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['j']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['name'] = 'j';
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mWeek[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['j']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['j']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['j']['total']);
?>
												<?php if (isset($_smarty_tpl->tpl_vars['obj']->value->mWeek[$_smarty_tpl->getVariable('smarty',null,true,false)->value['section']['i']['index']][$_smarty_tpl->getVariable('smarty',null,true,false)->value['section']['j']['index']])){?>
													<div class=col-md-1><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mWeek[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']][$_smarty_tpl->getVariable('smarty')->value['section']['j']['index']]['link_to_class'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mWeek[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']][$_smarty_tpl->getVariable('smarty')->value['section']['j']['index']]['start_time'];?>
&raquo;</a></div>
												<?php }?>
											<?php endfor; endif; ?>
										</div>
									</li>
									<?php }?>
								<?php endfor; else: ?>
									<p>There are no similar classes available!</p>
								<?php endif; ?>					
		</div>
	<?php }?>
</div>			
<?php }} ?>