<?php
class addAddress
{
	public $mP 			= array( ':sID' => '', ':street' => '', ':city' => '', ':state' => '', ':zip' => '' );
	public $mErrors 	= array( ':sID' => false, ':street' => false, ':city' => false, ':state' => false, ':zip' => false );
	
	public $mStudentID;
	
	private $_mRequired = array( ':sID' => true, ':street' => true, ':city' => true, ':state' => true, ':zip' => true );
	
	public function __construct()
	{
		
		if( !$this->setParameters() )
			exit;
		
		if( isset( $_POST[ 'tgp_student_address_add' ] ) )
			$this->saveAddress();
	}
	
	public function init()
	{
	
	}
	
	private function setParameters()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = intval( sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' ) );
		
		if( $this->mStudentID < 1 )
			return false;
		
		return true;
	}
	
	private function saveAddress()
	{
		if( !isset( $_POST[ 'tgp_student_address_add' ] ) )
			return;
			
		$this->mP[ ':sID' ] 	= $this->mStudentID;	
		$this->mP[ ':street' ] 	= sanitize::sani( $_POST[ 'tgp_student_address_street' ], 'STRING' );
		$this->mP[ ':city' ] 	= sanitize::sani( $_POST[ 'tgp_student_address_city' ], 'STRING' );
		$this->mP[ ':state' ] 	= sanitize::sani( $_POST[ 'tgp_student_address_state' ], 'STRING' );
		$this->mP[ 'zip' ] 		= sanitize::sani( $_POST[ 'tgp_student_address_zip' ], 'STRING' );
		
		$result = student::addAddress( $this->mP );
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent#address' ) );
		exit;		
	}
	
	public function __destruct()
	{
	
	}
}
?>