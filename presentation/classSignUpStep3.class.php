<?php
class classSignUpStep3
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
							'home_phone' => false, 'work_phone' => false, 'cell_phone' => false, 'email' => false, 
							'street' => false, 'street1' => false, 'city' => false, 'state' => false, 'zip' => false,
							'cardType' => false, 'name_on_card' => false, 'cardNumber' => false, 'expiration_date' => false, 'authorization_code' => false,
							'billing_street' => false, 'billing_street1' => false, 'billing_city' => false, 'billing_state' => false, 'billing_zip' => false, 'billing_country' => false );
	
	public function __construct()
	{
		$this->setParameters();
		
		if( isset( $_POST[ 'class_sign_up_adult_step3' ]  ) )
			$this->save();
	}

	public function init()
	{
		$this->mRelation = 'Myself';
		$this->mClassInfo = classModel::get( array( ':cID' => sanitize::sani( $_SESSION[ 'class_info' ][ 'class_id' ], 'INTIGER' ) ) );
		$this->mClassInfo = helper::getClassParameters( sanitize::sani( $_SESSION[ 'class_info' ][ 'class_part' ], 'STRING' ), $this->mClassInfo );		
	}
	
	private function save()
	{
		if( !isset( $_POST[ 'class_sign_up_adult_step3' ] ) )
			return;
			
		$this->mP = sanitize::filterInputs( 'POST', array( 'first_name' => FILTER_SANITIZE_STRING, 'last_name' => FILTER_SANITIZE_STRING, 'dob' => FILTER_SANITIZE_STRING, 'gender' => FILTER_SANITIZE_STRING, 
											'home_phone' => FILTER_SANITIZE_STRING, 'work_phone' => FILTER_SANITIZE_STRING, 'cell_phone' => FILTER_SANITIZE_STRING, 'email' => FILTER_SANITIZE_STRING, 
											'street' => FILTER_SANITIZE_STRING, 'street1' => FILTER_SANITIZE_STRING, 'city' => FILTER_SANITIZE_STRING, 'state' => FILTER_SANITIZE_STRING, 'zip' => FILTER_SANITIZE_STRING,
											'emergency_relation' => FILTER_SANITIZE_STRING, 'emergency_name' => FILTER_SANITIZE_STRING, 'emergency_phone' => FILTER_SANITIZE_STRING,
											'cardType' => FILTER_SANITIZE_STRING, 'name_on_card' => FILTER_SANITIZE_STRING, 'cardNumber' => FILTER_SANITIZE_STRING, 'expiration_date' => FILTER_SANITIZE_STRING, 'authorization_code' => FILTER_SANITIZE_STRING,
											'billing_street' => FILTER_SANITIZE_STRING, 'billing_city' => FILTER_SANITIZE_STRING, 'billing_state' => FILTER_SANITIZE_STRING, 'billing_zip' => FILTER_SANITIZE_STRING
											));
											
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		if( in_array( true, $this->mErrors ) )
			return;
			
		$_SESSION[ 'participant_info' ] = $this->mP;
			
		header( 'Location:'.Link::Build( 'index.php?action=classSignUpAdultReview' ) );
		exit;

	}
	
	private function setParameters()
	{
		$this->mP = helper::getPreviousParameters( $this->mP );
	}
}
?>