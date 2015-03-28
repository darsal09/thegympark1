<?php
class removeClass
{
	public $mStudentID;
	public $mClassID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
				
		if( isset( $_POST[ 'tgp_remove_class' ] ) )
			$this->removeClass();
	
	}
	
	public function init()
	{
		$this->mClass = classModel::get( array( ':cID' => $this->mClassID ) );
		$this->mStudent = student::get( array( ':sID' => $this->mStudentID ) );
		
		$this->mLinkToCancel = Link::Build( 'admin/' );
	}
	
	private function removeClass()
	{	
		if( !isset( $_POST[ 'tgp_remove_class' ] ) )
			return;
	
		echo '<p>Removing class...</p>';
		
			$this->mP[ 'sID' ] = $this->mStudentID;
			$this->mP[ 'cID' ] = $this->mClassID;
			
			student::removeClass( $this->mP );
		
		echo '<p>Class was remove from participant</p>';
		
		echo '<p><a href="'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent' ).'">Back to student information page</a></p>';
		exit;
	}
	
	public function __destruct()
	{
	
	}
}
?>