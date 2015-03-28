<?php
class openPlayRegistrationFinal
{
	public $mP 		= array( 'first_name' => '', 'last_name' => '', 'dob' => '', 'gender' => '', 
							'parent1_name' => '', 'parent1_cell_phone' => '', 'parent1_work_phone' => '', 'parent1_email' => '', 
							'parent2_name' => '', 'parent2_cell_phone' => '', 'parent2_work_phone' => '', 'parent2_email' => '', 
							'street' => '', 'street1' => '', 'city' => '', 'state' => '', 'zip' => '' ,
							'emergency_name' => '', 'emergency_relation' => '', 'emergency_phone' => '', 
							'caregiver_name' => '', 'caregiver_phone' => '',
							'school_name' => '', 'school_grade' => '',
							'cardType' => '', 'name_on_card' => '', 'cardNumber' => '', 'expiration_date' => '', 'authorization_code' => '',
							'billing_street' => '', 'billing_city' => '', 'billing_state' => '', 'billing_zip' => '' );
							
	public $mReq 	= array( 'first_name' => true, 'last_name' => true, 'dob' => true, 'gender' => true, 
							'parent1_name' => true, 'parent1_fields' => array( 'parent1_cell_phone', 'parent1_work_phone', 'parent1_email' ), 
							'parent2_name' => true, 'parent2_fields' => array( 'parent2_cell_phone', 'parent2_work_phone', 'parent2_email' ),  
							'street' => true, 'street1' => false, 'city' => true, 'state' => true, 'zip' => true,
							'emergency_relation' => true, 'emergency_name' => true, 'emergency_phone' =>  true,
							'caregiver_name' => false, 'caregiver_phone' => false,
							'school_name' => false, 'school_grade' => false,
							'cardType' => true, 'name_on_card' => true, 'cardNumber' => true, 'expiration_date' => true, 'authorization_code' => true, 
							'biling_street' => true, 'billing_city' => true, 'billing_state' => true, 'billing_zip' => true );
							
	public $mErrors = array( 'first_name' => false, 'last_name' => false, 'dob' => false, 'gender' => false, 
							'parent1_name' => false, 'parent1_fields' => false, 'parent2_name' => false, 'parent2_fields' => false, 
							'street' => false, 'street1' => false, 'city' => false, 'state' => false, 'zip' => false,
							'emergency_relation' => false, 'emergency_name' => false, 'emergency_phone' => false,
							'caregiver_name' => false, 'caregiver_phone' => false,
							'school_name' => false, 'school_grade' => '',
							'cardType' => false, 'name_on_card' => false, 'cardNumber' => false, 'expiration_date' => false, 'authorization_code' => false,
							'biling_street' => false, 'billing_city' => false, 'billing_state' => false, 'billing_zip' => false );
	public $mSeason;
	
	public $mOPInfo;
	
	public function __construct()
	{
		$this->checkVariables();

		if( isset( $_POST[ 'tgp_openplay_registration_finalize' ] ) )
			$this->save();
	}
	
