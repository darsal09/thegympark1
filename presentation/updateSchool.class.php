<?php
class updateSchool
{
	public $mSchool;
	public $mStudentID;
	

	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = intval( sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' ) );
		
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' ) );
		
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = intval( sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' ) );
			
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = intval( sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' ) );
		
		if( isset( $_POST[ 'tgp_student_school_update_cancel' ] ) )
		{
			header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent#school' ) );
			exit;
		}
		
		if( isset( $_POST[ 'tgp_student_school_update' ] ) )
			$this->updateSchool();
	}
	
	public function init()
	{
		$this->mSchool = administrator::getStudentSchool( $this->mStudentID );
	}
	
	private function updateSchool()
	{
		if( !isset( $_POST[ 'tgp_student_school_update' ] ) )
			return;
		
		$id 	= sanitize::sani( $_POST[ 'tgp_student_school_id' ], 'INTIGER' );
		$name 	= sanitize::sani( $_POST[ 'tgp_student_school_name' ], 'STRING' );
		$grade 	= sanitize::sani( $_POST[ 'tgp_student_school_grade' ], 'STRING' );
		
		student::updateSchool( $this->mStudentID, $id, $name, $grade );
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent#school' ) );
		exit;
	}
	
	public function __destruct()
	{
	
	}
}
?>