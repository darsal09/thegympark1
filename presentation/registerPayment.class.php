<?php
class registerPayment
{
	public $mContact = array( ':homePhone' => '', ':workPhone' => '', ':cellPhone' => '', ':email' => '' );
	
	public $mP = array( 'cardType' => '', 'name_on_card' => '', 'cardNumber' => '', 'expiration_date' => '', 'authorization_code' => '', 
						'billing_street' => '', 'billing_city' => '', 'billing_state' => '', 'billing_zip' => '' );
	public $mReq = array( 'cardType' => true, 'name_on_card' => true, 'cardNumber' => true, 'expiration_date' => true, 'authorization_code' => true,
						'billing_street' => true, 'billing_city' => true, 'billing_state' => true, 'billing_zip' => true );
	public $mErrors = array( 'cardType' => false, 'name_on_card' => false, 'cardNumber' => false, 'expiration_date' => false, 'authorization_code' => false,
							'billing_street' => false, 'billing_city' => false, 'billing_state' => false, 'billing_zip' => false );
	public $mCard;
	public $mOption;
	public $mClassID;
	public $mClassInfo;
	public $mMemberInfo;
	public $mContactInfo;
	
	public function __construct()
	{
		if( isset( $_GET[ 'my_member_id' ] ) )
			$this->mMemberID = sanitize::sani( $_GET[ 'my_member_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = sanitize::sani( $_GET[ 'tgp_class_id' ],  'INTIGER' );
		
		if( isset( $_GET[ 'option' ] ) )
			$this->mOption = sanitize::sani( $_GET[ 'option' ], 'STRING' );
			
		if( isset( $_POST[ 'register_payment_save' ] ) )
			$this->save();
	}
	
	public function init()
	{
		$this->mCard = cardsModel::get( array( ':uID' => user::getId() ) );
		$this->mClassInfo = classModel::get( array( ':cID' => $this->mClassID ) );
		$this->mMemberInfo = family::getMember( array( ':mID' => $this->mMemberID ) );
		$this->mContactInfo = familyMember::getContactInfo( array( ':mID' => $this->mMemberID ) );
		$this->mEmergencyInfo = familyMember::getEmergencyInfo( array( ':mID' => $this->mMemberID ) );
		
		$this->mLinkToClasses = Link::Build( 'index.php?my_member_id='.$this->mMemberID.'&action=registerToClass' );
	}
	
	private function save()
	{		
		if( !isset( $_POST[ 'register_payment_save' ] ) )
			return;
		
		if( isset( $_POST[ 'card_on_file' ] ) )
			$this->cardOnFile();
		else
			$this->cardNotOnFile();
		
	}
	
	private function cardOnFile( )
	{
		if( !isset( $_POST[ 'register_payment_save' ] ) )
			return;
			
		$cardOnFile = sanitize::sani( $_POST[  'card_on_file' ], 'INTIGER' );
		
		$classInfo = classModel::get( array( ':cID' => $this->mClassID ) );
		
		$classParams = helper::getClassParameters( $this->mOption, $classInfo );
		
		if( !empty( $_POST[ ':contact_info_id' ] ) )
			$this->mContact = sanitize::filterInputs( 'POST', array( ':contact_info_id' => FILTER_SANITIZE_NUMBER_INT, ':homePhone' => FILTER_SANITIZE_STRING, ':workPhone' => FILTER_SANITIZE_STRING, ':cellPhone' => FILTER_SANITIZE_STRING, ':email' => FILTER_SANITIZE_EMAIL ) );
		else
			$this->mContact = sanitize::filterInputs( 'POST', array( ':homePhone' => FILTER_SANITIZE_STRING, ':workPhone' => FILTER_SANITIZE_STRING, ':cellPhone' => FILTER_SANITIZE_STRING, ':email' => FILTER_SANITIZE_EMAIL ) );
			
		$this->mContact[ ':mID' ] = $this->mMemberID;
		
		$errors = sanitize::hasErrors( $this->mContact, array( ':phone' => false, ':email' => true ), array( ':phone' => false, ':email' => false ) );
		$eOptions = sanitize::hasErrorsOptions( $this->mContact, array( ':homePhone', ':workPhone', ':cellPhone' ), $errors, ':phone' );
		
		if( in_array( true, $errors ) || in_array( true, $eOptions ) )
		{
			echo '<p class=error>There were errors in the contact information you provide. Please provide the info below:</p>';
			return;
		}	
		
		if( !isset( $_POST[ ':emergency_info_id' ] ) )
		{
			$emergencyInfo = sanitize::filterInputs( 'POST', array( ':emergency_relation' => FILTER_SANITIZE_STRING, ':emergency_name' => FILTER_SANITIZE_STRING, ':emergency_phone' => FILTER_SANITIZE_STRING ) );
			$eErrors = sanitize::hasErrors( $emergencyInfo, array( ':emergency_relation' => true, ':emergency_name' => true, ':emeregnecy_phone' => true ), array( ':emergency_relation' => false, ':emergency_name' => false, ':emergency_phone' => false ) );
			
			if( in_array( true, $eErrors ) )
			{
				echo '<p class=error>There are errors in the Emergency information. Please provide all the info asked.</p>';
				return;
			}
		}
		else
		{
			$emergency_id = sanitize::sani( $_POST[ ':emergency_info_id' ], 'INTIGER' );
			
			if( $emergency_id < 1 )
				return;
		}
		
		$emergencyInfo[ ':mID' ] = $this->mMemberID;
		$emergencyInfo[ ':uID' ] = user::getId();
		
		$classID  = family::addMemberToClass( array( ':cID' => $this->mClassID, ':sID' => $this->mMemberID, ':type' => $this->mOption, ':start' => $classParams[ 'begin' ], ':end' => $classParams[ 'end' ] ) );
			
			if( $classID > 0 )
			{				
				if( !empty( $_POST[ ':contact_info_id' ] ) )
					familyMember::updateAdultContactInfo( $this->mContact );
				else
					familyMember::addAdultContactInfo( $this->mContact );
				
				if( !isset( $_POST[ ':emergency_info_id' ] ) )
					familyMember::addEmergencyContactInfo( $emergencyInfo );
				else
					familyMember::changeEmergencyContactInfo( array( ':eID' => $emergency_id, ':mID' => $this->mMemberID, ':type' => 'Active' ) );

				$cardInfo = cardModel::get( array( ':cID' => $cardOnFile ) );
				
				$request = paymentModel::accept( array( 'name_on_card' => $cardInfo[ 'card' ][ 'name' ], 'cardNumber' => $cardInfo[ 'card' ][ 'number' ], 'cardType' => $carddInfo[ 'card' ][ 'type' ], 
														'expiration_date' => $cardInfo[ 'card' ][ 'expire' ], ':authorization_code' => $cardInfo[ 'card' ][ 'card_code' ], 
														'billing_street' => $cardInfo[ 'card' ][ 'street' ], 'billing_city' => $cardInfo[ 'card' ][ 'city' ], 'billing_state' => $cardInfo[  'card' ][ 'state' ], 'billing_zip' => $cardInfo[ 'card' ][ 'zip' ]  ),
												$classInfo, $classParams[ 'begin' ], $classParams[ 'end' ], $this->mOption );
				$result = $request->getResult();
				$results = $request->getResultArray();
						
				family::addPayment( array( ':uID' => user::getId(), ':sID' => $this->mMemberID, ':classID' => $this->mClassID, ':cardID' => $cardOnFile, ':payment' => $result == 1?'Paid':'Pending', ':amount' => $classParams[ 'price' ] , ':authorize_results' => $request->getResultString() ) ); 
				
				$memberInfo = family::getMember( array( ':mID' => $this->mMemberID ) );
				
				$message = '<h1 class=bg-success>Registration Complete!</h1><p>Your registration was succesfull!</p><h3>Here is your class registration summary</h3>';
				$message .= '<p>'.$memberInfo[ 'first' ].' '.$memberInfo[ 'last' ].' registered to the following class on '.date( 'l F jS, Y g:ia' ).':</p>';

				$message .= '<p><b>'.$classInfo[ 'title' ].'</b><br/>';
				$message .= '<b>'.$classInfo[ 'weekday' ].'s: '.$classInfo[ 'start_time' ].' to '.$classInfo[ 'end_time' ].'</b><br/>';
				$message .= 'Starting <b>'.date( 'D. M. jS, Y', strtotime( $classParams[ 'begin' ] ) ).'</b> to <b>'.date( 'D M. jS, Y', strtotime( $classParams[ 'end' ] ) ).'</b><br/>';
				$message .= 'Class description:<br/><b>'.$classInfo[ 'description' ].'</b></p><p>Payment information:</p>';

				if( $result === 1 ) //if paid
					$message .= '<p>We charged the following credit card the amount of '.$classParams[ 'price' ].' for the class registration:</p>';
				else //if not paid
					$message .= '<p>We tried to charge the card you provided but it did not go through. We have save the information in our system and you can log in to our system to make the payment.</p>';
					
					$message .= '<p>'.$cardInfo[ 'name' ].'<br/> - '.$cardInfo[ 'last4' ].'</p>';

				classModel::sendRegisteredEmail( array( ':name' => $memberInfo[ 'first_name' ].' '.$memberInfo[ 'last_name' ], ':email' => $memberInfo[ 'email' ], ':message' => $message, 
												':subject' => $classInfo[ 'title' ].' on '.$classInfo[ 'weekday' ].'s at '.date( 'g:ia', strtotime( $classInfo[ 'start_time' ]  )  ).' in the '.$classInfo[ 'season' ].' '.$classInfo[ 'year' ], 
												':uID' => user::getId(), ':sID' => $this->mMemberID, 'pID' => $classInfo[ 'tgp_program_id' ], 'cID' => $classInfo[ 'category_id' ], 'ctID' => $classInfo[ 'title_id' ], 
												'clID' => $this->mClassID ) );
												
			
				$_SESSION[ 'complete' ] = array( 'class_id' => $this->mClassID, 'class_part' => $this->mOption, 'student_id' => $this->mMemberID ) ;
							
				header( 'Location:index.php?action=complete' );
				exit;				
			}
			return;
	}
	
	private function cardNotOnFile( )
	{
		if( !isset( $_POST[ 'register_payment_save' ] ) )
			return;
			
		$this->mP = sanitize::filterInputs( 'POST', array( 'cardType' => FILTER_SANITIZE_STRING, 'name_on_card' => FILTER_SANITIZE_STRING, 'cardNumber' => FILTER_SANITIZE_STRING, 'expiration_date' => FILTER_SANITIZE_STRING, 'authorization_code' => FILTER_SANITIZE_STRING,
											'billing_street' => FILTER_SANITIZE_STRING, 'billing_city' => FILTER_SANITIZE_STRING, 'billing_state' => FILTER_SANITIZE_STRING, 'billing_zip' => FILTER_SANITIZE_STRING
											));
		
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		if( in_array( true, $this->mErrors ) )
		{
			echo '<p class=error> There are errors!<br/>Please fill out the fields that are in red.</p>';
			return 0;
		}
		
		$classInfo = classModel::get( array( ':cID' => $this->mClassID ) );
		
		$classParams = helper::getClassParameters( $this->mOption, $classInfo );
		
		if( !empty( $_POST[ ':contact_info_id' ] ) )
			$this->mContact = sanitize::filterInputs( 'POST', array( ':contact_info_id' => FILTER_SANITIZE_NUMBER_INT, ':homePhone' => FILTER_SANITIZE_STRING, ':workPhone' => FILTER_SANITIZE_STRING, ':cellPhone' => FILTER_SANITIZE_STRING, ':email' => FILTER_SANITIZE_EMAIL ) );
		else
			$this->mContact = sanitize::filterInputs( 'POST', array( ':homePhone' => FILTER_SANITIZE_STRING, ':workPhone' => FILTER_SANITIZE_STRING, ':cellPhone' => FILTER_SANITIZE_STRING, ':email' => FILTER_SANITIZE_EMAIL ) );
			
		$this->mContact[ ':mID' ] = $this->mMemberID;
		
		$errors = sanitize::hasErrors( $this->mContact, array( ':phone' => false, ':email' => true ), array( ':phone' => false, ':email' => false ) );
		$eOptions = sanitize::hasErrorsOptions( $this->mContact, array( ':homePhone', ':workPhone', ':cellPhone' ), $errors, ':phone' );
		
		if( in_array( true, $errors ) || in_array( true, $eOptions ) )
		{
			echo '<p class=error>There were errors in the contact information you provide. Please provide the info below:</p>';
			return;
		}	
		
		if( !isset( $_POST[ ':emergency_info_id' ] ) )
		{
			$emergencyInfo = sanitize::filterInputs( 'POST', array( ':emergency_relation' => FILTER_SANITIZE_STRING, ':emergency_name' => FILTER_SANITIZE_STRING, ':emergency_phone' => FILTER_SANITIZE_STRING ) );
			$eErrors = sanitize::hasErrors( $emergencyInfo, array( ':emergency_relation' => true, ':emergency_name' => true, ':emeregnecy_phone' => true ), array( ':emergency_relation' => false, ':emergency_name' => false, ':emergency_phone' => false ) );
			
			if( in_array( true, $eErrors ) )
			{
				echo '<p class=error>There are errors in the Emergency information. Please provide all the info asked.</p>';
				return;
			}
		}
		else
		{
			$emergency_id = sanitize::sani( $_POST[ ':emergency_info_id' ], 'INTIGER' );
			
			if( $emergency_id < 1 )
				return;
		}
		
		$emergencyInfo[ ':mID' ] = $this->mMemberID;
		$emergencyInfo[ ':uID' ] = user::getId();
		$classID  = family::addMemberToClass( array( ':cID' => $this->mClassID, ':sID' => $this->mMemberID, ':type' => $this->mOption, ':start' => $classParams[ 'begin' ], ':end' => $classParams[ 'end' ] ) );
			
			if( $classID > 0 )
			{				
				if( !empty( $_POST[ ':contact_info_id' ] ) )
					familyMember::updateAdultContactInfo( $this->mContact );
				else
					familyMember::addAdultContactInfo( $this->mContact );
				
				if( !isset( $_POST[ ':emergency_info_id' ] ) )
					familyMember::addEmergencyContactInfo( $emergencyInfo );
				else
					familyMember::changeEmergencyContactInfo( array( ':eID' => $emergency_id, ':mID' => $this->mMemberID, ':type' => 'Active' ) );

				$cardID = cardModel::add( array( ':uID' => user::getId(), ':name' => $this->mP[ 'name_on_card' ], ':type' => $this->mP[ 'cardType' ], ':number' => $this->mP[ 'cardNumber' ], ':expire_date' => $this->mP[ 'expiration_date' ], ':card_code' => $this->mP[ 'authorization_code' ],
												 ':street' => $this->mP[ 'billing_street' ], ':city' => $this->mP[ 'billing_city' ], ':state' => $this->mP[ 'billing_state' ], ':zip' => $this->mP[ 'billing_zip' ] ) );
				
				$request = paymentModel::accept( array( 'name_on_card' => $this->mP[ 'name_on_card' ], 'cardNumber' => $this->mP[ 'cardName' ], 'cardType' => $this->mP['cardType' ], 
														'expiration_date' => $this->mP[ 'expiration_date' ], ':authorization_code' => $this->mP[ 'authorization_code' ], 
														'billing_street' => $thhis->mP[ 'billing_street' ], 'billing_city' => $this->mP[ 'billing_city' ], 'billing_state' => $this->mP[ 'billing_state' ], 'billing_zip' => $this->mP[ 'billing_zip' ]  ),
												$classInfo, $classParams[ 'begin' ], $classParams[ 'end' ], $this->mOption );
												
				$result = $request->getResult();
				$results = $request->getResultArray();
						
				family::addPayment( array( ':uID' => user::getId(), ':sID' => $this->mMemberID, ':classID' => $this->mClassID, ':cardID' => $cardID, ':payment' => $result == 1?'Paid':'Pending', ':amount' => $classParams[ 'price' ] , ':authorize_results' => $request->getResultString() ) ); 
				
				$memberInfo = family::getMember( array( ':mID' => $this->mMemberID ) );
				
				$message = '<h1 class=bg-success>Registration Complete!</h1><p>Your registration was succesfull!</p><h3>Here is your class registration summary</h3>';
				$message .= '<p>'.$memberInfo[ 'first' ].' '.$memberInfo[ 'last' ].' registered to the following class on '.date( 'l F jS, Y g:ia' ).':</p>';

				$message .= '<p><b>'.$classInfo[ 'title' ].'</b><br/>';
				$message .= '<b>'.$classInfo[ 'weekday' ].'s: '.$classInfo[ 'start_time' ].' to '.$classInfo[ 'end_time' ].'</b><br/>';
				$message .= 'Starting <b>'.date( 'D. M. jS, Y', strtotime( $classParams[ 'begin' ] ) ).'</b> to <b>'.date( 'D M. jS, Y', strtotime( $classParams[ 'end' ] ) ).'</b><br/>';
				$message .= 'Class description:<br/><b>'.$classInfo[ 'description' ].'</b></p><p>Payment information:</p>';

				if( $result === 1 ) //if paid
					$message .= '<p>We charged the following credit card the amount of '.$classParams[ 'price' ].' for the class registration:</p>';
				else //if not paid
					$message .= '<p>We tried to charge the card you provided but it did not go through. We have save the information in our system and you can log in to our system to make the payment.</p>';
					
					$message .= '<p>'.$cardInfo[ 'name' ].'<br/> - '.$cardInfo[ 'last4' ].'</p>';

				classModel::sendRegisteredEmail( array( ':name' => $memberInfo[ 'first_name' ].' '.$memberInfo[ 'last_name' ], ':email' => $memberInfo[ 'email' ], ':message' => $message, 
												':subject' => $classInfo[ 'title' ].' on '.$classInfo[ 'weekday' ].'s at '.date( 'g:ia', strtotime( $classInfo[ 'start_time' ]  )  ).' in the '.$classInfo[ 'season' ].' '.$classInfo[ 'year' ], 
												':uID' => user::getId(), ':sID' => $this->mMemberID, 'pID' => $classInfo[ 'tgp_program_id' ], 'cID' => $classInfo[ 'category_id' ], 'ctID' => $classInfo[ 'title_id' ], 
												'clID' => $this->mClassID ) );
												
			
				$_SESSION[ 'complete' ] = array( 'class_id' => $this->mClassID, 'class_part' => $this->mOption, 'student_id' => $this->mMemberID ) ;
							
				header( 'Location:index.php?action=complete' );
				exit;				
			}
			return;
	
	}
}
?>