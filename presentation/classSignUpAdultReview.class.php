<?php
class classSignUpAdultReview
{
	public $mP = array( 'first_name' => '', 'last_name' => '', 'dob' => '', 'gender' => '',
						'home_phone' => '', 'cell_phone' => '', 'work_phone' => '', 'email' => '', 
						'street' => '', 'street1' => '', 'city' => '', 'state' => '', 'zip' => '',
						'cardType' => '', 'name_on_card' => '', 'cardNumber' => '', 'expiration_date' => '', 'authorization_code' => '',
						'billing_street' => '', 'billing_street1' => '', 'billing_city' => '', 'billing_state' => '', 'billing_zip' => '', 'billing_country' => '' );
						
	public $mReq 	= array( 'first_name' => true, 'last_name' => true, 'dob' => true, 'gender' => true, 
							'adult_fields' => array( 'cell_phone', 'work_phone', 'home_phone' ), 'email' => true, 
							'street' => true, 'street1' => false, 'city' => true, 'state' => true, 'zip' => true,
							'cardType' => true, 'name_on_card' => true, 'cardNumber' => true, 'expiration_date' => true, 'authorization_code' => true,
							'billing_street' => true, 'billing_street1' => true, 'billing_city' => true, 'billing_state' => true, 'billing_zip' => true, 'billing_country' => false );
							
	public $mErrors = array( 'first_name' => false, 'last_name' => false, 'dob' => false, 'gender' => false, 
							'adult_fields' => false, 'email' => false, 
							'street' => false, 'street1' => false, 'city' => false, 'state' => false, 'zip' => false,
							'cardType' => false, 'name_on_card' => false, 'cardNumber' => false, 'expiration_date' => false, 'authorization_code' => false,
							'billing_street' => false, 'billing_street1' => false, 'billing_city' => false, 'billing_state' => false, 'billing_zip' => false, 'billing_country' => false );
	
	public function __construct()
	{
		
		$this->setParameters();
		
		if( isset( $_POST[ 'class_child_sign_up_finalize' ] ) )
			$this->save();		
		
	}
	
