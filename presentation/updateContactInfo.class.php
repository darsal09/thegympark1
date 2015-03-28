<?php
class updateContactInfo
{
	public $mAddress;
	
	public $mStudentID;
	public $mProgramID;
	public $mCategoryID;
	public $mClassID;
	

	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = intval( sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' ) );
		
		if( isset( $_POST[ 'tgp_student_contact_update' ] ) )
			$this->updateContactInfo();
	}
	
	public function init()
	{
		$this->mContact = administrator::getStudentContactInfo( $this->mStudentID );		
		
		$this->mLinkToCancel = Link::Build( 'admin/students/'.$this->mStudentID );
	}
	
	private function updateContactInfo( )
	{
		if( !isset( $_POST[ 'tgp_student_contact_update' ] ) )
			return;
			
		$id 		= sanitize::sani( $_POST[ 'tgp_student_contact_id' ], 'INTIGER' );
		$hPhone	 	= sanitize::sani( $_POST[ 'tgp_student_contact_homePhone' ], 'STRING'  );
		$cPhone 	= sanitize::sani( $_POST[ 'tgp_student_contact_cellPhone' ], 'STRING' );
		$email 		= sanitize::sani( $_POST[ 'tgp_student_contact_email' ], 'EMAIL' );
		
		student::updateContactInfo( $this->mStudentID, $id, $hPhone, $cPhone, $email );
		
		helper::redirect( 'admin/students/'.$this->mStudentID );
	}
	
	public function __destruct()
	{
	
	}
}
?>