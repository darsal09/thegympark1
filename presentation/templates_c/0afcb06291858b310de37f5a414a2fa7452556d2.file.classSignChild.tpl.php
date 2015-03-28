<?php /* Smarty version Smarty-3.1.8, created on 2015-01-07 12:56:04
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\classSignChild.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2610954ad7334e73383-73034961%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0afcb06291858b310de37f5a414a2fa7452556d2' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\classSignChild.tpl',
      1 => 1414623313,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2610954ad7334e73383-73034961',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54ad7335088b84_74026018',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54ad7335088b84_74026018')) {function content_54ad7335088b84_74026018($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"classSignChild",'assign'=>"obj"),$_smarty_tpl);?>

	<h1>Online Application</h1>
	<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSign;?>
">sign up</a>
	<div class=row>
		<div class=col-md-7>
			<form method=post role="form">
				<div class="panel panel-default">
					<div class=panel-heading><h1>Participant Information</h1></div>
					<div class=panel-body>
						<?php if (in_array(true,$_smarty_tpl->tpl_vars['obj']->value->mErrors)){?>
							<p class=error>You need fill in all the fields to continue with the application</p>
						<?php }?>
						<p>Please  fill out all the information below</p>
						
						<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['first_name']){?>has-error<?php }?>">
							<label for="first_name" class="col-md-3 control-label">First Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" placeholder="first name" name=first_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['first_name'];?>
">
							</div>
						</div>
						<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['last_name']){?>has-error<?php }?>">
							<label for="last_name" class="col-md-3 control-label">Last Name</label>
							<div class="col-md-9">
								<input type=text class="form-control" placeholder="last name" name=last_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['last_name'];?>
">
							</div>
						</div>
						<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['dob']){?>has-error<?php }?>">
							<label for="dob" class="col-md-3 control-label">Date Of Birth</label>
							<div class="col-md-9">
								<input id=datepicker type=text class="form-control" placeholder="date of birth" name=dob value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['dob'];?>
">
							</div>
						</div>
						<div class="form-group">
							<label for=gender class="col-md-12 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['gender']){?>has-error<?php }?>">Gender</label>
							<div class=col-md-3>
							</div>
							<div class=col-md-9>
								<div class="radio col-md-12">
									<label class="<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['gender']){?>has-error<?php }?>">
										<input type=radio name=gender value="M" <?php if ($_smarty_tpl->tpl_vars['obj']->value->mP['gender']=='M'){?>checked<?php }?>> Male
									</label>
								</div>
								<div class="radio col-md-12">
									<label class="<?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['gender']){?>has-error<?php }?>">
										<input type=radio name=gender value="F" <?php if ($_smarty_tpl->tpl_vars['obj']->value->mP['gender']=='F'){?>checked<?php }?>> Female
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class=panel-footer>
						<p>
							<input type=submit class="btn btn-default btn-primary btn-lg" name="class_sign_up_child_step1" value="Continue&raquo;">
						</p>
					</div>
				</div>	
			</form>
		</div>
		<div class=col-md-5>
			<div class="panel-default">
				<div class=panel-heading><h1>Application Review</h1></div>
				<div class=panel-body>
					<h3>Class Information</h3>
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
				<div class=panel-footer>
					<h3>Relationship to registree</h3>
					<?php echo $_smarty_tpl->tpl_vars['obj']->value->mRelation;?>

				</div>
			</div>			
		</div>
	</div>
<script type="text/javascript">
		 $(function() 
		 {
			$( "#datepicker" ).datepicker(
			{
				dateFormat:"mm-dd-yy",
				changeMonth: true,
				changeYear:true,
				numberOfMonths: 1
			});
		});
</script>
<?php }} ?>