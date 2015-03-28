<?php /* Smarty version Smarty-3.1.8, created on 2015-01-21 13:40:28
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\openPlayRegister.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3194554bff29c372d01-27478419%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c1d4b67fb6297f7565027ad3f6479710e7aa1a4f' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\openPlayRegister.tpl',
      1 => 1412734975,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3194554bff29c372d01-27478419',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54bff29c557305_10045624',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54bff29c557305_10045624')) {function content_54bff29c557305_10045624($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"openPlayRegister",'assign'=>"obj"),$_smarty_tpl);?>

<div class="row">
	<form method=post role=form>
		<div class="col-md-7">
			<div class="panel panel-default">
				<div class=panel-heading>
					<h1><small>Registering for</small> Open Play</h1>
				</div>
				<div class=panel-body>
					<div class="form-group">
						<label>Relationship</label>
						<div class="radio">
							<label>
								<input type=radio name=tgp_op_relation value="Parent/Legal Guardian">Parent/Legal Guardian<br/>
							</label>
						</div>
						<div class=radio>
							<label>
								<input type=radio name=tgp_op_relation value="Relative">Relative<br/>
							</label>
						</div>
						<div class=radio>
							<label>
								<input type=radio name=tgp_op_relation value="Caregiver">Caregiver<br/>
							</label>
						</div>
					</div>
				</div>
				<div class=panel-footer>
						<input type=submit name=tgp_op_sign_up_continue class="btn btn-primary btn-lg" value="Continue&raquo;">
				</div>
			</div>
		</div>
	</form>
	<div class="col-md-5">
		<div class="panel-default">
			<div class=panel-heading>
				<h1><small>Open Play</small> Package Information</h1>
			</div>
			<div class=panel-body>
				<div class=list-group>
					<li class=list-group-item>
						<h3 class=list-group-item-heading>Package Info</h3>
						<p class=list-group-item-text>
							<?php echo $_smarty_tpl->tpl_vars['obj']->value->mPackage['title'];?>
 <span class=badge>$<?php echo $_smarty_tpl->tpl_vars['obj']->value->mPackage['price'];?>
.00</span>
						</p>
					</li>
					<li class="list-group-item">
						<h3 class=list-group-item-heading>Weekly Classes</h3>
						<p class=list-group-item-text>
					<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mClasses) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
						<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['weekday'];?>
 <?php echo date('g:ia',strtotime($_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['start_time']));?>
 - <?php echo date('g:ia',strtotime($_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['end_time']));?>
<br/>
					<?php endfor; endif; ?>
						</p>
					</li>
				</div>
			</div>
			<div class=panel-footer>
			
			</div>
		</div>
	</div>
</div><?php }} ?>