<?php /* Smarty version Smarty-3.1.8, created on 2015-01-09 23:30:50
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\classSignAdult.tpl" */ ?>
<?php /*%%SmartyHeaderCode:601654b0aafaea9e83-81614597%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ace81cbbaeaac35380e06cedc1b9317e6657d0b4' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\classSignAdult.tpl',
      1 => 1413502635,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '601654b0aafaea9e83-81614597',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b0aafb055f05_13594481',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b0aafb055f05_13594481')) {function content_54b0aafb055f05_13594481($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"classSignAdult",'assign'=>"obj"),$_smarty_tpl);?>

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
<form method=post>
	<div class=row>
		<div class=col-md-7>
			<div class="panel panel-default">
				<div class=panel-heading>
					<h1>Participant Information</h1>
				</div>
				<div class=panel-body>
					<p>Please fill out all the information below</p>
					<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['first_name']){?>has-error<?php }?>">
						<label for="first_name" class="col-sm-2 control-label">First Name</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="first name" name=first_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['first_name'];?>
">
						</div>
					</div>
					<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['last_name']){?>has-error<?php }?>">
						<label for="last_name" class="col-sm-2 control-label">Last Name</label>
						<div class="col-sm-10">
							<input type=text class="form-control" placeholder="last name" name=last_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['last_name'];?>
">
						</div>
					</div>
					<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['dob']){?>has-error<?php }?>">
						<label for="dob" class="col-sm-2 control-label">Date of birth</label>
						<div class="col-sm-10">
							<input id=datepicker type=date class="form-control" placeholder="date of birth" name=dob value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mP['dob'];?>
">
						</div>
					</div>
					
					<div class="form-group <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['gender']){?>has-error<?php }?>">
						<label for=gender class="col-sm-12 control-label">Gender</label>
						<div class=col-sm-2>
						</div>
						<div class=col-sm-10>
							<div class="radio">
								<label class="col-sm-12 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['gender']){?>has-error<?php }?>">
									<input type=radio name=gender value="M" <?php if ($_smarty_tpl->tpl_vars['obj']->value->mP['gender']=='M'){?>checked<?php }?>> Male
								</label>
								<label class="col-sm-12 <?php if ($_smarty_tpl->tpl_vars['obj']->value->mErrors['gender']){?>has-error<?php }?>">
									<input type=radio name=gender value="F" <?php if ($_smarty_tpl->tpl_vars['obj']->value->mP['gender']=='F'){?>checked<?php }?>> Female
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class=panel-footer>	
					<p>
						<input type=submit class="btn btn-default btn-primary btn-lg" name="class_sign_up_adult_step1" value="Continue&raquo;">
					</p>
				</div>
			</div>
		</div>
		<div class=col-md-5>
			<div class="panel-default">
				<div class=panel-heading>
					<h1>Application Information</h1>
				</div>
				<div class=panel-body>
					<h3>Class Information</h3>
					<p>
						<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['title'];?>
<br/>
						<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['weekday'];?>
s at <?php echo date('g:ia',strtotime($_smarty_tpl->tpl_vars['obj']->value->mClassInfo['start_time']));?>
 - <?php echo date('g:ia',strtotime($_smarty_tpl->tpl_vars['obj']->value->mClassInfo['end_time']));?>
<br/>
						Starting <?php echo date('M jS, Y',strtotime($_smarty_tpl->tpl_vars['obj']->value->mClassInfo['begin']));?>
 to <?php echo date('M jS, Y',strtotime($_smarty_tpl->tpl_vars['obj']->value->mClassInfo['end']));?>
<br/>
						Description:<br/><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['description'];?>

					</p>
					<p>
						<span class="label label-lg label-primary">Price $<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassInfo['price'];?>
.00</span>
					</p>
					
				</div>
				<div class=panel-footer>
					<h3>Signing</h3>
					<?php echo $_smarty_tpl->tpl_vars['obj']->value->mRelation;?>

				</div>
			</div>
		</div>
	</div>
</form>
<?php }} ?>