	public function save()
	{
		if( !isset( $_POST[ 'class_child_sign_up_finalize' ] ) )
			return;
			
		$this->mP = sanitize::filterInputs( 'POST', array( 'first_name' => FILTER_SANITIZE_STRING, 'last_name' => FILTER_SANITIZE_STRING, 'dob' => FILTER_SANITIZE_STRING, 'gender' => FILTER_SANITIZE_STRING, 
											'home_phone' => FILTER_SANITIZE_STRING, 'work_phone' => FILTER_SANITIZE_STRING, 'cell_phone' => FILTER_SANITIZE_STRING, 'email' => FILTER_SANITIZE_STRING, 
											'street' => FILTER_SANITIZE_STRING, 'street1' => FILTER_SANITIZE_STRING, 'city' => FILTER_SANITIZE_STRING, 'state' => FILTER_SANITIZE_STRING, 'zip' => FILTER_SANITIZE_STRING,
											'emergency_relation' => FILTER_SANITIZE_STRING, 'emergency_name' => FILTER_SANITIZE_STRING, 'emergency_phone' => FILTER_SANITIZE_STRING,
											'cardType' => FILTER_SANITIZE_STRING, 'name_on_card' => FILTER_SANITIZE_STRING, 'cardNumber' => FILTER_SANITIZE_STRING, 'expiration_date' => FILTER_SANITIZE_STRING, 'authorization_code' => FILTER_SANITIZE_STRING,
											'billing_street' => FILTER_SANITIZE_STRING, 'billing_city' => FILTER_SANITIZE_STRING, 'billing_state' => FILTER_SANITIZE_STRING, 'billing_zip' => FILTER_SANITIZE_STRING
											));
											
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		$this->mErrors = sanitize::hasErrorsOptions( $this->mP, $this->mReq[ 'adult_fields' ], $this->mErrors, 'adult_fields' );
		
		if( in_array( true, $this->mErrors ) )
		{
			header( 'Location:'.Link::Build( 'index.php?class=classSignUp&signAdult' ) );
			exit;
		}
			
		//create log-in account
		$uID = user::create( array( ':uEmail' => $this->mP[ 'email' ] ) );
		
		//it will stop if the user is already in the system
		if( $uID < 0 )
			return 0;
		
		//create family members
		$sID = family::addMember( array( ':uID' => $uID, ':first' => $this->mP[ 'first_name' ], ':last' => $this->mP[ 'last_name' ], ':dob' => helper::DOB( $this->mP[ 'dob' ] ), ':gender' => $this->mP[ 'gender' ], ':type' => $_SESSION[ 'register_who' ] ) );
		
		family::addEmergencyContact( array( ':uID' => $uID, ':sID' => $sID, ':name' => $this->mP[ 'emergency_name' ], ':cellPhone' => $this->mP[ 'emergency_phone' ], ':relation' => $this->mP[ 'emergency_relation' ] ) );
		family::addContact( array( ':sID' => $sID, ':hPhone' => $this->mP[ 'home_phone' ], ':wPhone' => $this->mP[ 'work_phone' ],  ':cPhone' => $this->mP[ 'cell_phone' ], ':email' => $this->mP[ 'email' ] ) );
		
		//get class info
		$classInfo = classModel::get( array( ':cID' => $_SESSION[ 'class_info' ][ 'class_id' ] ) );
		
		//9 week price
		$price = $classInfo[ '9WeekPrice' ];
		
		switch( $_SESSION[ 'class_info' ][ 'class_part' ] )
		{
			case 'First':
				$begin = date( 'Y-m-d', strtotime( $classInfo[ 'start_date' ] ) );
				$end = date( 'Y-m-d', strtotime( '+8 weeks', strtotime( $classInfo[ 'start_date' ] ) ) );
				break;
				
			case 'Last':
				$begin = date( 'Y-m-d', strtotime( '+9 weeks', strtotime( $classInfo[ 'start_date'] ) ) );
				$end = date( 'Y-m-d', strtotime( $classInfo[ 'end_date' ] ) );
				break;
				
			default:
				$begin = date( 'Y-m-d', strtotime( $classInfo[ 'start_date' ] ) );
				$end = date( 'Y-m-d', strtotime( $classInfo[ 'end_date' ] ) );
				$price = $classInfo[ 'price' ];
		}
		
		//register member to class
		$classID  = family::addMemberToClass( array( ':cID' => $_SESSION[ 'class_info' ][ 'class_id' ], ':sID' => $sID, ':type' => $_SESSION[ 'class_info' ][ 'class_part' ], ':start' => $begin, ':end' => $end ) );
		
		if( $classID > 0 )
		{
			$cardID = cardModel::add( array( ':uID' => $uID, ':type' => $this->mP[ 'cardType' ], ':name' => $this->mP[ 'name_on_card' ], ':number' => $this->mP[ 'cardNumber' ], ':expire_date' => $this->mP[ 'expiration_date' ], ':card_code' => $this->mP[ 'authorization_code' ], ':street' => $this->mP[ 'billing_street' ], ':city' => $this->mP[ 'billing_city' ], ':state' => $this->mP[ 'billing_state' ], ':zip' => $this->mP[ 'billing_zip' ] ) );
			
			list( $first_name, $last_name ) = explode( " ", $this->mP[ 'name_on_card' ] );
			
			$request = new authorizeModel( array( 'x_invoice_num' => 'CL-'.date( 'Ymd' ).'-'.$classInfo[ 'class_id' ],
								'x_amount' 			=>  $_SESSION[ 'class_info' ][ 'class_part' ] == 'Full' ? $classInfo[ 'price' ] : $classInfo[ '9WeekPrice' ],
								"x_description"		=> $classInfo[ 'title' ].' on '.$classInfo[ 'weekday' ].'s from '.date( 'g:ia', strtotime( $classInfo[ 'start_time' ]  )  ).' to '.date( 'g:ia', strtotime( $classInfo[ 'end_time' ] ) ).' starting '.date( 'D. M. jS, Y', strtotime( $begin ) ).' to '.date( 'D. M. jS, Y', strtotime( $end ) ),
								"x_card_num"		=> $this->mP[ 'cardNumber' ],
								"x_exp_date"		=> $this->mP[ 'expiration_date' ],
								"x_card_code"		=> $this->mP[ 'authorization_code' ],
								"x_first_name"		=> $first_name,
								"x_last_name"		=> $last_name,
								"x_address"			=> $this->mP[ 'billing_street' ],
								"x_city" 			=> $this->mP[ 'billing_city' ],
								"x_state"			=> $this->mP[ 'billing_state' ],
								"x_zip"				=> $this->mP[ 'billing_zip' ]
								) );
						
			$result = $request->getResult();
			$results = $request->getResultArray();
					
			family::addPayment( array( ':uID' => $uID, ':sID' => $sID, ':classID' => $_SESSION[ 'class_info' ][ 'class_id' ], ':cardID' => $cardID, ':payment' => $result == 1?'Paid':'Pending', ':amount' => $price , ':authorize_results' => $request->getResultString() ) ); 

			$message = '<h1 class=bg-success>Registration Complete!</h1><p>Your registration was succesfull!</p><h3>Here is your class registration summary</h3>';
			$message .= '<p>'.$this->mP[ 'first_name' ].' '.$this->mP[ 'last_name' ].' registered to the following class on '.date( 'l F jS, Y g:ia' ).':</p>';

			$message .= '<p><b>'.$classInfo[ 'title' ].'</b><br/>';
			$message .= '<b>'.$classInfo[ 'weekday' ].'s: '.$classInfo[ 'start_time' ].' to '.$classInfo[ 'end_time' ].'</b><br/>';
			$message .= 'Starting <b>'.date( 'D. M. jS, Y', strtotime( $begin ) ).'</b> to <b>'.date( 'D M. jS, Y', strtotime( $end ) ).'</b><br/>';
			$message .= 'Class description:<br/><b>'.$classInfo[ 'description' ].'</b></p><p>Payment information:</p>';

			if( $result === 1 ) //if paid
				$message .= '<p>'.$this->mP[ 'name_on_card' ].'<br/>'.$this->mP[ 'cardType' ].' - '.substr( $this->mP[ 'cardNumber' ], 12, strlen( $this->mP[ 'cardNumber' ] )).'</p>';
			else //if not paid
				$message .= '<p>We tried to charge the card you provided but it did not go through. We have save the information in our system and you can log in to our system to make the payment.</p>';

			classModel::sendRegisteredEmail( array( ':name' => $this->mP[ 'first_name' ].' '.$this->mP[ 'last_name' ], ':email' => $this->mP[ 'email' ], ':message' => $message, 
											':subject' => $classInfo[ 'title' ].' on '.$classInfo[ 'weekday' ].'s at '.date( 'g:ia', strtotime( $classInfo[ 'start_time' ]  )  ).' in the '.$classInfo[ 'season' ].' '.$classInfo[ 'year' ], 
											':uID' => $uID, ':sID' => $sID, 'pID' => $classInfo[ 'tgp_program_id' ], 'cID' => $classInfo[ 'category_id' ], 'ctID' => $classInfo[ 'title_id' ], 
											'clID' => $_SESSION[ 'class_info' ][ 'class_id' ] ) );
											
		
			$_SESSION[ 'complete' ] = array( 'class_id' => $_SESSION[ 'class_info' ][ 'class_id' ], 'class_part' => $_SESSION[ 'class_info' ][ 'class_part' ], 'student_id' => $sID ) ;
			
			unset( $_SESSION[ 'register' ] );
			unset( $_SESSION[ 'class_info' ] );
			unset( $_SESSION[ 'register_who' ] );
			
			header( 'Location:index.php?action=complete' );
			exit;
		
		}
	}

	private function setParameters()
	{
		$this->mP = helper::getPreviousParameters( $this->mP );
	}	
}
?>
