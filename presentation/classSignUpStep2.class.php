<?php
class classSignUpStep2
{	
	public $mP = array( 'first_name' => '', 'last_name' => '', 'dob' => '', 'gender' => '',
						'home_phone' => '', 'cell_phone' => '', 'work_phone' => '', 'email' => '', 
						'street' => '', 'street1' => '', 'city' => '', 'state' => '', 'zip' => '',
						'emergency_relation' => '',  'emergency_name' => '', 'emergency_phone' => '' 
						);
						
	public $mReq 	= array( 'first_name' => true, 'last_name' => true, 'dob' => true, 'gender' => true, 
							'adult_fields' => array( 'cell_phone', 'work_phone', 'home_phone' ), 'email' => true, 
							'street' => true, 'street1' => false, 'city' => true, 'state' => true, 'zip' => true,
							'emergency_relation' => true, 'emergency_name' => true, 'emergency_phone' => true);
							
	public $mErrors = array( 'first_name' => false, 'last_name' => false, 'dob' => false, 'gender' => false, 
							'adult_fields' => false, 'email' => false, 
							'street' => false, 'street1' => false, 'city' => false, 'state' => false, 'zip' => false,
							'emergency_relation' => false, 'emergency_name' => false, 'emergency_phone' => false );
	
	public function __construct()
	{
		
		$this->setParameters();
		
		if( isset( $_POST[ 'class_sign_up_adult_step2' ] ) )
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
		if( !isset( $_POST[ 'class_sign_up_adult_step2' ] ) ) 
			return;
			
		$this->mP = sanitize::filterInputs( 'POST', array( 'first_name' => FILTER_SANITIZE_STRING, 'last_name' => FILTER_SANITIZE_STRING, 'dob' => FILTER_SANITIZE_STRING, 'gender' => FILTER_SANITIZE_STRING, 
											'home_phone' => FILTER_SANITIZE_STRING, 'work_phone' => FILTER_SANITIZE_STRING, 'cell_phone' => FILTER_SANITIZE_STRING, 'email' => FILTER_SANITIZE_STRING, 
											'street' => FILTER_SANITIZE_STRING, 'street1' => FILTER_SANITIZE_STRING, 'city' => FILTER_SANITIZE_STRING, 'state' => FILTER_SANITIZE_STRING, 'zip' => FILTER_SANITIZE_STRING,
											'emergency_relation' => FILTER_SANITIZE_STRING, 'emergency_name' => FILTER_SANITIZE_STRING, 'emergency_phone' => FILTER_SANITIZE_STRING	) );
		
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		$this->mErrors = sanitize::hasErrorsOptions( $this->mP, $this->mReq[ 'adult_fields' ], $this->mErrors, 'adult_fields' );
		
		if( in_array( true, $this->mErrors ) )
			return;
			
		$_SESSION[ 'participant_info' ] = $this->mP;
			
		header( 'Location:'.Link::Build( 'index.php?action=classSignUpStep3' ) );
		exit;
	}
	
	private function setParameters()
	{
		$this->mP = helper::getPreviousParameters( $this->mP );
	}
}

?>