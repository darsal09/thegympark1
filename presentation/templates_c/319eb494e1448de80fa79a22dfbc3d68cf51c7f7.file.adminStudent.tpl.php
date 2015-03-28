<?php /* Smarty version Smarty-3.1.8, created on 2014-12-29 09:41:45
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\adminStudent.tpl" */ ?>
<?php /*%%SmartyHeaderCode:229654a1682939dc88-60787748%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '319eb494e1448de80fa79a22dfbc3d68cf51c7f7' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\adminStudent.tpl',
      1 => 1411611670,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '229654a1682939dc88-60787748',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54a168296ed704_49278572',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a168296ed704_49278572')) {function content_54a168296ed704_49278572($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"adminStudent",'assign'=>"obj"),$_smarty_tpl);?>

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
		<h1 class=program_title>
			<i>participant:</i> <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['first'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['last'];?>

			&nbsp; <i>Membership: </i> 
			<?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mMembership)){?>
				<span class="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mMembership['type'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mMembership['type'];?>
</span>
			<?php }else{ ?>
				<a href="">Add Membership&raquo;</a>
			<?php }?>
		</h1>
<div class=row>
	<div class=col-md-4>
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->mEdit){?>
				<div class=edit>
					<h1 class=program_title>Edit Student Info</h1>
					<form method=post>
						<input type=hidden name=tgp_student_id value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['id'];?>
">
						<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mError['name']){?> class=error<?php }?> >
							<label>Name</label><br/>
							<input type=text name=tgp_student_name value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['first'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['last'];?>
">
						</p>
						<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mError['dob']){?> class=error<?php }?> >
							<label>DOB</label><br/>
							<input id=datepicker  type=text name=tgp_student_dob value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['dob'];?>
">
						</p>
						<p <?php if ($_smarty_tpl->tpl_vars['obj']->value->mError['gender']){?> class=error<?php }?> >
							<label>Gender</label><br/>
							<input type=radio name=tgp_student_gender <?php if ($_smarty_tpl->tpl_vars['obj']->value->mStudent['gender']=="M"){?> checked <?php }?> value="M"> Male &nbsp; &nbsp; 
							<input type=radio name=tgp_student_gender <?php if ($_smarty_tpl->tpl_vars['obj']->value->mStudent['gender']=="F"){?> checked <?php }?> value="F"> Female
						</p>
						<p>
							<input type=submit name=tgp_student_update value="Update Info&raquo;">
							<input type=submit name=tgp_student_update_cancel value="Cancel">
						</p>
						
					</form>
				</div>
			<?php }else{ ?>			
				<div>
					<h3 class=program_title>
						Student Info
						<span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEditImmidiateInfo;?>
"><span class="glyphicon glyphicon-pencil"></span></a></span>
						</h3>
					<p>
						DOB: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['dob'];?>
<br/>
						Age: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['age'];?>
<br/>
						Gender: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['gender'];?>

					</p>		
				</div>
			<?php }?>	
			
			<?php echo $_smarty_tpl->getSubTemplate ("studentClasses.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

		
			<?php if ($_smarty_tpl->tpl_vars['obj']->value->mStudent['age']>17){?>
				<div class=contact_info>
					<h3 class=program_title>
						Contact Info &nbsp; 
						<span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEditContactInfo;?>
"><span class="glyphicon glyphicon-pencil"></span></a></span>
					</h3>
					
					<?php if (!is_array($_smarty_tpl->tpl_vars['obj']->value->mContact)){?>
						<?php echo $_smarty_tpl->getSubTemplate ("addContactInfo.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

					<?php }elseif($_smarty_tpl->tpl_vars['obj']->value->mOption=="contactinfo"){?>
						<?php echo $_smarty_tpl->getSubTemplate ("updateContactInfo.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

					<?php }else{ ?>				
						<p>
							Cell: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mContact['cellPhone'];?>
<br/>
							Home: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mContact['homePhone'];?>
<br/>
							Email: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mContact['email'];?>

						</p>
					<?php }?>				
				</div>
			<?php }?>
		
			<div id=address>		
				<?php if (!is_array($_smarty_tpl->tpl_vars['obj']->value->mAddress)){?>
					<h3 class=program_title>
						Address
					</h3>
					<?php echo $_smarty_tpl->getSubTemplate ("addAddress.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

				<?php }elseif($_smarty_tpl->tpl_vars['obj']->value->mOption=="address"){?>
					<h3 class=program_title>
						Address
					</h3>
					<?php echo $_smarty_tpl->getSubTemplate ("updateAddress.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

				<?php }else{ ?>
					<div>
						<h3 class=program_title>
							Address
							&nbsp; <span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEditAddress;?>
"><span class="glyphicon glyphicon-pencil"></span></a></span>			
						</h3>
						<address>
							<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['street'];?>
<br/>
							<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['city'];?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['state'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['zip'];?>

						</address>
					</div>
				<?php }?>
			</div>
		
			<?php if (intval($_smarty_tpl->tpl_vars['obj']->value->mStudent['age'])<18){?>
				<?php if (sizeof($_smarty_tpl->tpl_vars['obj']->value->mParents)<1){?>
					<div class=parents>
						<h3 class=program_title>Parent 1</h3>
						<?php echo $_smarty_tpl->getSubTemplate ("addParent.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

						
						<h3 class=program_title>Parent 2</h3>
						<?php echo $_smarty_tpl->getSubTemplate ("addParent2.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

					</div>
				<?php }elseif(sizeof($_smarty_tpl->tpl_vars['obj']->value->mParents)==1){?>
					<div class=parents>
						<?php if ($_smarty_tpl->tpl_vars['obj']->value->mOption=='parent'&&$_smarty_tpl->tpl_vars['obj']->value->mParentID==$_smarty_tpl->tpl_vars['obj']->value->mParents[0]['parent_id']){?>
							<h3 id=parent1 class=program_title>
								Parent 1
							</h3>
							<?php echo $_smarty_tpl->getSubTemplate ("updateParent.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

						<?php }else{ ?>
								<h3 class=program_title>
									Parent 1
									&nbsp; <span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEditParents[0];?>
"><span class="glyphicon glyphicon-pencil"></span></a>	</span>					
								</h3>
								<p>
									Name: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[0]['name'];?>
<br/>
									Home: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[0]['homePhone'];?>
<br/>
									Cell: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[0]['cellPhone'];?>
<br/>
									Work: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[0]['workPhone'];?>
<br/>
									Email: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[0]['email'];?>

								</p>
						<?php }?>
						
						<h3 class=program_title>Parent 2</h3>				
							<?php echo $_smarty_tpl->getSubTemplate ("addParent2.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

					</div>
				<?php }else{ ?>
					<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mParents) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
						<div class=parents>					
							<?php if ($_smarty_tpl->tpl_vars['obj']->value->mOption=='parent'&&$_smarty_tpl->tpl_vars['obj']->value->mParentID==$_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['parent_id']){?>
								<h3 id=parent<?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>
 class=program_title>
									Parent <?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>

								</h3>
								<?php echo $_smarty_tpl->getSubTemplate ("updateParent.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

							<?php }else{ ?>
								<h3 id=parent<?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>
 class=program_title>
									Parent <?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>

									&nbsp; <span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEditParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']];?>
"><span class="glyphicon glyphicon-pencil"></span></a></span>
								</h3>						
								<p>
									Name: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['name'];?>
<br/>
									Home: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['homePhone'];?>
<br/>
									Cell: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['cellPhone'];?>
<br/>
									Work: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['workPhone'];?>
<br/>
									Email: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['email'];?>

								</p>
							<?php }?>
						</div>
					<?php endfor; endif; ?>
				<?php }?>
			
				<div class=school>			
					<?php if (!is_array($_smarty_tpl->tpl_vars['obj']->value->mSchool)){?>
						<h3 id=school class=program_title>School Info</h3>
						<?php echo $_smarty_tpl->getSubTemplate ("addSchool.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

					<?php }elseif($_smarty_tpl->tpl_vars['obj']->value->mOption=="school"){?>
						<h3 id=school class=program_title>School Info</h3>
						<?php echo $_smarty_tpl->getSubTemplate ("updateSchool.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

					<?php }else{ ?>
							<h3  id=school class=program_title>
								School Info
								&nbsp; <span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEditSchool;?>
"><span class="glyphicon glyphicon-pencil"></span></a></span>
							</h3>
						
						<p>
							Name: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mSchool['name'];?>
<br/>
							Grade: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mSchool['grade'];?>

						</p>
					<?php }?>
					
				</div>
				<p>&nbsp;</p>
				
				<div class=caregiver>			
					<?php if (!is_array($_smarty_tpl->tpl_vars['obj']->value->mCaregiver)){?>
						<h3 class=program_title id=caregiver>Caregiver Info</h3>
						<?php echo $_smarty_tpl->getSubTemplate ("addCaregiver.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

					<?php }elseif($_smarty_tpl->tpl_vars['obj']->value->mOption=="caregiver"){?>
						<h3 class=program_title id=caregiver>Caregiver Info</h3>
						<?php echo $_smarty_tpl->getSubTemplate ("updateCaregiver.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

					<?php }else{ ?>
							<h3 class=program_title id=caregiver>
								Caregiver Info
								&nbsp; <span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEditCaregiver;?>
"><span class="glyphicon glyphicon-pencil"></span></a></span>
							</h3>
							<p>
								Name: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mCaregiver['name'];?>
<br/>
								Phone: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mCaregiver['phone'];?>

							</p>
					<?php }?>
				</div>
			<?php }?>
		
			<div class=emergency>
				<?php if (!is_array($_smarty_tpl->tpl_vars['obj']->value->mEmergency)){?>
					<h3 class=program_title id=emergency>Emergency Contact</h3>
					<?php echo $_smarty_tpl->getSubTemplate ("addEmergencyContact.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

				<?php }elseif($_smarty_tpl->tpl_vars['obj']->value->mOption=="emergency"){?>
					<h3 class=program_title id=emergency>Emergency Contact</h3>
					<?php echo $_smarty_tpl->getSubTemplate ("updateEmergencyContact.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

				<?php }else{ ?>
					<h3 class=program_title id=emergency>
						Emergency Contact
						&nbsp; <span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEditEmergency;?>
"><span class="glyphicon glyphicon-pencil"></span></a></span>
					</h3>
					<p>
						Name: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['name'];?>
<br/>
						Relation: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['relation'];?>
<br/>
						Home: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['homePhone'];?>
<br/>
						Work: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['workPhone'];?>
<br/>
						Cell: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['cellPhone'];?>

					</p>
				<?php }?>
			</div>
	</div> <!-- end of column 1 -->
	<div class=col-md-4><!-- start of column 2-->
		<div class=finance>
			<h3 class=program_title>Financial Records</h3>
			<div class=clear></div>
			
			
		</div>
		<!--
			OPEN PLAY
		//-->
			<div class=openplay>
				<h3 class=program_title>Open Play <span style="float:right"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddOpenPlay;?>
" title="add open play"><span class="glyphicon glyphicon-pencil"></span></a></span></h3>
			<?php echo $_smarty_tpl->getSubTemplate ('studentOpenPlay.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

			</div>
			<div class=attendance>
				<h3 class=program_title>Attendance</h3>
					<?php echo $_smarty_tpl->getSubTemplate ('studentAttendance.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

			</div>
	</div><!-- end of column 2 -->

	<div class="col-md-4"> <!-- start of column 3-->
			<!---
			EMAIL INFO start here
			//-->
		<div class=emails>
			<h3 class=program_title>
				Emails
				<span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToSendEmail;?>
" title="send a new email"><span class="glyphicon glyphicon-pencil"></span></a></span>
			</h3>
			<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mEmails) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
				<?php if ($_smarty_tpl->getVariable('smarty')->value['section']['i']['index']==5){?>
					<p align=right>
						<a href="" style="background:blue;padding:10px;">show older emails&raquo</a>
					</p>
				<?php }?>
					<p><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmails[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmails[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['subject'];?>
</a> on <?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmails[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['sent'];?>
</p>
				
			<?php endfor; else: ?>
				<p>No emails had been sent to this student yet.</p>
			<?php endif; ?>
		</div>
	</div>
</div><?php }} ?>