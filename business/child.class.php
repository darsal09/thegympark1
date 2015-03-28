<?php
class child
{
	private $_mChild;
	private $_mAddress;
	private $_mCaregiver;
	private $_mParent1;
	private $_mParent2;
	private $_mEmergencyContact;
	private $_mCard;	
	private $_mPayment;
	
	private $_mMemberID;
	private $_mUserID;

	private $_mRegisterID;
	private $_mType;
	
	
	public $mRegisterWho;
	public $mRegisteredID;
	
	public function __construct( $mP, $register, $register_who )
	{
		try
		{
			$this->checkInputs( $mP, $register, $register_who );
			
			$this->mRegisterWho 			= $register_who;
			$this->mRegisteredID 			= 0;
			$this->_mType 					= $register[ 'type' ];
			$this->_mRegisterID				= $register[ 'id' ];
			$this->mOption 					= $register[ 'option' ];
			
			$this->_mChild 					= array( ':first' => $mP[ 'first_name'], ':last' => $mP[ 'last_name' ], ':dob' => date( 'Y-m-d', strtotime( $mP[ 'dob' ] ) ), ':gender' => $mP[ 'gender' ] );
			$this->_mAddress 				= new address( array( ':street' => $mP[ 'street' ], ':city' => $mP[ 'city' ], ':state' => $mP[ 'state' ], ':zip' => $mP[ 'zip' ] ) );
			$this->_mCaregiver				= new caregiver( array( ':name' => $mP[ 'caregiver_name' ], ':phone' => $mP[ 'caregiver_phone' ] ) );
			$this->_mParent1				= new parentModel( array( 'info' =>  array( ':name' => $mP[ 'parent1_name' ], ':phone' => $mP[ 'parent1_home_phone' ], ':cell' => $mP[ 'parent1_cell_phone' ], ':work' => $mP[ 'parent1_work_phone' ], ':email' => $mP[ 'parent1_email' ] ) ) ); 
			$this->_mParent2				= new parentModel( array( 'info' => array( ':name' => $mP[ 'parent2_name' ], ':phone' => $mP[ 'parent2_home_phone' ], ':cell' => $mP[ 'parent2_cell_phone' ], ':work' => $mP[ 'parent2_work_phone' ], ':email' => $mP[ 'parent2_email' ] ) ) );
			
			$this->_mSchool 				= new school( array( ':name' => $mP[ 'school_name' ], ':grade' => $mP[ 'school_grade' ] ) );
			
			$this->_mEmergencyContact 		= new emergencyContact( array( ':relation' => $mP[ 'emergency_relation' ], ':name' => $mP[ 'emergency_name' ], ':phone' => $mP[ 'emergency_phone' ] ) );
			$this->_mCard 					= new creditCard( array( ':name' => $mP[ 'name_on_card' ], ':number' => $mP[ 'cardNumber' ], ':type' => $mP[ 'cardType' ], ':expire' => $mP[ 'expiration_date' ], ':cardCode' => $mP[ 'authorization_code' ], 
												':street' => $mP[ 'billing_street' ], ':city' => $mP[ 'billing_city' ], ':state' => $mP[ 'billing_state' ], ':zip' => $mP[ 'billing_zip' ] ) );
												
			if( $this->_mType == 'Class' )
				$this->_mPayment			= new paymentClass( $this->_mCard, $this->_mRegisterID, $this->mOption, $register_who );
			else
				$this->_mPayment 			= new paymentOpenPlay( $this->_mCard, $this->_mRegisterID, $this->mOption, $register_who );
			
			if( isset( $mP[ ':uID' ] ) )
				$this->_mUserID = $mP[ ':uID' ];
			
			if( isset( $mP[ ':mID' ] ) )
				$this->_mMemberID = $mP[ ':mID' ];		
		}
		catch( Exception $e )
		{
			echo '<div class=has-errors>'.$e->getMessage().'</div>';
			return;
		}
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
		
				
		return true;
	}
	
