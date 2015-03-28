<?php
class updateAddress
{
	public $mAddress;
	
	public $mStudentID;
	

	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
						
		if( isset( $_POST[ 'tgp_student_address_update' ] ) )
			$this->updateAddress();
	}
	
	public function init()
	{
		$this->mAddress = administrator::getStudentAddress( $this->mStudentID );		
		$this->mLinkToCancel = Link::Build( 'admin/students/'.$this->mStudentID );
	}
	
	private function updateAddress( )
	{
		if( !isset( $_POST[ 'tgp_student_address_update' ] ) )
			return;
			
		$id 	= sanitize::sani( $_POST[ 'tgp_student_address_id' ], 'INTIGER' );
		$street = sanitize::sani( $_POST[ 'tgp_student_address_street' ], 'STRING'  );
		$city 	= sanitize::sani( $_POST[ 'tgp_student_address_city' ], 'STRING' );
		$state 	= sanitize::sani( $_POST[ 'tgp_student_address_state' ], 'STRING' );
		$zip 	= sanitize::sani( $_POST[ 'tgp_student_address_zip' ], 'INTIGER' );
		
		student::updateAddress( $this->mStudentID, $id, $street, $city, $state, $zip );
		
		helper::redirect( 'admin/students/'.$this->mStudentID );
	}
	
	public function __destruct()
	{
	
	}
}
?>