<?php
class addStudent
{
	public $mP 			= array( ':name' => '', ':sex' => '', ':dob' => '', ':hPhone' => '', ':cPhone' => '', ':email' => '' );
	public $mAddress 	= array( ':sID' => '', ':street' => '', ':city' => '', ':state' => '', ':zip' => '' );
	public $mSchool 	= array( ':sID' => '', ':school' => '', ':grade' => '' );
	public $mParent1 	= array( ':sID' => '', ':p1Name' => '', ':p1hPhone' => '', ':p1wPhone' => '', ':p1cPhone' => '', ':p1Email' => '' ); 
	public $mParent2 	= array( ':sID' => '', ':p2Name' => '', ':p2hPhone' => '', ':p2wPhone' => '', ':p2cPhone' =>  '', ':p2Email' => '' );
	public $mCaregiver 	= array( ':sID' => '', ':cgName' => '', ':cgPhone' => '' );
	public $mEContact 	= array( ':sID' => '', ':eName' => '', ':eRelation' => '', ':ehPhone' => '', ':ewPhone' => '', ':ecPhone' => '' );
						
	public $mErrors 	= array( ':name' => false, ':sex' => false, ':dob' => false,
							':hPhone' => false, ':cPhone' => false, ':email' => false, 
							'address' => false,
							':street' => false, ':city' => false, ':state' => false, ':zip' => false, 
							':school' => false, ':grade' => false,
							'parent1' => false,
							':p1Name' => false, ':p1hPhone' => false, ':p1wPhone' => false, ':p1cPhone' => false, ':p1Email' => false, 
							'parent2' => false,
							':p2Name' => false, ':p2hPhone' => false, ':p2wPhone' => false, ':p2cPhone' =>  false, ':p2Email' => false,
							'caregiver' => false,
							':cgName' => false, ':cgPhone' => false,
							'econtact' => false,
							':eName' => false, ':eRelation' => false, ':ehPhone' => false, ':ewPhone' => false, ':ecPhone' => false,
							'icombined' => false,
							'p1combined' => false,
							'p2combined' => false,
							'eccombined' => false );
	
	
	public $mLinks = array();
	
	public $mProgramID;
	public $mCategoryID;
	public $mClassGroupID;
	public $mClassID = 0;

	public $mAlreadyExist 	= false;
	private $_mRequired 	= array( ':name' => true, ':sex' => true, ':dob' => true,
							':hPhone' => false, ':cPhone' => false, ':email' => false, 
							'icombined' => array( ':hPhone', ':cPhone', ':email' ) ); 
							
	private $_mReqAddress 	= array( ':street' => true, ':city' => true, ':state' => true, ':zip' => true );
	private $_mReqSchool 	= array( ':school' => true, ':grade' => false );
	
	private $_mReqParent1 	= array( ':p1Name' => true, ':p1hPhone' => false, ':p1wPhone' => false, ':p1cPhone' => false, ':p1Email' => false, 
								'combined' => array( ':p1hPhone', ':p1cPhone', ':p1wPhone', ':p1Email' ) );
	
	private $_mReqParent2	= array( ':p2Name' => true, ':p2hPhone' => false, ':p2wPhone' => false, ':p2cPhone' =>  false, ':p2Email' => false,  
								'combined' => array( ':p2hPhone', ':p2cPhone', ':p2wPhone', ':p2Email' ) );
								
