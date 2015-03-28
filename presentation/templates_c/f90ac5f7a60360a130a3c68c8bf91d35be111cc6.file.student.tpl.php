<?php /* Smarty version Smarty-3.1.8, created on 2015-03-21 19:14:27
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\student.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3066754b45d8d68bc81-86119402%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f90ac5f7a60360a130a3c68c8bf91d35be111cc6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\student.tpl',
      1 => 1426979665,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3066754b45d8d68bc81-86119402',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b45d8dc2d308_11870344',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b45d8dc2d308_11870344')) {function content_54b45d8dc2d308_11870344($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"studentInfo",'foldername'=>'admin','assign'=>"obj"),$_smarty_tpl);?>

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
	<h1>
		<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['first'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['last'];?>

		<small class=pull-right>
			<?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mMembership)){?>
				&nbsp; Membership:
				<span class="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mMembership['type'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mMembership['type'];?>
</span>
			<?php }else{ ?>
				<a class="btn btn-default btn-primary btn-lg" href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddMembership;?>
">+Add Membership&raquo;</a>
			<?php }?>
		</small>
	</h1>
</div>
<div class=row>
	<div class=col-md-4>
				<div>
					<h3 class=program_title>
						Student Info
						<span style="float:right;"><a href="" onClick="editInfo(); return false;"><span class="glyphicon glyphicon-pencil"></span></a></span>
						</h3>
					<p>
						DOB: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['dob'];?>
<br/>
						Age: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['age'];?>
<br/>
						Gender: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['gender'];?>

					</p>		
				</div>			
			<?php echo $_smarty_tpl->getSubTemplate ("admin/studentClasses.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

		
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
		
			<div id=addresses>					
				<h3 class=program_title>
					Address
					&nbsp; <span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEditAddress;?>
" onClick="address(); return false;"><span class="glyphicon glyphicon-pencil"></span></a></span>			
				</h3>
				<address id=address>
					<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['street'];?>
<br/>
					<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['city'];?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['state'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['zip'];?>

				</address>
			</div>
		
			<?php if (intval($_smarty_tpl->tpl_vars['obj']->value->mStudent['age'])<18){?>
				<?php if (sizeof($_smarty_tpl->tpl_vars['obj']->value->mParents)<1){?>
					<div class=parents>
						<h3 class=program_title>Parent 1 <a href="" onClick="addParent( 1 ); return false;">Add</a></h3>
							<p id=parent1>
								Name: <span id=parent1_name></span><br/>
								Home: <span id=parent1_home></span><br/>
								Cell: <span id=parent1_cell></span><br/>
								Work: <span id=parent1_work></span><br/>
								Email: <span id=parent1_email></span><br/>
							</p>
						<h3 class=program_title>Parent 2 <a href="" onClick="addParent( 2 ); reutrn false;">Add</a></h3>
							<p id=parent2>
								Name: <span id=parent2_name></span><br/>
								Home: <span id=parent2_home></span><br/>
								Cell: <span id=parent2_cell></span><br/>
								Work: <span id=parent2_work></span><br/>
								Email: <span id=parent2_email></span><br/>
							</p>
					</div>
				<?php }elseif(sizeof($_smarty_tpl->tpl_vars['obj']->value->mParents)==1){?>
					<div class=parents>
								<h3 class=program_title>
									Parent 1
									&nbsp; <span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEditParents[0];?>
"  onClick="editParent( 1, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentID;?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[0]['id'];?>
 ); return false;"><span class="glyphicon glyphicon-pencil"></span></a>	</span>					
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
							<h3 class=program_title>Parent 2
								<a href="" onClick="addParent( 2 ); return false;">Add</a>
								<p id=parent2>
									Name: <span id=parent2_name></span><br/>
									Home: <span id=parent2_home></span><br/>
									Cell: <span id=parent2_cell></span><br/>
									Work: <span id=parent2_work></span><br/>
									Email: <span id=parent2_email></span><br/>
								</p>
							</h3>							
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
								<h3 class=program_title>
									Parent <?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>

									&nbsp; <span class=pull-right><a href="" onClick="editParent( <?php echo ($_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1);?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudentID;?>
, <?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
 ); return false;"><span class="glyphicon glyphicon-pencil"></span></a></span>
								</h3>						
								<p id=parent<?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>
>
									Name: <span id="parent<?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>
_name"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['name'];?>
</span><br/>
									Home: <span id="parent<?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>
_home"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['homePhone'];?>
</span><br/>
									Cell: <span id="parent<?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>
_cell"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['cellPhone'];?>
</span><br/>
									Work: <span id="parent<?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>
_work"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['workPhone'];?>
</span><br/>
									Email: <span id="parent<?php echo $_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1;?>
_email"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['email'];?>
</span>
								</p>
						</div>
					<?php endfor; endif; ?>
				<?php }?>
			
				<div class=school>			
					<?php if (!is_array($_smarty_tpl->tpl_vars['obj']->value->mSchool)){?>
						<h3 class=program_title>
							School Info
							<a href="" onClick="school(); return false;">+</a>
						</h3>
					<?php }else{ ?>
						<h3  id=school class=program_title>
							School Info
							&nbsp; <span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToEditSchool;?>
" onClick="school(); return false;"><span class="glyphicon glyphicon-pencil"></span></a></span>
						</h3>
					
						<p id=shcool>
							Name: <span id=school_name><?php echo $_smarty_tpl->tpl_vars['obj']->value->mSchool['name'];?>
</span><br/>
							Grade: <span id=schooL_grade><?php echo $_smarty_tpl->tpl_vars['obj']->value->mSchool['grade'];?>
</span>
						</p>
					<?php }?>
					
				</div>
				<p>&nbsp;</p>
				
				<div class=caregiver>			
					<h3 class=program_title id=caregiver>
						Caregiver Info
							&nbsp; <span style="float:right;"><a href="" onClick="caregiver(); return false;"><span class="glyphicon glyphicon-pencil"></span></a></span>
						</h3>
						<p id=caregiver>
							Name: <span id=caregiver_info><?php echo $_smarty_tpl->tpl_vars['obj']->value->mCaregiver['name'];?>
</span><br/>
							Phone: <span id=caregiver_phone><?php echo $_smarty_tpl->tpl_vars['obj']->value->mCaregiver['phone'];?>
</span>
						</p>
				</div>
			<?php }?>
		
			<div class=emergency>
				<h3 class=program_title id=emergency>
					Emergency Contact
					&nbsp; <span style="float:right;"><a href="" onClick="emergencyContact();return false;"><span class="glyphicon glyphicon-pencil"></span></a></span>
				</h3>
				<p id=emergency>
					Name: <span id=emergency_name><?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['name'];?>
</span><br/>
					Relation: <span id=emergency_relation><?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['relation'];?>
</span><br/>
					Home: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['homePhone'];?>
</span><br/>
					Work: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['workPhone'];?>
</span><br/>
					Cell: <?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['cellPhone'];?>
</span>
				</p>
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
				<span style="float:right;"><a href="" class=email onClick="email(); return false;" title="send a new email"><span class="glyphicon glyphicon-pencil"></span></a></span>
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
</div>
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
	<div class="modal fade" id=parent<?php echo ($_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1);?>
Info tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				 <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h3 class="modal-title" id="myModalLabel">Update Parent</h3>
				</div>
				<div class=modal-body>
					<form id="parent<?php echo ($_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1);?>
Form">
						<input type=hidden id="parent<?php echo ($_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1);?>
Form_url" value="<?php echo Link::Build('api/employee/students/student/parents/parent/update.php');?>
">
						<input type=hidden name="id" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['id'];?>
">
						<input type=hidden name="student_id" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['id'];?>
">
						<div class=row>
							<div class="col-md-12">
									<label class="control-label">Name</label><br/>
									<input type=text class="form-control" name="name" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['name'];?>
">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
									<label>Home Phone</label><br/>
									<input type=text class="form-control" name="homePhone" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['homePhone'];?>
">
							</div>
							<div class="col-md-6">
									<label>Work Phone</label><br/>
									<input type=text class="form-control" name="workPhone" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['workPhone'];?>
">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
									<label>Cell Phone</label><br/>
									<input type=text class="form-control" name="cellPhone" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['cellPhone'];?>
">
							</div>
							<div class="col-md-6">
									<label>Email</label><br/>
									<input type=text class="form-control" name="email" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mParents[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['email'];?>
">
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-12">
								<a href="" class="btn btn-default btn-primary btn-lg update" id="parent<?php echo ($_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1);?>
Form_form" >Update Parent&raquo</a>
								<a class="btn btn-default btn-warning btn-lg cancel" href="" id="parent<?php echo ($_smarty_tpl->getVariable('smarty')->value['section']['i']['index']+1);?>
Info_modal">Cancel</a>
							</div>
						</div>					
					</form>
				</div>
			</div>
		</div>
	</div>
<?php endfor; endif; ?>

	<div class="modal fade" id=info tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				 <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h3 class="modal-title" id="myModalLabel">Update Personal Information</h3>
				</div>
				<div class=modal-body>
					<form id="infoForm">
						<input type=hidden id="infoForm_url" value="<?php echo Link::Build('api/employee/students/sutdent/update.php');?>
">
						<input type=hidden name="id" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['id'];?>
">
						<div class="row form-group">
							<div class="col-md-6">
								<label>First Name</label><br/>
								<input type=text name="first" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['first'];?>
">
							</div>
							<div class="col-md-6">
								<label>Last Name</label><br/>
								<input type=text name="last" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['last'];?>
">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-6">
								<label>Cell Phone</label><br/>
								<input type=text name="dob" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['dob'];?>
">
							</div>
							<div class="col-md-6">
								<label>Gender</label><br/>
								<select name="gender" id=gender>
									<option value="M">Male</option>
									<option value="F">Female</option>
								</select>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row form-group">
							<div class="col-md-12">
								<a href="" class="btn btn-default btn-primary btn-lg" onClick="updateInfo(); return false;">Update Personal Info&raquo;</a>
								<a class="btn btn-default btn-warning btn-lg cancel" href="" id="info_modal">Cancel</a>
							</div>
						</div>					
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id=addParentInfo tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				 <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h3 class="modal-title" id="myModalLabel">Add Parent</h3>
				</div>
				<div class=modal-body>
					<form id="addParentInfoForm">
						<input type=hidden id="addParentInfoForm_url" value="<?php echo Link::Build('api/employee/students/student/parents/parent/add.php');?>
">
						<input type=hidden name="student_id" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['id'];?>
">
						<div class=row>
							<div class="col-md-12">
									<label class="control-label">Name</label><br/>
									<input type=text class="form-control" name="name" value="">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
									<label>Home Phone</label><br/>
									<input type=text class="form-control" name="homePhone" value="">
							</div>
							<div class="col-md-6">
									<label>Work Phone</label><br/>
									<input type=text class="form-control" name="workPhone" value="">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
									<label>Cell Phone</label><br/>
									<input type=text class="form-control" name="cellPhone" value="">
							</div>
							<div class="col-md-6">
									<label>Email</label><br/>
									<input type=text class="form-control" name="email" value="">
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-12">
								<a href="" class="btn btn-default btn-primary btn-lg add" id="addParentInfoForm_form" >Add Parent&raquo</a>
								<a class="btn btn-default btn-warning btn-lg cancel" href="" id="addParentInfo_modal">Cancel</a>
							</div>
						</div>					
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id=modals tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				 <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h3 class="modal-title" id="modalsTitle"></h3>
				</div>
				<div class=modal-body>
					<form id="forms">
						<input type=hidden id="modals_url" value="">
						<input type=hidden id='wrapper_id' name=id value="">
						<input type=hidden name="student_id" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['id'];?>
">
						<div id=fields>
						
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-12">
								<a href="" class="btn btn-default btn-primary btn-lg save" id="forms_form" >Save&raquo</a>
								<a class="btn btn-default btn-warning btn-lg cancel" href="" id="modals_modal">Cancel</a>
							</div>
						</div>					
					</form>
				</div>
			</div>
		</div>
	</div>

	
<script>
function addParent(){
	showModal( 'addParentInfo' );
}

function editInfo(){
	$('#gender').val( '<?php echo $_smarty_tpl->tpl_vars['obj']->value->mStudent['gender'];?>
');
	
	showModal( 'info' );
}


function emailInfo(){
	alert( $('#emailInfoForm').serialize() );
}

function editParent( index, studentID, parentID ){
	showModal( 'parent'+index+'Info' );
}

function updateParent( index, studentID, parentID ){
	alert( $( '#parent'+index+'Info' ).serialize() );
	
	$.post("<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToUpdateParent;?>
",
		$( '#parent'+index+'Info' ).serialize(),
		function ( data, status )
		{
			alert( data );
		}
	);
}

function caregiver(){
	caregiver =  new Wrapper( 0, 
							'Caregiver Information', 
							'thegympark.local/api/admin', 
							{ 
								'Name' : new Field( 'name',
													'text',
													'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCaregiver['name'];?>
', 
													[]
													),
								'Phone' : new Field( 'phone', 
														'text',
														'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCaregiver['phone'];?>
',
														[]
													)
							} 
						);
}

function school(){
	new Wrapper( <?php echo $_smarty_tpl->tpl_vars['obj']->value->mSchool['id'];?>
, 
				'School Information', 
				'thegympark.local/api/admin', 
				{ 
					'Name' : new Field( 'name',
										'text',
										'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSchool['name'];?>
',
										[]
										), 
					'Grade' : new Field( 'grade',
										'text',
										'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSchool['grade'];?>
',
										[]
									)
				}  
				);
}

function emergencyContact(){
	new Wrapper( <?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['id'];?>
, 
				"Emergency Contact Info", 
				"<?php echo Link::Build('api/employee/students/student/emergency/update.php');?>
", 
				{ 
					'Relation': new Field( 'relation', 
											'radio', 
											'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['relation'];?>
',  
											[ 
												new Option( 'Family', 'Family'), 
												new Option( 'Friend', 'Friend' )
											] 
										), 
					'Name' : new Field( 'name', 
										'text',
										'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['name'];?>
', 
										[]
									),
					'Home Phone': new Field( 'homePhone',
											'text',
											'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['homePhone'];?>
',
											[]
										), 
					'Work Phone': new Field( 'workPhone',
											'text',
											'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['workPhone'];?>
',
											[]
											),
					'Cell Phone': new Field( 'cellPhone',
											'text',
											'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mEmergency['cellPhone'];?>
',
											[]
											)
				} ); 
}

function address(){
	new Wrapper(  <?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['id'];?>
,
				'Address Information',
				'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkForAddress;?>
',
				{
					'Street': 	new Field( 'street',
											'text',
											'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['street'];?>
',
											[]
										),
					'City': 	new Field(	'city',
											'text',
											'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['city'];?>
',
											[]
										),
					'State':	new Field( 'state',
											'text',
											'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['state'];?>
',
											[]
										),
					'Zip':		new Field( 'zip',
											'text',
											'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mAddress['zip'];?>
',
											[]
										)
				}
			);
}

function email(){
	new Wrapper( 0,
				'Send Email',
				'<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkForEmail;?>
',
				{
					'Subject': new Field( 'subject',
											'text',
											'',
											[]
										),
					'Message': new Field( 'message',
											'textarea',
											'',
											[]
										)
				}
			);
}
</script><?php }} ?>