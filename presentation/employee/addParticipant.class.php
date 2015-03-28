<?php
class addParticipant
{
	public $mP = array( 'first' => '', 'last' => '', 'dob' => '', 'gender' => '', 
						'street' => '', 'city' => '', 'state' => '', 'zip' => '',
						'parent1_first' => '', 'parent1_last' => '', 'parent1_phone' => '', 'parent1_email' => '',
						'parent2_first' => '', 'parent2_last' => '', 'parent2_phone' => '', 'parent2_email' => '',
						'emergency_relation' => '', 'emergency_name' => '', 'emergency_phone' => '', 
						'caregiver_name' => '', 'caregiver_phone' => '',
						'school_name' => '' );
						
	public $mReq = array( 'first' => true, 'last' => true, 'dob' => true, 'gender' => true, 
						'street' => true, 'city' => true, 'state' => true, 'zip' => true,
						'parent1_first' => true, 'parent1_last' => true, 'parent1_phone' => true, 'parent1_email' => true,
						'parent2_first' => false, 'parent2_last' => false, 'parent2_phone' => false, 'parent2_email' => false,
						'emergency_relation' => true, 'emergency_name' => true, 'emergency_phone' => true, 
						'caregiver_name' => false, 'caregiver_phone' => false,
						'school_name' => false );
						
	public $mErrors = array( 'first' => false, 'last' => false, 'dob' => false, 'gender' => false, 
						'street' => false, 'city' => false, 'state' => false, 'zip' => false,
						'parent1_first' => false, 'parent1_last' => false, 'parent1_phone' => false, 'parent1_email' => false,
						'parent2_first' => false, 'parent2_last' => false, 'parent2_phone' => false, 'parent2_email' => false,
						'emergency_relation' => false, 'emergency_name' => false, 'emergency_phone' => false, 
						'caregiver_name' => false, 'caregiver_phone' => false,
						'school_name' => false );
						
	public $mLinkToAddPeronsalInfo;
	public $mMessage;
	
	public function __construct()
	{
		if( isset( $_POST[ 'participant_save' ] ) )
			$this->save();
	}
	
	public function init()
	{
	
	
		$this->mLinkToAddPersonalInfo 	= Link::Build( 'api/employee/students/student/addPersonalInfo.php' );
		$this->mLinkToAddAddressInfo 	= Link::Build( 'api/employee/students/student/addAddressInfo.php' );
		
		$this->mLinkToAddParentsInfo 	= Link::Build( 'api/employee/students/student/addParentsInfo.php' );
		$this->mLinkToAddEmergencyInfo 	= Link::Build( 'api/employee/students/student/addEmergencyInfo.php' );
		
		$this->mLinkToAddCaregiverInfo 	= Link::Build( 'api/employee/students/student/addCaregiverInfo.php' );
		$this->mLinkToAddSchoolInfo 	= Link::Build( 'api/employee/students/student/addSchoolInfo.php' );
	}
	