	private $_mReqEmergency = array( ':eName' => true, ':eRelation' => true, ':ehPhone' => false, ':ewPhone' => false, ':ecPhone' => false, 
								'combined' => array( ':ehPhone', ':ewPhone', ':ecPhone' ) );
	private $mAdult = false;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' );
		
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
		
		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->mClassGroupID = sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );
	
		if( isset( $_POST[ 'tgp_student_save' ] ) || isset( $_POST[ 'tgp_student_new' ] ) )
			$this->addStudent();
	}
	
	public function init()
	{
		$this->setLinks();
	}
	
	private function setLinks()
	{
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'title' => 'Programs', 'link' => Link::Build( 'admin/programs' ) );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'title' => 'Categories', 'link' => Link::Build( 'admin/categories' ) );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'title' => 'Program', 'link' => Link::Build( 'program-info/'.$this->mProgramID ) );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'title' => 'Category', 'link' => Link::Build( 'program-'.$this->mProgramID.'/category-info/'.$this->mCategoryID ) );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'title' => 'Class Group', 'link' => Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group/'.$this->mClassGroupID ) );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'title' => 'Class', 'link' => Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/class-info/'.$this->mClassID ) );
	}
	
	
	private function addStudent()
	{
		if( !isset( $_POST[ 'tgp_student_save' ] ) && !isset( $_POST[ 'tgp_student_new' ] ) )
			return;
		
		$this->mP[ ':name' ] 	= sanitize::sani( $_POST[ 'tgp_student_name' ], 'STRING' );
		
		if( !empty( $_POST[ 'tgp_student_dob' ] ) )
			list( $month, $day, $year ) = explode( "/", sanitize::date( $_POST[ 'tgp_student_dob' ] ) );
		
		if( isset( $month ) )
			$this->mP[ ':dob' ] 	= date( 'Y/m/d', strtotime( $year.'-'.$month.'-'.$day ) );

		$aYear 	= date( 'Y' );
		$aMonth = date( 'n' );
		$aDay 	= date( 'j' );
		
		if( !empty( $this->mP[ ':dob' ] ) )
		{
			list( $year, $month, $day ) = explode( "/", $this->mP[ ':dob' ] );
			
			$dYear = $aYear - $year;
		
			if( $aMonth < $month )
				$dYear--;
			else if( $aMonth == $month && $aDay < $day )
				$dYear--;
		
			if( $dYear >= 18 )
				$this->mAdult = true;
		}
		
		$this->mP[ ':sex' ] = isset( $_POST[ 'tgp_student_sex' ] ) ? sanitize::sani( $_POST[ 'tgp_student_sex' ], 'STRING' ) : '';
		
		//contact
		$this->mP[ ':hPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_homePhone' ], 'STRING' );
		$this->mP[ ':cPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_cellPhone' ], 'STRING' );
		$this->mP[ ':email' ] 	= sanitize::validate( sanitize::sani( $_POST[ 'tgp_student_email' ], 'EMAIL' ), 'EMAIL' );
		
		//address
		$this->mAddress[ ':street' ] 	= sanitize::sani( $_POST[ 'tgp_student_address_street' ], 'STRING' );
		$this->mAddress[ ':city' ] 		= sanitize::sani( $_POST[ 'tgp_student_address_city' ], 'STRING' );
		$this->mAddress[ ':state' ] 	= sanitize::sani( $_POST[ 'tgp_student_address_state' ], 'STRING' );
		$this->mAddress[ ':zip' ] 		= sanitize::sani( $_POST[ 'tgp_student_address_zip' ], 'INTIGER' );
		
		//school
		$this->mSchool[ ':school' ] = sanitize::sani( $_POST[ 'tgp_student_school' ], 'STRING' );
		$this->mSchool[ ':grade' ]  = sanitize::sani( $_POST[ 'tgp_student_grade' ], 'STRING' );
		
		//parent/legal guardian 1
		$this->mParent1[ ':p1Name' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent1_name' ], 'STRING' );
		$this->mParent1[ ':p1hPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent1_homePhone' ], 'STRING' );
		$this->mParent1[ ':p1wPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent1_workPhone' ], 'STRING' );
		$this->mParent1[ ':p1cPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent1_cellPhone' ], 'STRING' );
		$this->mParent1[ ':p1Email' ] 	= sanitize::validate( sanitize::sani( $_POST[ 'tgp_student_parent1_email' ], 'EMAIL' ), 'EMAIL' );
		
		//parent/legal guardian 2
		$this->mParent2[ ':p2Name' ]  	= sanitize::sani( $_POST[ 'tgp_student_parent2_name' ], 'STRING' );
		$this->mParent2[ ':p2hPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent2_homePhone' ], 'STRING' );
		$this->mParent2[ ':p2wPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent2_workPhone' ], 'STRING' );
		$this->mParent2[ ':p2cPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent2_cellPhone' ], 'STRING' );
		$this->mParent2[ ':p2Email' ]  	= sanitize::validate( sanitize::sani( $_POST[ 'tgp_student_parent2_email' ], 'EMAIL' ), 'EMAIL' );
		
		//caregiver
		$this->mCaregiver[ ':cgName' ] 	= sanitize::sani( $_POST[ 'tgp_student_caregiver_name' ], 'STRING' );
		$this->mCaregiver[ ':cgPhone' ] = sanitize::sani( $_POST[ 'tgp_student_caregiver_phone' ], 'STRING' );
		
		//emergency contact
		$this->mEContact[ ':eName' ] 		= sanitize::sani( $_POST[ 'tgp_student_emergency_name' ], 'STRING' );
		$this->mEContact[ ':eRelation' ] 	= isset( $_POST[ 'tgp_student_emergency_relation' ] ) ? sanitize::sani( $_POST[ 'tgp_student_emergency_relation' ], 'STRING' ) : '';
		$this->mEContact[ ':ehPhone' ] 		= sanitize::sani( $_POST[ 'tgp_student_emergency_homePhone' ], 'STRING' );
		$this->mEContact[ ':ewPhone' ] 		= sanitize::sani( $_POST[ 'tgp_student_emergency_workPhone' ], 'STRING' );
		$this->mEContact[ ':ecPhone' ] 		= sanitize::sani( $_POST[ 'tgp_student_emergency_cellPhone' ], 'STRING' );
		
		if( !empty( $this->mP[ ':name' ] ) )
			list( $first, $last ) = explode( " ", $this->mP[ ':name' ] );
		
		if( $this->hasErrors() )
			return;
		
		if( !isset( $_POST[ 'tgp_student_new' ] ) )
		{		
			if( administrator::participantExist( $first, $last, $this->mP[ ':dob' ], $this->mP[ ':sex' ] ) )
			{
				$this->mAlreadyExist = true;
				return;
			}
		}
		
		switch( user::whatType() )
		{
			case 'A':
				$sID = administrator::addParticipant( $this->mClassID, $this->mP, $this->mAddress, $this->mSchool, $this->mParent1, $this->mParent2, $this->mCaregiver, $this->mEContact );
				
				if( $sID > 0 )
				{
					if( $this->mClassID > 0 )
						header( 'Location:'.Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/class-info/'.$this->mClassID ) );
					else
						header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$sID.'&action=viewStudent' ) );
					
					exit;
				}
				else
					echo '<p class=error>There was an error!</p>';
					
				break;
				
			case 'E':
				if( catalog::addParticipant( $this->mClassID, $this->mP ) )
				{
					header( 'Location:'.Link::Build( '' ) );
					exit;
				}
				else
					echo '<p class=error>Could not save</p>';
				break;
				
			default:
				break;
		}	
	}

	private function hasErrors()
	{	
		if( !empty( $this->mP[ ':name' ] ) )
		{
			list( $first, $last ) = explode( " ", $this->mP[ ':name' ] );
		
			if(  empty( $first ) || empty( $last ) )
				$this->mErrors[ ':name' ] = true;
		}
		else 
			$this->mErrors[ ':name' ] = true;
		
		foreach( $this->mP AS $field => $value )
			if( $this->_mRequired[ $field ] && empty( $value ) )
				$this->mErrors[ $field ] = true;

		$this->mErrors[ 'address' ] = $this->hasRegularErrors( 'A' );
		$this->mErrors[ 'econtact'] = $this->hasRegularErrors( 'EC' );
		$this->mErrors[ 'eccombined' ] = $this->hasErrorsCombined( 'EC' );
		
		if( !$this->mAdult ) //if is a child
		{
			$this->mErrors[ 'parent1' ] = $this->hasRegularErrors( 'P1' );
			$this->mErrors[ 'parent2' ] = $this->hasRegularErrors( 'P2' );
			$this->mErrors[ 'caregiver' ] = $this->hasRegularErrors( 'CG' );
			$this->mErrors[ 'p1combined' ] = $this->hasErrorsCombined( 'P1' );
			$this->mErrors[ 'p2combined' ] = $this->hasErrorsCombined( 'P2' );
		}	
		else //if is an adult
			$this->mErrors[ 'icombined' ] = $this->hasErrorsCombined( 'I' );
			

		
		if( in_array( true, $this->mErrors ) )
			return true;
			
		return false;
	}
	
	private function hasErrorsCombined( $type )
	{
		$Req = array();
		$Info = array();
		
		switch( $type )
		{
			case 'I': //immediate info
				$Req = &$this->_mRequired[ 'icombined' ];
				$Info = &$this->mP;
				break;
			
			case 'EC': //address
				$Req = &$this->_mReqEmergency[ 'combined' ];
				$Info = &$this->mEContact;
				break;
				
			case 'P1':
				$Req = &$this->_mReqParent1[ 'combined' ];
				$Info = &$this->mParent1;
				break;
			
			case 'P2':
				$Req = &$this->_mReqParent2[ 'combined' ];
				$Info = &$this->mParent2;
				break;
				
			default:
				break;
		}
		
		if( !is_array( $Req ) || !is_array( $Info ) )
			return false;
		
		foreach( $Req AS $field )
			if( !empty( $Info[ $field ] ) )
				return false;
				
		return true;
	}
	
	private function hasRegularErrors( $type )
	{
		$Req = array();
		$Info = array();
		
		switch( $type )
		{
			case 'A':
				$Req = &$this->_mReqAddress;
				$Info = &$this->mAddress;
				break;
			
			case 'P1':
				$Req = &$this->_mReqParent1;
				$Info = &$this->mParent1;
				break;
				
			case 'P2':
				$Req = &$this->_mReqParent2;
				$Info = &$this->mParent2;
				break;
			
			case 'EC':
				$Req = &$this->_mReqEmergency;
				$Info = &$this->mEContact;
				break;
				
			case 'CG':
				$Req = &$this->_mReqCaregiver;
				$Info =  &$this->mCaregiver;
				break;
				
			default:
				break;
				
		}
		
		foreach( $Info AS $field => $value )
			if( isset( $Req[ $field ] ) && $Req[ $field ] && empty( $value ) )
				$this->mErrors[ $field ] = true;
				
			
		if( in_array( true, $this->mErrors ) )
			return true;
			
		return false;
	}
	
	public function __destruct()
	{
	
	}
}
?>