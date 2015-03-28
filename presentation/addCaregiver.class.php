<?php
class addCaregiver
{
	public $mStudentID;
		
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = intval( $_GET[ 'tgp_student_id' ] );
			
		if( isset( $_POST[ 'tgp_student_caregiver_add' ] ) )
			$this->addCaregiver();
	}
	
	public function init()
	{
	
	}
	
	private function addCaregiver()
	{
		if( !isset( $_POST[ 'tgp_student_caregiver_add' ] )  )
			return;
					
		//school
		$name = sanitize::sani( $_POST[ 'tgp_student_caregiver_name' ], 'STRING' );
		$phone  = sanitize::sani( $_POST[ 'tgp_student_caregiver_phone' ], 'STRING' );
			
		student::addCaregiver( $this->mStudentID, $name, $phone );
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent#caregiver' ) );
		exit;
	}
	
	public function __destruct()
	{
	
	}
}
?>