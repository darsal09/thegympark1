<?php /* Smarty version Smarty-3.1.8, created on 2015-01-07 12:55:55
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\classSignUp.tpl" */ ?>
<?php /*%%SmartyHeaderCode:878854ad732b7eb585-49257367%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '246ee0d5218659a01b7181d9d8b0d050b70bd1b1' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\classSignUp.tpl',
      1 => 1414987347,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '878854ad732b7eb585-49257367',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54ad732b900b00_75329947',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54ad732b900b00_75329947')) {function content_54ad732b900b00_75329947($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"classSignUp",'assign'=>"obj"),$_smarty_tpl);?>

<div class=row>
	<div class=col-md-8>
		<form method=post role="form">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1>Relationship to Participant</h1>
				</div>
				<div class=panel-body>
					<?php if (in_array(true,$_smarty_tpl->tpl_vars['obj']->value->mErrors)){?>
						<p class="error">You need to select one of the options</p>
					<?php }?>
					
					<p>What is your relationship to the person you are registering?</p>
					<div class="form-group <?php if (in_array(true,$_smarty_tpl->tpl_vars['obj']->value->mErrors)){?>has-error<?php }?>">
						<div class=radio>
							<label>
								<input type=radio name=relation value="PG"> Parent/Legal Guardian
							</label>
						</div>
						<div class=radio>
							<label>
								<input type=radio name=relation value="C"> Caregiver
							</label>
						</div>
						<div class=radio>
							<label>
								<input type=radio name=relation value="R"> Relative
							</label>
						</div>
						<div class=radio>
							<label>
								<input type=radio name=relation value="M"> Myself
							</label>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<p>
						<input type=submit class="btn btn-default btn-lg btn-primary" name="tgp_class_sign_up" value="Continue&raquo;">
					</p>
				</div>
			</div>
		</form>
	</div>
	<div class=col-md-4>
		<div class="panel-default">
			<div class="panel-heading"><h1>Class Information</h1></div>
			<div class=panel-body>
				<p><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['title'];?>
<br/>
				<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['weekday'];?>
s at <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_time'];?>
<br/>
				Class Dates: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['begin'];?>
 to <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['end'];?>
<br/>
				Price: $<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['Price'];?>

			</div>
		</div>
	</div>
</div><?php }} ?>