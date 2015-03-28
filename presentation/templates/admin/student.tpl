{load_presentation_object filename="studentInfo" foldername=admin assign="obj"}
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">&laquo;{$obj->mLinks[ i ].title}</a></li>
	{/section}
</ol>
<div class=page-header>
	<h1>
		{$obj->mStudent.first} {$obj->mStudent.last}
		<small class=pull-right>
			{if !empty( $obj->mMembership )}
				&nbsp; Membership:
				<span class="{$obj->mMembership.type}">{$obj->mMembership.type}</span>
			{else}
				<a class="btn btn-default btn-primary btn-lg" href="{$obj->mLinkToAddMembership}">+Add Membership&raquo;</a>
			{/if}
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
						DOB: {$obj->mStudent.dob}<br/>
						Age: {$obj->mStudent.age}<br/>
						Gender: {$obj->mStudent.gender}
					</p>		
				</div>			
			{include file="admin/studentClasses.tpl"}
		
			{if $obj->mStudent.age > 17 }
				<div class=contact_info>
					<h3 class=program_title>
						Contact Info &nbsp; 
						<span style="float:right;"><a href="{$obj->mLinkToEditContactInfo}"><span class="glyphicon glyphicon-pencil"></span></a></span>
					</h3>
					
					{if !is_array( $obj->mContact )}
						{include file="addContactInfo.tpl"}
					{elseif $obj->mOption == "contactinfo"}
						{include file="updateContactInfo.tpl"}
					{else}				
						<p>
							Cell: {$obj->mContact.cellPhone}<br/>
							Home: {$obj->mContact.homePhone}<br/>
							Email: {$obj->mContact.email}
						</p>
					{/if}				
				</div>
			{/if}
		
			<div id=addresses>					
				<h3 class=program_title>
					Address
					&nbsp; <span style="float:right;"><a href="{$obj->mLinkToEditAddress}" onClick="address(); return false;"><span class="glyphicon glyphicon-pencil"></span></a></span>			
				</h3>
				<address id=address>
					{$obj->mAddress.street}<br/>
					{$obj->mAddress.city}, {$obj->mAddress.state} {$obj->mAddress.zip}
				</address>
			</div>
		
			{if intval( $obj->mStudent.age ) < 18 }
				{if sizeof( $obj->mParents ) < 1 }
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
				{elseif sizeof( $obj->mParents ) == 1}
					<div class=parents>
								<h3 class=program_title>
									Parent 1
									&nbsp; <span style="float:right;"><a href="{$obj->mLinkToEditParents[ 0 ]}"  onClick="editParent( 1, {$obj->mStudentID}, {$obj->mParents[ 0 ].id} ); return false;"><span class="glyphicon glyphicon-pencil"></span></a>	</span>					
								</h3>
								<p>
									Name: {$obj->mParents[ 0 ].name}<br/>
									Home: {$obj->mParents[ 0 ].homePhone}<br/>
									Cell: {$obj->mParents[ 0 ].cellPhone}<br/>
									Work: {$obj->mParents[ 0 ].workPhone}<br/>
									Email: {$obj->mParents[ 0 ].email}
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
				{else}
					{section name=i loop=$obj->mParents}	
						<div class=parents>					
								<h3 class=program_title>
									Parent {$smarty.section.i.index + 1}
									&nbsp; <span class=pull-right><a href="" onClick="editParent( {( $smarty.section.i.index + 1 )}, {$obj->mStudentID}, {$obj->mParents[ i ].id} ); return false;"><span class="glyphicon glyphicon-pencil"></span></a></span>
								</h3>						
								<p id=parent{$smarty.section.i.index + 1}>
									Name: <span id="parent{$smarty.section.i.index + 1}_name">{$obj->mParents[ i ].name}</span><br/>
									Home: <span id="parent{$smarty.section.i.index + 1}_home">{$obj->mParents[ i ].homePhone}</span><br/>
									Cell: <span id="parent{$smarty.section.i.index + 1}_cell">{$obj->mParents[ i ].cellPhone}</span><br/>
									Work: <span id="parent{$smarty.section.i.index + 1}_work">{$obj->mParents[ i ].workPhone}</span><br/>
									Email: <span id="parent{$smarty.section.i.index + 1}_email">{$obj->mParents[ i ].email}</span>
								</p>
						</div>
					{/section}
				{/if}
			
				<div class=school>			
					{if !is_array( $obj->mSchool ) }
						<h3 class=program_title>
							School Info
							<a href="" onClick="school(); return false;">+</a>
						</h3>
					{else}
						<h3  id=school class=program_title>
							School Info
							&nbsp; <span style="float:right;"><a href="{$obj->mLinkToEditSchool}" onClick="school(); return false;"><span class="glyphicon glyphicon-pencil"></span></a></span>
						</h3>
					
						<p id=shcool>
							Name: <span id=school_name>{$obj->mSchool.name}</span><br/>
							Grade: <span id=schooL_grade>{$obj->mSchool.grade}</span>
						</p>
					{/if}
					
				</div>
				<p>&nbsp;</p>
				
				<div class=caregiver>			
					<h3 class=program_title id=caregiver>
						Caregiver Info
							&nbsp; <span style="float:right;"><a href="" onClick="caregiver(); return false;"><span class="glyphicon glyphicon-pencil"></span></a></span>
						</h3>
						<p id=caregiver>
							Name: <span id=caregiver_info>{$obj->mCaregiver.name}</span><br/>
							Phone: <span id=caregiver_phone>{$obj->mCaregiver.phone}</span>
						</p>
				</div>
			{/if}
		
			<div class=emergency>
				<h3 class=program_title id=emergency>
					Emergency Contact
					&nbsp; <span style="float:right;"><a href="" onClick="emergencyContact();return false;"><span class="glyphicon glyphicon-pencil"></span></a></span>
				</h3>
				<p id=emergency>
					Name: <span id=emergency_name>{$obj->mEmergency.name}</span><br/>
					Relation: <span id=emergency_relation>{$obj->mEmergency.relation}</span><br/>
					Home: {$obj->mEmergency.homePhone}</span><br/>
					Work: {$obj->mEmergency.workPhone}</span><br/>
					Cell: {$obj->mEmergency.cellPhone}</span>
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
				<h3 class=program_title>Open Play <span style="float:right"><a href="{$obj->mLinkToAddOpenPlay}" title="add open play"><span class="glyphicon glyphicon-pencil"></span></a></span></h3>
			{include file='studentOpenPlay.tpl'}
			</div>
			<div class=attendance>
				<h3 class=program_title>Attendance</h3>
					{include file='studentAttendance.tpl'}
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
			{section name=i loop=$obj->mEmails}
				{if $smarty.section.i.index == 5}
					<p align=right>
						<a href="" style="background:blue;padding:10px;">show older emails&raquo</a>
					</p>
				{/if}
					<p><a href="{$obj->mEmails[ i ].link}">{$obj->mEmails[ i ].subject}</a> on {$obj->mEmails[ i ].sent}</p>
				
			{sectionelse}
				<p>No emails had been sent to this student yet.</p>
			{/section}
		</div>
	</div>