	private function save()
	{
		$this->mP = sanitize::filterInputs( 'POST', array( 'first' => FILTER_SANITIZE_STRING, 'last' => FILTER_SANITIZE_STRING, 'dob' => FILTER_SANITIZE_STRING, 'gender' => FILTER_SANITIZE_STRING, 
															'street' => FILTER_SANITIZE_STRING, 'city' => FILTER_SANITIZE_STRING, 'state' => FILTER_SANITIZE_STRING, 'zip' => FILTER_SANITIZE_STRING,
															'parent1_first' => FILTER_SANITIZE_STRING, 'parent1_last' => FILTER_SANITIZE_STRING, 'parent1_phone' => FILTER_SANITIZE_STRING, 'parent1_email' => FILTER_SANITIZE_STRING,
															'parent2_first' => FILTER_SANITIZE_STRING, 'parent2_last' => FILTER_SANITIZE_STRING, 'parent2_phone' => FILTER_SANITIZE_STRING, 'parent2_email' => FILTER_SANITIZE_STRING,
															'emergency_relation' => FILTER_SANITIZE_STRING, 'emergency_name' => FILTER_SANITIZE_STRING, 'emergency_phone' => FILTER_SANITIZE_STRING, 
															'caregiver_name' => FILTER_SANITIZE_STRING, 'caregiver_phone' => FILTER_SANITIZE_STRING,
															'school_name' => FILTER_SANITIZE_STRING ) );
										
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		if( in_array( true, $this->mErrors ) )
			return;
			
		$user = new createUser( array( 'name' => $this->mP[ 'parent1_first' ].' '.$this->mP[ 'parent1_last' ], 
										'email' => $this->mP[ 'parent1_email' ] ) );
		if( $user->exist() )
		{
			$this->mMessage = 'You already have an account. Please login to register you child</p>';
			return;
		}
		
		if( !$user->save() )
		{	
			$this->mMessage = 'The information you have provided is not enough to start an account. Please provide a name and email for parent 1 information';
			return;
		}
		else
			echo '<p>user: saved</p>';
	
		$uID = $user->getID();
		
		
										
		$participant = new participantInfo( array( 'first' 		=> $this->mP[ 'first' ], 
													'last' 		=> $this->mP[ 'last' ], 
													'dob' 		=> $this->mP[ 'dob' ], 
													'gender' 	=> $this->mP[ 'gender' ],
													'userID' 	=> $uID ) );
													
		if( !$participant->save() )
		{
			$this->mMessage = 'We could not save the information about your participant';
			$user->delete();
			return;
			
		}
		else
			echo '<p>Participant: saved</p>';
		
		$sID = $participant->getID();
		
		$parent1 = new parents( array( 'name' 		=> $this->mP[ 'parent1_first' ].' '.$this->mP[ 'parent1_last' ], 
										'cellPhone' => $this->mP[ 'parent1_phone' ],
										'email' 	=> $this->mP[ 'parent1_email' ],
										'studentID' => $sID,
										'userID' 	=> $uID ) );
		
		if( !$parent1->save() )
		{
			$this->mMessage = 'We could not save parent 1 information';
			
			$user->delete();
			$participant->delete();
			
			return;
		}
		else
			echo '<p>Parent 1: saved</p>';
		
		if( !empty( $this->mP[ 'parent2_first' ] ) && !empty( $this->mP[ 'parent2_last' ] ) )
		{
			$parent2 = new parents( array( 'name'		=> $this->mP[ 'parent2_first' ].' '.$this->mP[ 'parent2_last' ], 
											'cellPhone' => $this->mP[ 'parent2_phone' ],
											'email' 	=> $this->mP[ 'parent2_email' ],
											'studentID' => $sID,
											'userID' 	=> $uID ) );
			
			if( !$parent2->save() )
			{
				$this->mMessage = 'We could not save parent 2 information';
				
				$user->delete();
				$participant->delete();
				$parent1->delete();
				
				return;
			}
			else
				echo '<p>Parent 2: saved</p>';
		}
		
		$address = new addresses( array( 'street' 	=> $this->mP[ 'street' ],
										'city' 		=> $this->mP[ 'city' ], 
										'state' 	=> $this->mP[ 'state' ],
										'zip' 		=> $this->mP[ 'zip' ] ,
										'studentID' => $sID,
										'userID' 	=> $uID ) );
										
		if( !$address->save() )
		{
			$this->mMessage = 'We could not save address information';
			
			$user->delete();
			$participant->delete();
			$parent1->delete();
			$parent2->delete();
			
			return;
		}
		else
			echo '<p>Address: saved</p>';
		
		$emergency = new emergencyContacts( array( 'name' 		=> $this->mP[ 'emergency_name' ],
													'relation' 	=> $this->mP[ 'emergency_relation' ],
													'cellPhone' 	=> $this->mP[ 'emergency_phone' ],
													'studentID' => $sID,
													'userID' 	=> $uID ) );
													
		if( !$emergency->save() )
		{
			$this->mMessage = 'We could not save emergency contact information';
			
			$user->delete();
			$participant->delete();
			$address->delete();
			$parent1->delete();
			$parant2->delete();
			
			return;
		}
		else
			echo '<p>Emergency Contact: saved</p>';
		
		if( !empty( $this->mP[ 'caregiver_name' ] ) )
		{
			$caregiver = new caregivers( array( 'name' => $this->mP[ 'caregiver_name' ],
											'phone' => $this->mP[ 'caregiver_phone' ],
											'studentID' => $sID,
											'userID' 	=> $uID ) );
			if( !$caregiver->save() )
				$this->mMessage = "<p>We could not save your child's caregiver information</p>";
		}
		
		if( !empty( $this->mP[ 'school_name' ] ) )
		{
			$school = new schools( array( 'name' => $this->mP[ 'school_name' ], 'studentID' => $sID, 'userID' => $uID ) );
			
			if( !$school->save() )
				$this->mMessage .= "<p>We could not save your child's school information</p>";
		}
		
		helper::redirect( 'employee/open-plays/current/students/'.$sID.'/history' );
		
	}
}
?>