	public function signUp()
	{
			if( ( !empty( $this->_mUserID ) && $this->_mUserID > 0 ) || ( !empty( $this->_mMemberID ) && $this->_mMemberID > 0 ) )
			{
				echo '<p class=error>You can not sign up. An account is already set up for you.</p>';
				
				throw new Exception( 'Cannot create account. There is not enough information to create account' );
				
				return false;
			}
			
			$this->_mUserID = $this->createAccount();
			
			if( $this->_mUserID < 1 )
			{
				echo '<p class=error>We could not set an account<br/>';
				throw new Exception( 'Cannot create account. ' );
				return false;
			}
			
			$this->addFamilyMember();		
			
			$this->_mMemberID = $this->addChild();
			
			/*
				Make sure that the child is added to system otherwise don't continue
			*/
			
			if( $this->_mMemberID < 1 )
			{
				echo '<p class=error>We could not add family member to your family tree.</p>';
				return false;
			}
			
			$this->saveCaregiver();
			$this->saveSchool();
			$this->saveAddress();
			
			$this->saveParent( $this->_mParent1 );
			$this->saveParent( $this->_mParent2 );
			
			$this->saveCreditCard();
			$this->saveEmergencyContact();
			$this->savePayment();

			//Add parent consent
			$this->addParentConsent();
			
			$this->sendSignUpEmail();
			
			return true;
	}
	
	public function relativeSignUP()
	{
	
	}
	
