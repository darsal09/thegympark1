<?php
class openPlayRegistrationStep1
{
	public $mErrors = array( 'first_name' => false, 'last_name' => false, 'gender' => false, 'dob' => false );
	public $mP = array( 'first_name' => '', 'last_name' => '', 'gender' => '', 'dob' => '' );
	public $mReq = array( 'first_name' => true, 'last_name' => true, 'gender' => true, 'dob' => true );
	
	public function __construct()
	{
		$this->checkVariables();
		
		if( isset( $_POST[ 'tgp_openplay_registration_step1' ] ) )
			$this->save();
	}
	
	public function init()
	{
		$this->mClasses = openPlayModel::getClasses( array( ':opID' => $this->mOpenPlayID ) );
		$this->mPackage = openPlayModel::getPackage( array( ':pID' => $this->mPackageID ) );
		$this->mRelation = $_SESSION[ 'register_who' ];
	}
	
	
	private function save()
	{
		if( !isset( $_POST[ 'tgp_openplay_registration_step1' ] ) )
			return;
			
		$this->mP = sanitize::filterInputs( 'POST', array( 'first_name' => FILTER_SANITIZE_STRING, 'last_name' => FILTER_SANITIZE_STRING, 'dob' => FILTER_SANITIZE_STRING, 'gender' => FILTER_SANITIZE_STRING ) );
		
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		if( in_array( true, $this->mErrors ) )
			return;
			
		$_SESSION[ 'participant_info' ] = $this->mP;
		
		header( 'Location:'.Link::Build( 'openplay-'.$this->mOpenPlayID.'/register/package-'.$this->mPackageID.'/step2' ) );
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