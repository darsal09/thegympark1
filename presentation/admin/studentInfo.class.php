<?php
class studentInfo
{
	public $mStudent;
	public $mContact;
	public $mAddress;
	public $mCaregiver;
	public $mParents;
	public $mSchool;
	public $mEmergency;
	public $mMembership = array('type' => 'Bronze' );
	public $mEmails 	= array();
	public $mOption;
	
	public $mEdit = false;
	public $mError = array( 'id' => false, 'name' => false, 'dob' => false, 'gender' => false );

	public $mLinks = array();
	
	public $mLinkToEditContactInfo;
	public $mLinkToEditAddress;
	public $mLinkToEditImmidiateInfo;
	public $mLinkToStudents;
	public $mLinkToEditParents = array( 0 => '', 1 => '' );
	public $mLinkToSendEmail = '';
	public $mLinkToAddOpenPlay = '';
	
	public $mParentID;
	
	
	private $mProgramID;
	private $mCategoryID;
	public $mStudentID;
	private $mClassID;
	
	public function __construct()
	{
		if( !$this->setParameters() )
			helper::redirect( 'admin/students' );
	
		if( isset( $_GET[ 'tgp_edit_student' ] ) )
			$this->mEdit = true;
					
		if( isset( $_POST[ 'tgp_student_update' ] ) )
			$this->updateStudent();	
	}
		
	public function init()
	{
		$this->mStudent 	= administrator::getStudent( $this->mStudentID );
		$this->mContact 	= administrator::getStudentContactInfo( $this->mStudentID );
		$this->mAddress 	= administrator::getStudentAddress( $this->mStudentID );
		$this->mParents 	= administrator::getStudentParents( $this->mStudentID );
		$this->mSchool 		= administrator::getStudentSchool( $this->mStudentID );
		$this->mEmergency 	= administrator::getStudentEmergency( $this->mStudentID );
		$this->mCaregiver 	= administrator::getStudentCaregiver( $this->mStudentID );
		
		$this->mEmails 		= student::getEmails( array( ':sID' => $this->mStudentID ) ); //the emails that had been sent to the student
		$this->mMembership	= student::getMembership( array( ':sID' => $this->mStudentID ) ); //the membership the student has 
		
		$this->setDates( $this->mStudent );
		
		$this->mLinkToStudents = Link::Build( '' );
		$this->setParentsLinks();
		$this->setEmailDates();
		$this->setLinks();
		
	}

	private function setParameters()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = intval( sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' ) );
		
		if( isset( $_GET[ 'option' ] ) )
		{
			$this->mOption = sanitize::sani( $_GET[ 'option' ], 'STRING' );
			
			if( isset( $_GET[ 'tgp_parent_id' ] ) )
				$this->mParentID = sanitize::sani( $_GET[ 'tgp_parent_id' ], 'INTIGER' );
		}
		
		if( $this->mStudentID < 1 )
			return false;
		
		return true;
	}

