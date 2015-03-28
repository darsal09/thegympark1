<?php /* Smarty version Smarty-3.1.8, created on 2014-12-31 12:58:02
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\employee\addOpenPlayPayment.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2637854a0b1df290a03-60873844%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cdb0ba854fb79eb281d8c58fd1f74c7b9038ca7c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\employee\\addOpenPlayPayment.tpl',
      1 => 1420048679,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2637854a0b1df290a03-60873844',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a0b1df2c7501_00532772',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a0b1df2c7501_00532772')) {function content_54a0b1df2c7501_00532772($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"addOpenPlayPayment",'foldername'=>"employee",'assign'=>"obj"),$_smarty_tpl);?>

<div class=page-header>
	<h1>Add Open Play Payment</h1>
</div>
<div class=container>
	<form method=post>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<a data-toggle="collapse" data-parent="#accordion" href="#class_0">New Card</a>
				</div>
				<div id="class_0" class="panel-collapse collapse in">
						<div class="panel-body">		
							<div class=form-group>
								<div class=col-md-2>
									<label for=name class=control-label>Type</label>
								</div>
								<div class=col-md-10>
									<input type=radio name="type" value="Visa"> Visa<br/>
									<input type=radio name="type" value="MasterCard"> Master Card<br/>
									<input type=radio name="type" value="AmericanExpress"> American Express<br/>
									<input type=radio name="type" value="Discover"> Discover
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=name class=control-label>Name</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name="name">
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>Number</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=number>
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>Expiration Date</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=expire_date>
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>Card Code</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=card_code>
								</div>
							</div>
							<h3>Credit Card Address</h3>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>Street</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=street>
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>City</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=city>
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>State</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=state>
								</div>
							</div>
							<div class=form-group>
								<div class=col-md-2>
									<label for=number class=control-label>zip</label>
								</div>
								<div class=col-md-10>
									<input type=text class=form-control name=zip>
								</div>
							</div>
						</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<a data-toggle="collapse" data-parent="#accordion" href="#class_1">Existing Cards</a>
				</div>
				<div id="class_1" class="panel-collapse collapse out">
					<div class="panel-body">	
						<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mCards) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
							<p><input type=radio name="existing_card" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCards[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
"> <?php echo $_smarty_tpl->tpl_vars['obj']->value->mCards[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['card']['name'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mCards[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['card']['type'];?>
-<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCards[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['card']['last4'];?>
</p>
						<?php endfor; endif; ?>
					</div>
				</div>
			</div>
			<p>&nbsp;</p>
			<div class=form-group>
				<div class=col-md-2>
				
				</div>
				<div class=col-md-10>
					<input type=submit class="btn btn-default btn-primary btn-lg" name="make_payment" value="Payment&raquo;">
				</div>
			</div>
		</div>		
	</form>
</div><?php }} ?>