</div>
{section name=i loop=$obj->mParents}
	<div class="modal fade" id=parent{($smarty.section.i.index + 1)}Info tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				 <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h3 class="modal-title" id="myModalLabel">Update Parent</h3>
				</div>
				<div class=modal-body>
					<form id="parent{( $smarty.section.i.index + 1 )}Form">
						<input type=hidden id="parent{($smarty.section.i.index + 1 )}Form_url" value="{Link::Build( 'api/employee/students/student/parents/parent/update.php' )}">
						<input type=hidden name="id" value="{$obj->mParents[ i ].id}">
						<input type=hidden name="student_id" value="{$obj->mStudent.id}">
						<div class=row>
							<div class="col-md-12">
									<label class="control-label">Name</label><br/>
									<input type=text class="form-control" name="name" value="{$obj->mParents[ i ].name}">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
									<label>Home Phone</label><br/>
									<input type=text class="form-control" name="homePhone" value="{$obj->mParents[ i ].homePhone}">
							</div>
							<div class="col-md-6">
									<label>Work Phone</label><br/>
									<input type=text class="form-control" name="workPhone" value="{$obj->mParents[ i ].workPhone}">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
									<label>Cell Phone</label><br/>
									<input type=text class="form-control" name="cellPhone" value="{$obj->mParents[ i ].cellPhone}">
							</div>
							<div class="col-md-6">
									<label>Email</label><br/>
									<input type=text class="form-control" name="email" value="{$obj->mParents[ i ].email}">
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-12">
								<a href="" class="btn btn-default btn-primary btn-lg update" id="parent{( $smarty.section.i.index + 1 )}Form_form" >Update Parent&raquo</a>
								<a class="btn btn-default btn-warning btn-lg cancel" href="" id="parent{( $smarty.section.i.index + 1 )}Info_modal">Cancel</a>
							</div>
						</div>					
					</form>
				</div>
			</div>
		</div>
	</div>
{/section}

	<div class="modal fade" id=info tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				 <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h3 class="modal-title" id="myModalLabel">Update Personal Information</h3>
				</div>
				<div class=modal-body>
					<form id="infoForm">
						<input type=hidden id="infoForm_url" value="{Link::Build('api/employee/students/sutdent/update.php')}">
						<input type=hidden name="id" value="{$obj->mStudent.id}">
						<div class="row form-group">
							<div class="col-md-6">
								<label>First Name</label><br/>
								<input type=text name="first" value="{$obj->mStudent.first}">
							</div>
							<div class="col-md-6">
								<label>Last Name</label><br/>
								<input type=text name="last" value="{$obj->mStudent.last}">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-6">
								<label>Cell Phone</label><br/>
								<input type=text name="dob" value="{$obj->mStudent.dob}">
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
						<input type=hidden id="addParentInfoForm_url" value="{Link::Build( 'api/employee/students/student/parents/parent/add.php' )}">
						<input type=hidden name="student_id" value="{$obj->mStudent.id}">
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
						<input type=hidden name="student_id" value="{$obj->mStudent.id}">
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
	$('#gender').val( '{$obj->mStudent.gender}');
	
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
	
	$.post("{$obj->mLinkToUpdateParent}",
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
													'{$obj->mCaregiver.name}', 
													[]
													),
								'Phone' : new Field( 'phone', 
														'text',
														'{$obj->mCaregiver.phone}',
														[]
													)
							} 
						);
}