	private function setLinks()
	{
	
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin' ), 'title' => 'Admin' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin/programs' ), 'title' => 'Programs' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin/categories' ), 'title' => 'Categories' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin/students' ), 'title' => 'Students' );
		
		
		$this->mLinkToEditContactInfo 		= Link::Build( 'admin/students/'.$this->mStudentID.'/edit/contactinfo/contact' );
		$this->mLinkToEditAddress 			= Link::Build( 'admin/students/'.$this->mStudentID.'/edit/address/address' );
		$this->mLinkToEditEmergency 		= Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&option=emergency&action=adminStudent#emergency' );
		$this->mLinkToEditCaregiver 		= Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&option=caregiver&action=adminStudent#caregiver' );
		$this->mLinkToEditSchool 			= Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&option=school&action=adminStudent#school' );
		$this->mLinkToEditImmidiateInfo 	= Link::Build( 'admin/students/'.$this->mStudentID.'/edit/' );
		$this->mLinkToSendEmail				= Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=singleEmail' );
		$this->mLinkToAddOpenPlay 			= Link::Build( 'employee/open-plays/current/students/'.$this->mStudentID.'/history' );
		$this->mLinkToAddMembership			= Link::Build( 'admin/students/'.$this->mStudentID.'/memberships/add' );
		$this->mLinkToCancel				= Link::Build( 'admin/students/'.$this->mStudentID );
		$this->mLinkToUpdateParent			= Link::Build( 'api/employee/students/student/updateParent.php' );
	
		$this->mLinkForAddress 				= Link::Build( 'api/employee/students/student/address/add.php' );
		if( sizeof( $this->mAddress ) > 0 )
			$this->mLinkForAddress 			= Link::Build( 'api/employee/students/student/address/update.php' );
	
		$this->mLinkForContactInfo			= Link::Build( 'api/employee/students/student/contactinfo/add.php' );
		if( sizeof( $this->mContact ) > 0 )
			$this->mLinkForContactInfo		= Link::Build( 'api/employee/students/student/contactinfo/update.php' );
	
		$this->mLinkForCaregiver			= Link::Build( 'api/employee/students/student/caregiver/add.php' );
		if( sizeof( $this->mCaregiver ) > 0 )
			$this->mLinkForCaregiver		= Link::Build( 'api/employee/students/student/caregiver/update.php' );
			
		$this->mLinkForSchool 				= Link::Build( 'api/employee/students/student/school/add.php' );
		if( sizeof( $this->mSchool) > 0 )
			$this->mLinkForSchool			= Link::Build( 'api/employee/students/student/school/update.php' );
		
		$this->mLinkForEmergencyContact 	= Link::Build( 'api/employee/students/student/emergencyContact/add.php' );
		if( sizeof( $this->mEmergency) > 0 )
			$this->mLinkForEmergencyContact = Link::Build( 'api/employee/students/student/emergencyContact/update.php' );
		
		$this->mLinkForEmail 				= Link::Build( 'api/employee/students/student/email/send.php' );
	}

	private function setDates( &$d)
	{		
		$dob = $d[ 'dob' ];
		
		if( !$this->mEdit )
			$d[ 'dob' ] = date( 'F jS, Y', strtotime( $d[ 'dob' ] ) );
		else
		{
			list( $year, $month, $day ) = explode( '-', $d[ 'dob' ] );
			
			$d[ 'dob' ] = date( 'm/d/Y', strtotime( $d[ 'dob'] ) );
		}		
		
		$aYear = date( 'Y' );
		$aMonth = date( 'n' );
		$aDay = date( 'j' );
		
		list( $year, $month, $day ) = explode( "-", $dob );
		
		$dYear = $aYear - $year;
		
		if( $aMonth < $month )
			$dYear--;
		else if( $aMonth == $month && $aDay < $day )
			$dYear--;
		
		$d[ 'age' ] = $dYear;
	}

	private function setParentsLinks()
	{
		$size = sizeof( $this->mParents );
		
		for( $i = 0; $i < $size; $i++ )
			$this->mLinkToEditParents[ $i ] = Link::Build( 'admin/students/'.$this->mStudentID.'/parents/'.$this->mParents[ $i ][ 'id' ] .'/edit' );
	}
	
	private function updateStudent()
	{	
		if( !isset( $_POST[ 'tgp_student_update' ] ) )
			return;
		
		list( $month, $day, $year ) = explode( '/', sanitize::sani( $_POST[ 'tgp_student_dob' ], 'STRING' )  );
		
		$this->mP[ 'id' ] 		= sanitize::sani( $_POST[ 'tgp_student_id' ], 'INTIGER' );
		$this->mP[ 'dob' ] 		= date( 'Y-m-d', strtotime( "$year-$month-$day" ) );
		$this->mP[ 'gender' ] 	= sanitize::sani( $_POST[ 'tgp_student_gender' ], 'STRING' );
		
		list( $this->mP[ 'first' ], $this->mP[ 'last' ]  ) 	= explode( ' ', sanitize::sani( $_POST[ 'tgp_student_name' ], 'STRING' ) );
		
		if( $this->hasErrors() )
		{
			echo '<p class=error>There are errors!</p>';
			return;
		}

		student::updateStudent( $this->mP[ 'id' ], $this->mP[ 'first' ], $this->mP[ 'last' ], $this->mP[ 'dob' ], $this->mP[ 'gender' ] );
		
		header( 'Location:'.Link::Build( 'admin/students/'.$this->mStudentID ) );
		exit;
	}
		
	private function hasErrors()
	{		
		foreach( $this->mP AS $field => $value )
			if( empty( $value ) )
				$this->mError[ $field ] = true;
		
		if( in_array( true, $this->mError )  )
			return true;
		
		return false;
	}
	
	private function setEmailDates()
	{
		$E = &$this->mEmails;
		$size = sizeof( $E );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$E[ $i ][ 'link' ] = Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&tgp_email_id='.$E[ $i ][ 'id' ].'&action=emailSent' );
			$E[ $i ][ 'sent' ] = date( 'M. jS, Y', strtotime( $E[ $i ][ 'sent' ] ) );
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>