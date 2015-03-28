<?php
class childSignUp
{
	private $_mChild 				= array( ':first' => '', ':last' => '', ':dob' => '', ':gender' => '' );
	private $_mAddress 				= array( ':street' => '', ':city' => '', ':state' => '', ':zip' => '' );
	private $_mCaregiver 			= array( ':name' => '', ':phone' => '' );
	private $_mParents 				= array( 'parent1' => array( ':name' => '', ':phone' => '', ':cell' => '', ':work' => '', ':email' => '' ), 'parent2' => array( ':name' => '', ':phone' => '', ':cell' => '', ':work' => '', ':email' => '' ) );
	private $_mEmergencyContact 	= array( ':name' => '', ':phone' => '' );
	private $_mCard 				= array( ':name' => '', ':number' => '', ':expire' => '', ':code' => '', ':street' => '', ':city' => '', ':state' => '', ':zip' => '' );
	public $mErrors 				= array( 'child' => false, 'address' => false, 'caregiver' => false, 'parent1' => false, 'parent2' => false, 'emergency' => false, 'card' => false );
	
	private $_mMemberID;
	private $_mUID;
	private $_mParent1ID;
	private $_mParent2ID;

	public function __construct( $mP )
	{
		$this->_mChild 				= array( ':first' => $mP[ 'first_name'], ':last' => $mP[ 'last_name' ], ':dob' => $mP[ 'dob' ], ':gender' => $mP[ 'gender' ] );
		$this->_mAddress 			= array( ':street' => $mP[ 'street' ], ':city' => $mP[ 'city' ], ':state' => $mP[ 'state' ], ':zip' => $mP[ 'zip' ] );
		$this->_mCard				= array( ':name' => $mP[ 'caregiver_name' ], ':phone' => $mP[ 'caregiver_phone' ] );
		$this->_mParents			= array( 'parent1' => array( ':name' => $mP[ 'parent1_name' ], ':phone' => $mP[ 'parent1_home_phone' ], ':cell' => $mP[ 'parent1_cell_phone' ], ':work' => $mP[ 'parent1_work_phone' ], ':email' => $mP[ 'parent1_email' ] ), 
											'parent2' => array( ':name' => $mP[ 'parent2_name' ], ':phone' => $mP[ 'parent2_home_phone' ], ':cell' => $mP[ 'parent2_cell_phone' ], ':work' => $mP[ 'parent2_work_phone' ], ':email' => $mP[ 'parent2_email' ] ) );
									
		$this->_mEmergencyContact 	= array( ':name' => $mP[ 'emergency_name' ], ':phone' => $mP[ 'emergency_phone' ] );
		$this->_mCard 				= array( ':name' => $mP[ 'name_on_card' ], ':number' => $mP[ 'cardNumber' ], ':type' => $mP[ 'cardType' ], ':expire' => $mP[ 'expiration_date' ], ':card_code' => $mP[ 'authorization_code' ], 
											':street' => $mP[ 'billing_street' ], ':city' => $mP[ 'billing_city' ], ':state' => $mP[ 'billing_state' ], ':zip' => $mP[ 'billing_zip' ] );
											
	}

	public function save()
	{
		if( $this->hasErrors() )
		{
			echo '<p class=errors>There are errors. So the child cannot be save yet</p>';
			return false;
		}
		
		if( empty( $this->_mMemberID ) )
		{
			if( $this->_mUID < 1 )
			{
				echo '<p class=error>There were errors creating user in our system</p>';
				return false;
			}
				
			$this->_mChild[ ':uID' ] = $this->_mUID;
			
			$this->_mMemberID = familyMember::add( $this->_mChild );
		}
		
		if( $this->_mMemberID < 1 )
		{
			echo '<p class=error>We could not add the child information in our system</p>';
			return false;
		}
		
		
		//$address = new address( $this->_mAddress );
		
		return true;
	}
	
	public function signUp()
	{
		if( empty( $this->_mUID ) || $this->_mUID < 1 )
			$this->createUser();
		
		if( $this->_mUID < 1 )
			return false;
		
		//save child information
		$this->save();
				
		if( $this->_mMemberID < 0 )
		{
			echo '<p class=error>THere are errors adding family member.</p>';
			return false;
		}
		
		$this->saveParent1();
		$this->saveParent2();
		$this->saveEmergencyContact();
		$this->addClass();
		$this->addCard();
		$this->addPayment();
		$this->sendSignUpEmail();
		
		//unset( $_SESSION[ 'register' ] );
		//$_SESSION[ 'complete' ] = array( 'class_id' => $_SESSION );
	//	header( 'Location:'.Link::Build( 'index.php?action=complete' ) );
	//	exit;
	}
	
	public function relativeSignUP()
	{
	
	}
	
	public function caregiveSignUp()
	{
	
	}
	
	private function hasErrors()
	{
		//$eChild = helper::hasErrors( $this->_mChild
	}

	private function createUser()
	{
		$user = $this->mParents[ 'parent1' ];
		$errors = helper::hasErrors( $user, array( ':name' => true, ':email' => true ), array( ':name' => false, ':email' => false ) );
		
		if( in_array( true, $errors ) )
		{
			echo '<p class=error>Coud not create user account</p>';
			return false;
		}
		
		$this->_mUID = user::create( array( ':uEmail' => $user[ ':email' ] ) );
		
		if( $this->_mUID > 0 )
			return true;
		
		return false;
	}
	
	public function saveParent1()
	{
		if( !is_array( $this->mParents[ 'parent1' ] ) )
			return false;
			
		if( $this->_mMemberID > 0 )
			return false;
			
		if( !isset( $this->_mParents[ 'parent1' ][ 'parent_id' ] ) )
		{
			$this->mParents[ 'parent1' ][ ':sID' ] = $this->_mMemberID;
			$this->_mParent2ID = parentModel::add( $this->mParents[ 'parent1' ] );
		}
		
		if ( $this->_mParent2ID > 0 )
			return true;
			
		return false;
	}
	
	public function saveParent2()
	{
		if( !is_array( $this->mParents[ 'parent2' ] ) )
			return false;
		
		if( $this->_mMemberID > 0 )
			return false;
		
		if( !isset( $this->_mParents[ 'parent2' ][ 'parent_id' ] ) )
		{
			$this->mParents[ 'parent2' ][ ':sID' ] = $this->_mMemberID;
			$this->_mParent1ID = parentModel::add( $this->mParents[ 'parent2' ] );
		}
			
		if ( $this->_mParent1ID > 0 )
			return true;
			
		return false;
	}
	
	public function addClass()
	{
		if( $this->_mMemberID < 1 )
			return false;
			
		
	}
	
	public function addPayment()
	{
	
	}
	
	public function addCard()
	{
	
	}
	
	public function saveEmergencyContact()
	{
		if( $this->_mMemberID < 1 )
			return false;
			
		$this->mEmergency[ ':mID' ] = $this->_mMemberID;
		
		$this->_mEmergencyID = emergency::add( $this->mEmergency );
	}
}
?>