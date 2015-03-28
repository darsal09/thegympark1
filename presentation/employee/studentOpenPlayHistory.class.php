<?php
class studentOpenPlayHistory
{
	public $mParticipant;
	public $mStudentID;
	public $mHistory;
	public $mPackages;
	public $mStudentPackages;
	
	public $mLinkToTakeAttendance;
	public $mLinkToRemove;
	public $mLinkToUpdateStudentPackage;
	public $mLinkToPayCash;
	
	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_student_id' ] ) )
			helper::redirect( 'employee/open-plays/current' );
		
		if( isset( $_GET[ 'tgp_openplay_id' ] ) )
			$this->mOpenPlay = openPlayModel::get( array( ':opID' => sanitize::sani( $_GET[ 'tgp_openplay_id' ], 'INTIGER' ) ) );
		else
			$this->mOpenPlay 		= openPlayModel::getCurrent();
			
		
		$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
	}
	
	public function init()
	{				
		$this->mParticipant 	= student::get( array( ':sID' => $this->mStudentID ) );
		
		$this->mStudentPackages = openPlayModel::getStudentPackages( array( ':sID' => $this->mStudentID ) );		
		
		$this->mHistory 		= openPlayModel::getStudentHistory( array( ':opID' => $this->mOpenPlay[ 'id' ], ':sID' => $this->mStudentID ) );
		$this->mAmount 			= openPlayModel::getStudent( array( ':opID' => $this->mOpenPlay[ 'id' ], ':sID' => $this->mStudentID ) ); 
		$this->mClass			= openPlayModel::getCurrentSession( array( ':opID' => $this->mOpenPlay[ 'openplayID' ] ) );
		$this->mPackages		= openPlaysModel::getPackages( array(  ':type' => 'Individual' ) );
		
		$this->mLinkToTakeAttendance		= Link::Build( 'api/employee/openPlay/takeOpenPlayAttendance.php' );
		$this->mLinkToRemove 				= Link::Build( 'api/employee/openPlay/removeOpenPlayAttendance.php' );
		$this->mLinkToAddPackage 			= Link::Build( 'api/employee/openPlay/addPackage.php' );
		$this->mLinkToSendPayment			= Link::Build( 'api/employee/openPlay/takePayment.php' ); //use addOpenPlayPayment.php to use a credit card
		$this->mLinkToRemovePackage			= Link::Build( 'api/employee/openPlay/removePackage.php' );
		$this->mLinkToOpenPlay				= Link::Build( 'employee/open-plays/current/'.$this->mOpenPlay[ 'openplayID' ] );
		$this->mLinkToUpdateStudentPackage 	= Link::Build( 'api/employee/openPlay/updateStudentPackage.php' );
		$this->mLinkToPayCash				= Link::Build( 'api/employee/openPlay/paidCash.php' );
		
		$this->setAttendance();
		
	}
	
	public function setAttendance()
	{
		$P = &$this->mStudentPackages;
		$size = sizeof( $P );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$P[ $i ][ 'attendance' ] = packageModel::getStudentAttendance( array( ':sID' => $this->mStudentID, ':pID' => $P[ $i ][ 'package_id' ], ':opStudentID' => $P[ $i ][ 'id' ] ) );
			$P[ $i ][ 'used' ] = sizeof( $P[ $i ][ 'attendance' ] );
		}
	}
}
?>