	public function init()
	{
		
		$this->mP = helper::getPreviousParameters( $this->mP );
		$this->mClasses = openPlayModel::getClasses( array( ':opID' => $this->mOpenPlayID ) );
		$this->mPackage = openPlayModel::getPackage( array( ':pID' => $this->mPackageID ) );
		$this->mRelation = $_SESSION[ 'register_who' ];
		$this->mSeason = seasonModel::get( $this->mSeasonID );
	}
	
	
	private function save()
	{
		if( !isset( $_POST[ 'tgp_openplay_registration_finalize' ] ) )
			return;
			
		$this->mP = sanitize::filterInputs( 'POST', array( 'first_name' => FILTER_SANITIZE_STRING, 'last_name' => FILTER_SANITIZE_STRING, 'dob' => FILTER_SANITIZE_STRING, 'gender' => FILTER_SANITIZE_STRING, 
												'parent1_name' => FILTER_SANITIZE_STRING, 'parent1_cell_phone' => FILTER_SANITIZE_STRING, 'parent1_home_phone' => FILTER_SANITIZE_STRING, 'parent1_work_phone' => FILTER_SANITIZE_STRING, 'parent1_email' => FILTER_SANITIZE_STRING,
												'parent2_name' => FILTER_SANITIZE_STRING, 'parent2_cell_phone' => FILTER_SANITIZE_STRING, 'parent2_home_phone' => FILTER_SANITIZE_STRING, 'parent2_work_phone' => FILTER_SANITIZE_STRING, 'parent2_email' => FILTER_SANITIZE_STRING,
												'street' => FILTER_SANITIZE_STRING, 'street1' => FILTER_SANITIZE_STRING, 'city' => FILTER_SANITIZE_STRING, 'state' => FILTER_SANITIZE_STRING, 'zip' => FILTER_SANITIZE_STRING,
												'emergency_relation' => FILTER_SANITIZE_STRING, 'emergency_name' => FILTER_SANITIZE_STRING, 'emergency_phone' => FILTER_SANITIZE_STRING,
												'school_name' => FILTER_SANITIZE_STRING, 'school_grade' => FILTER_SANITIZE_STRING,
												'caregiver_name' => FILTER_SANITIZE_STRING, 'caregiver_phone' => FILTER_SANITIZE_STRING,	
												'cardType' => FILTER_SANITIZE_STRING, 'name_on_card' => FILTER_SANITIZE_STRING, 'cardNumber' => FILTER_SANITIZE_STRING, 'expiration_date' => FILTER_SANITIZE_STRING, 'authorization_code' => FILTER_SANITIZE_STRING,
												'billing_street' => FILTER_SANITIZE_STRING, 'billing_city' => FILTER_SANITIZE_STRING, 'billing_state' => FILTER_SANITIZE_STRING, 'billing_zip' => FILTER_SANITIZE_STRING
										));
		
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		if( in_array( true, $this->mErrors ) )
			return;
			
		/*
			If no errors continue to create a user acount
			add the family members: 1st parent and child
			add child information 
			add credit card
			add payment information
			add child to class
		*/
		
		$register_who = sanitize::sani( $_SESSION[ 'register_who' ], 'STRING' );
		
		$child = new child( $this->mP, array( 'id' => $this->mOpenPlayID, 'option' => $this->mPackageID, 'type' => 'Open Play' ), $register_who );
		
		try
		{
			if( !$child->signUp() )
			return;
	
			$_SESSION[ 'open_play_info' ] = array( 'id' => $this->mOpenPlayID, 'package_id' => $this->mPackageID, 'student_id' => $child->getID() );
			
			unset( $_SESSION[ 'participant_info' ] );
			
			header( 'Location:'.Link::Build( 'openplay-'.$this->mOpenPlayID.'/register/package-'.$this->mPackageID.'/complete' ) );
			exit;
		}
		catch( Exception $e )
		{
			print_r( $e->getMessage() );
			return;
		}
	
	}
	
	private function checkVariables()
	{
		if( !isset( $_SESSION[ 'open_play' ] ) || !isset( $_SESSION[ 'open_play' ][ 'opID' ] ) || !isset( $_SESSION[ 'open_play' ][ 'package_id' ] ) )
		{
			header( 'Location:'.Link::Build( 'index.php?action=weekly' ) );
			exit;
		}
		
		$this->mOpenPlayID = sanitize::sani( $_SESSION[ 'open_play' ][ 'opID' ], 'INTIGER' );
		$this->mPackageID = sanitize::sani( $_SESSION[ 'open_play' ][ 'package_id' ], 'INTIGER' );
		$this->mSeasonID = sanitize::sani( $_SESSION[ 'open_play' ][ 'season_id' ], 'INTIGER' );
	}
}
?>