<?php
class openPlayRegister
{
	public $mP 		= array( 'relation' => '' );
	public $mErrors = array( 'relation' => false );
	public $mReq 	= array( 'relation' => true );
	public $mOPInfo;
	
	public $mOpenPlayID;
	public $mPackageID;
	
	public function __construct()
	{
		$this->checkVariables();	
		
		if( isset( $_POST[ 'tgp_op_sign_up_continue' ] ) )
			$this->save();
	}
	
	public function init()
	{
		$this->mClasses = openPlayModel::getClasses( array( ':opID' => $this->mOpenPlayID ) );
		$this->mPackage = openPlayModel::getPackage( array( ':pID' => $this->mPackageID ) );
	}
	
	private function checkVariables()
	{
		if( !isset( $_GET[ 'tgp_openplay_id' ] ) )
		{
			header( 'Location:'.Link::Build( 'index.php?action=weekly' ) );
			exit;
		}		
		
		$this->mOpenPlayID = sanitize::sani( $_GET[ 'tgp_openplay_id' ], 'INTIGER' );
		$this->mPackageID = sanitize::sani( $_GET[ 'tgp_package_id' ], 'INTIGER' );
		$this->mSeasonID = sanitize::sani( $_GET[ 'tgp_season_id' ], 'INTIGER' );
	}
	
	private function save()
	{
		if( !isset( $_POST[ 'tgp_op_sign_up_continue' ] ) )
			return;
		
		if( isset( $_POST[ 'tgp_op_relation' ] ) )
			$this->mP[ 'relation' ] = sanitize::sani( $_POST[ 'tgp_op_relation' ], 'STRING' );
		
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		if( in_array( true, $this->mErrors )  )
			return;
		
		$_SESSION[ 'register_who' ] = $this->mP[ 'relation' ];
		$_SESSION[ 'open_play' ] = array( 'opID' => $this->mOpenPlayID, 'package_id' => $this->mPackageID, 'season_id' => $this->mSeasonID );
		
		header( 'Location:'.Link::Build( 'openplay-'.$this->mOpenPlayID.'/register/package-'.$this->mPackageID.'/step1' ) );
		exit;
	}
}
?>