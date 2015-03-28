<?php
class classSignAdult
{
	public $mP 		= array( 'first_name' => '', 'last_name' => '', 'dob' => '', 'gender' => '', 
							'homePhone' => '', 'cellPhone' => '', 'workPhone' => '', 'email' => '', 
							'street' => '', 'street1' => '', 'city' => '', 'state' => '', 'zip' => '' );
	public $mReq 	= array( 'first_name' => true, 'last_name' => true, 'dob' => true, 'gender' => true, 
							'adult_fields' => array( 'cellPhone', 'workPhone', 'homePhone' ), 'email' => true, 
							'street' => true, 'street1' => false, 'city' => true, 'state' => true, 'zip' => true );
	public $mErrors = array( 'first_name' => false, 'last_name' => false, 'dob' => false, 'gender' => false, 
							'adult_fields' => false, 'email' => false, 
							'street' => false, 'street1' => false, 'city' => false, 'state' => false, 'zip' => false );
	
	public $mFirstStep = false;
	public $mSecondStep = false;
	public $mThirdStep = false;
	public $mLastStep = false;
	
	public function __construct()
	{
		if( isset( $_GET[ 'signAdult' ] ) )			
			$this->mFirstStep = true;

		if( isset( $_POST[ 'class_sign_up_adult_step1' ] ) )
			$this->saveStep1();						
	}
	
	public function init()
	{
		$this->mRelation = 'Myself';
		$this->mClassInfo = classModel::get( array( ':cID' => sanitize::sani( $_SESSION[ 'class_info' ][ 'class_id' ], 'INTIGER' ) ) );
		$this->mClassInfo = helper::getClassParameters( sanitize::sani( $_SESSION[ 'class_info' ][ 'class_part' ], 'STRING' ), $this->mClassInfo );
		
	}
	
	private function saveStep1()
	{
		if( !isset( $_POST[ 'class_sign_up_adult_step1' ] ) )
			return;
		
		$this->mP = sanitize::filterInputs( 'POST', array( 'first_name' => FILTER_SANITIZE_STRING, 'last_name' => FILTER_SANITIZE_STRING, 'dob' => FILTER_SANITIZE_STRING, 'gender' => FILTER_SANITIZE_STRING ) );
		
		
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		if( in_array( true, $this->mErrors ) )
		{
			$this->mFirstStep = true;
			return;
		}
		
		$_SESSION[ 'participant_info' ] = $this->mP;
		
		header( 'Location:'.Link::Build( 'index.php?action=classSignUpStep2' ) );
		exit;
	}	
	
}
?>