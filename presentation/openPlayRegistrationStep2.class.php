<?php
class openPlayRegistrationStep2
{
	public $mP 		= array( 'first_name' => '', 'last_name' => '', 'dob' => '', 'gender' => '', 'parent1_name' => '', 'parent1_cell_phone' => '', 'parent1_work_phone' => '', 'parent1_email' => '', 'parent2_name' => '', 'parent2_cell_phone' => '', 'parent2_work_phone' => '', 'parent2_email' => '', 'street' => '', 'street1' => '', 'city' => '', 'state' => '', 'zip' => '', 'emergency_relation' => '', 'emergency_name' => '', 'emergency_phone' => '', 'caregiver_name' => '', 'caregiver_phone' => '' );
	
	public $mReq 	= array( 'first_name' => true, 'last_name' => true, 'dob' => true, 'gender' => true, 
								'parent1_name' => true, 'parent1_fields' => array( 'parent1_cell_phone', 'parent1_work_phone' ), 'parent1_email' => true, 
								'parent2_name' => true, 'parent2_fields' => array( 'parent2_cell_phone', 'parent2_work_phone' ), 'parent2_email' => true,  
								'street' => true, 'street1' => false, 'city' => true, 'state' => true, 'zip' => true, 
								'emergency_relation' => true, 'emergency_name' => true, 'emergency_phone' => true );
	public $mErrors = array( 'first_name' => false, 'last_name' => false, 'dob' => false, 'gender' => false, 
								'parent1_name' => false, 'parent1_fields' => false, 'parent1_email' => false, 
								'parent2_name' => false, 'parent2_fields' => false, 'parent2_email' => false,
								'street' => false, 'street1' => false, 'city' => false, 'state' => false, 'zip' => false,
								'emergency_relation' => false, 'emergency_name' => false, 'emergency_phone' => false );
	
	public function __construct()
	{
		$this->checkVariables();
		
		if( isset( $_POST[ 'tgp_openplay_registration_step2' ] ) )
			$this->save();
	}
	
	public function init()
	{
		$this->mP = helper::getPreviousParameters( $this->mP );
		
		$this->mClasses = openPlayModel::getClasses( array( ':opID' => $this->mOpenPlayID ) );
		$this->mPackage = openPlayModel::getPackage( array( ':pID' => $this->mPackageID ) );
		$this->mRelation = $_SESSION[ 'register_who' ];
		
	}
	
	private function save()
	{
		if( !isset( $_POST[ 'tgp_openplay_registration_step2' ] ) )
			return;
			
		$this->mP = sanitize::filterInputs( 'POST', array( 'first_name' => FILTER_SANITIZE_STRING, 'last_name' => FILTER_SANITIZE_STRING, 'dob' => FILTER_SANITIZE_STRING, 'gender' => FILTER_SANITIZE_STRING, 
												'parent1_name' => FILTER_SANITIZE_STRING, 'parent1_cell_phone' => FILTER_SANITIZE_STRING, 'parent1_work_phone' => FILTER_SANITIZE_STRING, 'parent1_email' => FILTER_SANITIZE_STRING,
												'parent2_name' => FILTER_SANITIZE_STRING, 'parent2_cell_phone' => FILTER_SANITIZE_STRING, 'parent2_work_phone' => FILTER_SANITIZE_STRING, 'parent2_email' => FILTER_SANITIZE_STRING,
												'street' => FILTER_SANITIZE_STRING, 'street1' => FILTER_SANITIZE_STRING, 'city' => FILTER_SANITIZE_STRING, 'state' => FILTER_SANITIZE_STRING, 'zip' => FILTER_SANITIZE_STRING,
												'emergency_relation' => FILTER_SANITIZE_STRING, 'emergency_name' => FILTER_SANITIZE_STRING, 'emergency_phone' => FILTER_SANITIZE_STRING,
												'caregiver_name' => FILTER_SANITIZE_STRING, 'caregiver_phone' => FILTER_SANITIZE_STRING 
										));
		
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		if( in_array( true, $this->mErrors ) )
			return;
		
		$_SESSION[ 'participant_info' ] = $this->mP;
		
		header( 'Location:'.Link::Build( 'openplay-'.$this->mOpenPlayID.'/register/package-'.$this->mPackageID.'/step3' ) );
		exit;
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
	}
}
?>