function school(){
	new Wrapper( {$obj->mSchool.id}, 
				'School Information', 
				'thegympark.local/api/admin', 
				{ 
					'Name' : new Field( 'name',
										'text',
										'{$obj->mSchool.name}',
										[]
										), 
					'Grade' : new Field( 'grade',
										'text',
										'{$obj->mSchool.grade}',
										[]
									)
				}  
				);
}

function emergencyContact(){
	new Wrapper( {$obj->mEmergency.id}, 
				"Emergency Contact Info", 
				"{Link::Build( 'api/employee/students/student/emergency/update.php' )}", 
				{ 
					'Relation': new Field( 'relation', 
											'radio', 
											'{$obj->mEmergency.relation}',  
											[ 
												new Option( 'Family', 'Family'), 
												new Option( 'Friend', 'Friend' )
											] 
										), 
					'Name' : new Field( 'name', 
										'text',
										'{$obj->mEmergency.name}', 
										[]
									),
					'Home Phone': new Field( 'homePhone',
											'text',
											'{$obj->mEmergency.homePhone}',
											[]
										), 
					'Work Phone': new Field( 'workPhone',
											'text',
											'{$obj->mEmergency.workPhone}',
											[]
											),
					'Cell Phone': new Field( 'cellPhone',
											'text',
											'{$obj->mEmergency.cellPhone}',
											[]
											)
				} ); 
}

function address(){
	new Wrapper(  {$obj->mAddress.id},
				'Address Information',
				'{$obj->mLinkForAddress}',
				{
					'Street': 	new Field( 'street',
											'text',
											'{$obj->mAddress.street}',
											[]
										),
					'City': 	new Field(	'city',
											'text',
											'{$obj->mAddress.city}',
											[]
										),
					'State':	new Field( 'state',
											'text',
											'{$obj->mAddress.state}',
											[]
										),
					'Zip':		new Field( 'zip',
											'text',
											'{$obj->mAddress.zip}',
											[]
										)
				}
			);
}

function email(){
	new Wrapper( 0,
				'Send Email',
				'{$obj->mLinkForEmail}',
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
</script>