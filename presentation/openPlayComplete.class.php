<?php
class openPlayComplete
{
	public $mOpenPlay, $mStudent, $mPackage, $mClasses;
	public $mOpenPlayID, $mStudentID, $mPackageID;
	
	public function __construct()
	{
		$this->getSessionVariables();		
	}
	
	public function init()
	{
		$this->mOpenPlay = openPlayModel::get( array( ':opID' => $this->mOpenPlayID ) );
		$this->mStudent = student::get( array( ':sID' => $this->mStudentID ) );
		$this->mPackage = PackageModel::get( array( ':pOPID' => $this->mPackageID ) );		
		$this->mClasses = openPlayModel::getClasses( array( ':opID' => $this->mOpenPlayID ) );
		$this->mCreditCard = cardModel::getThrouhOpenPlayPayment( array( ':rID' => $this->mOpenPlayID, ':sID' => $this->mStudentID ) );
		
		$user = user::get( array( ':sID' => $this->mStudentID ) );
		//print_r( $user );
	}
	
	private function getSessionVariables()
	{
		$this->mOpenPlayID 	= sanitize::sani( $_SESSION[ 'open_play_info' ][ 'id' ], 'INTIGER' );
		$this->mStudentID 	= sanitize::sani( $_SESSION[ 'open_play_info' ][ 'student_id' ], 'INTIGER' );
		$this->mPackageID 	= sanitize::sani( $_SESSION[ 'open_play_info' ][ 'package_id' ], 'INTIGER' );
	}
}
?>