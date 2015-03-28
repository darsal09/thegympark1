<?php
class removeParticipant
{
	public $mProgramID, $mCategoryID, $mClassGroupID, $mClassID, $mStudentID;

	public function __construct()
	{
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->mClassGroupID = sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
		
		$this->removeParticipantFromClass();
		
	}
		
	private function removeParticipantFromClass()
	{
		if( classModel::removeParticipant( array( ':cID' => $this->mClassID, ':sID' => $this->mStudentID ) ) )
		{
			header( 'Location:'.Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/class-info/'.$this->mClassID ) );
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>