	public function caregiveSignUp()
	{
	
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
	
	public function sendSignUpEmail()
	{
		switch( $this->_mType )
		{
			case 'Class' || 'class':
				return $this->classSignUpEmail();
				break;
			case 'Open Play' || 'open play' || 'Open play' || 'open Play':
				return $ths->openPlaySignUpEmail();
				
			default:
				return false;
		}
	}

	public function classSignUpEmail()
	{
		$classInfo = classModel::get( array( ':cID' => $this->_mRegisterID ) );
			
		$message = '<h1 class=bg-success>Registration Complete!</h1><p>Your registration was succesfull!</p><h3>Here is your class registration summary</h3>';
		$message .= '<p>'.$this->_mChild[ ':first' ].' '.$this->_mChild[ ':last' ].' registered to the following class on '.date( 'l F jS, Y g:ia' ).':</p>';

		$message .= '<p><b>'.$classInfo[ 'title' ].'</b><br/>';
		$message .= '<b>'.$classInfo[ 'weekday' ].'s: '.$classInfo[ 'start_time' ].' to '.$classInfo[ 'end_time' ].'</b><br/>';
		$message .= 'Starting <b>'.date( 'D. M. jS, Y', strtotime( $this->_mPayment->mClassInfo->mBegin ) ).'</b> to <b>'.date( 'D M. jS, Y', strtotime( $this->_mPayment->mClassInfo->mEnd ) ).'</b><br/>';
		$message .= 'Class description:<br/><b>'.$this->_mPayment->mDescription.'</b></p><p>Payment information:</p>';

		if( $this->_mPayment->mResult === 1 ) //if paid
			$message .= '<p>'.$this->_mCard->mName.'<br/>'.$this->_mCard->mType.' - '.substr( $this->_mCard->mNumber, 12, strlen( $this->_mCard->mNumber )).'</p>';
		else //if not paid
			$message .= '<p>We tried to charge the card you provided but it did not go through. We have save the information in our system and you can log in to our system to make the payment.</p>';

		return classModel::sendRegisteredEmail( array( ':name' => $this->_mChild[ ':first' ].' '.$this->_mChild[ ':last' ], ':email' => $this->_mParent1->mEmail, ':message' => $message, 
											':subject' => $classInfo[ 'title' ].' on '.$classInfo[ 'weekday' ].'s at '.date( 'g:ia', strtotime( $classInfo[ 'start_time' ]  )  ).' in the '.$classInfo[ 'season' ].' '.$classInfo[ 'year' ], 
											':uID' => $this->_mUserID, ':sID' => $this->_mMemberID, 'pID' => $classInfo[ 'tgp_program_id' ], 'cID' => $classInfo[ 'category_id' ], 'ctID' => $classInfo[ 'title_id' ], 
											'clID' => $this->mClassID ) );

	}

	public function openPlaySignUpEmail()
	{
		$openPlay = openPlayModel::get( array( ':opID' => $this->_mRegisterID ) );
		$classes = openPlayModel::getClasses( array( ':opID' => $this->_mRegisterID ) );
		$Package = packageModel::get( array( ':pOPID' => $this->_mOption ) );
		
		$message = '<h1 class=bg-success>Registration Complete!</h1><p>Your registration was succesfull!</p><h3>Here is your open play registration summary</h3>';
		$message .= '<p>'.$this->_mChild[ ':first' ].' '.$this->_mChild[ ':last' ].' registered to the following '.$openPlay[ 'title' ].' for the '.$openPlay[ 'season' ].' '.$openPlay[ 'year' ].' season on '.date( 'l F jS, Y g:ia' ).':</p>';
		$message .= '<p>Package Information:<br/>';
		$message .= 'You have registered for the following '.$Package[ 'type' ].' package: '.$Package[ 'title' ].'<br/>
					This package is good for '.$Package[ 'amount' ].' visits.<br/>';
		$message .= '</p><p>Your child can participate in the following classes: <br/>';
		
		for( $i = 0; $i < $size; $i++ )
			$message .= $classes[ $i ][ 'weekday' ].' - '.date( 'g:ia', strtotime( $obj->mClasses[ i ].start_time ) ).'<br/>';
			
		$message = '</p><p>Payment information:</p>';

		if( $this->_mPayment->mResult === 1 ) //if paid
		{
			$message .= '<p>
							Charge: $'.$Package[ 'price' ].'.00<br/>
							Card: '.$CreditCard[ 'card' ][ 'name' ].' '.$CreditCard[ 'card' ][ 'type' ].'-'.$CreditCard[ 'card' ][ 'last4' ].'
						</p>';

			$message .= '<p>'.$this->_mCard->mName.'<br/>'.$this->_mCard->mType.' - '.substr( $this->_mCard->mNumber, 12, strlen( $this->_mCard->mNumber )).'</p>';
		}
		else //if not paid
			$message .= '<p>We tried to charge the card you provided but it did not go through. We have save the information in our system and you can log in to our system to make the payment.</p>';

		return openPlayModel::sendRegisteredEmail( array( ':name' => $this->_mChild[ ':first' ].' '.$this->_mChild[ ':last' ], ':email' => $this->_mParent1->mEmail, ':message' => $message, 
											':subject' => $openPlay[ 'title' ].' for the '.$openPlay[ 'season' ].' '.$openPlay[ 'year' ], 
											':uID' => $this->_mUserID, ':sID' => $this->_mMemberID, ':opID' => $this->mOpenPlayID, ':packageID' => $this->mOption ) );

	}
	
	private function saveCaregiver()
	{
		//send parameters to save caregiver information to the right child
		$this->_mCaregiver->setParameters( array( ':MemberID' => $this->_mMemberID, ':UserID' => $this->_mUserID ) );
		$this->_mCaregiver->save();
	}
	
	private function saveSchool()
	{
		//send parameters to save school information to the right child 
		$this->_mSchool->setParameters( array( ':MemberID' => $this->_mMemberID, ':UserID' => $this->_mUserID ) );
		$this->_mSchool->save();	
	}
	
	private function saveAddress()
	{
		//send parameters to save address information to the right child
		$this->_mAddress->setParameters( array( ':MemberID' => $this->_mMemberID, ':UserID' => $this->_mUserID ) );
		$this->_mAddress->save();	
	}
	
	private function saveParent( $parent )
	{
		//send parameters to save parent 1 information to the right child
		$parent->setParameters( array( ':MemberID' => $this->_mMemberID, ':UserID' => $this->_mUserID ) );
		$parent->save();	
	}
	
	private function saveCreditCard()
	{
		//send  parameters to save credit card information to the right child
		$this->_mCard->setParameters( array( 'mMemberID' => $this->_mMemberID, 'mUserID' => $this->_mUserID ) );
		$this->_mCard->save();	
	}
	
	private function saveEmergencyContact()
	{
		//send parameters to save emergency contact information to the right child
		$this->_mEmergencyContact->setParameters( array( ':MemberID' => $this->_mMemberID, ':UserID' => $this->_mUserID ) );
		$this->_mEmergencyContact->save();
	}
	
	private function savePayment()
	{
		//send parameters to make payment, add kid to class, and save payment information
		$this->_mPayment->mCardID = $this->_mCard->getId();
		
		$this->_mPayment->setParameters( array( ':MemberID' => $this->_mMemberID, ':UserID' => $this->_mUserID ) );
		
		$this->mRegisteredID = $this->_mPayment->save();
	}
	
	private function createAccount()
	{
		if( !$this->_mParent1->createAccount() )
		{
			echo '<p class=error>We do not have enough information to start an account</p>';
			
			return false;
		}
		
		return user::create( array( ':uEmail' => $this->_mParent1->getEmail() ) );
	}
	
	private function addFamilyMember()
	{
		//parent1 information entered as member in the family
		list( $first, $last ) = explode( ' ', $this->_mParent1->getName() );
		
		$p1ID = family::addMember( array( ':first'  => $first, ':last' => $last, ':gender' => '', ':dob' => '', ':type' => 'Myself', ':uID' => $this->_mUserID ) );		
		
		if( $p1ID < 1 )
			throw new Exception( 'Family '.$first.' '.$last.' was not added in the system' );
	}
	
	private function addChild()
	{
		$this->_mChild[ ':uID' ] = $this->_mUserID;
		
		if( $this->_mChild[ ':gender' ] == "F" )
			$this->_mChild[ ':type' ] = 'Daughter';
		else
			$this->_mChild[ ':type' ] = 'Son';
	
		$id = family::addMember( $this->_mChild );	
		
		if( $id < 1 )
		{
			throw new Exception( 'Cannot add child in the system' );
			return 0;
		}
		
		return $id;
	}
	
	/*
		*Add parent consent
		*If it is a parent signing the kid, then the consent is completed
		*If it is a relative, caregiver, or someone other than a parent or legal guardian, we will need to get the parent's consent
	*/
	public function addParentConsent()
	{
		$status = 'Complete';
		
		if( $this->mRegisterWho != 'Parent/Legal Guardian'  )
			$status = 'Pending';
		
		$this->mParentConsent = new ParentConsent( array( 'student_id' => $this->_mMemberID, 'registered_id' => $this->mRegisteredID, 'status' => $status, 'type' => $this->_mType ) );
		
		//returns the parent consent id
		$pcID = $this->mParentConsent->add();
		
		if( $status == 'Pending' )
			$this->mParentConsent->sendEmail( array( ':uID' => $this->_mUserID , ':sID' => $this->_mMemberID, 'registerBy' => $this->mRegisterWho ) );
	}
	
	public function getID()
	{
		return $this->_mMemberID;
	}
	
	private function checkInputs( $mP, $register, $register_who )
	{
		if( ( !isset( $mP ) || !is_array( $mP ) ) || ( !isset( $register )  || !is_array( $register ) ) || ( !isset( $register_who ) || empty( $register_who ) ) )
				throw new Exception( 'You Need an array' );
		
		if( !isset( $register[ 'type' ] ) || !isset( $register[ 'id' ] ) || !isset( $register[ 'option' ] ) )
			throw new Exception( 'You need to define, the following variables for register array type, id, option' );			
	}
}
?>