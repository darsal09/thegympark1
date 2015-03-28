<?php
class addStudentToOpenPlay
{
	public $mPackages;
	public $mStudentID;
	
	public function __construct()
	{
		$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER'  );
			
		if( isset( $_GET[ 'tgp_openplay_package_id' ] ) )
			$this->save();
	}
	
	public function init()
	{
		$this->mPackages = openPlaysModel::getPackages( array( ':type' => 'Individual'  ) );
		
		$this->setLinks();
	}
	
	public function setLinks()
	{
		$P = &$this->mPackages;
		$size = sizeof( $P );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$P[ $i ][ 'link' ] = Link::Build( 'employee/open-plays/current/students/'.$this->mStudentID.'/add/'.$P[ $i ][ 'id' ] );
		}
	}
	
	private function save()
	{
		$this->mOpenPlay = openPlayModel::getCurrent();
		
		$this->mPackageID = sanitize::sani( $_GET[ 'tgp_openplay_package_id' ], 'INTIGER' );
		$this->mPackage = packageModel::get( array( ':pOPID' => $this->mPackageID ) );
		
		$id = openPlayModel::addStudent( array( ':opID' => $this->mOpenPlay[ 'id' ], ':sID' => $this->mStudentID, ':pID' => $this->mPackageID, ':Amount' =>  $this->mPackage[ 'amount' ], ':price' => $this->mPackage[ 'price' ], ':status' => 'Pending' ) );
		
		helper::redirect( 'employee/open-plays/current/students/'.$this->mStudentID.'/add/'.$this->mPackageID.'/payment/'.$id );
	}
}
?>