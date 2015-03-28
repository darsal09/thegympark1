<?php
class openPlayStudentHistory
{
	public $mStudentID;
	public $mOpenPlayID;
	
	public $mHistory;
	public $mOpenPlay;
	public $mStudent;
	
	public function __construct()
	{
		$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
		$this->mOpenPlayID = sanitize::sani( $_GET[ 'tgp_openplay_id' ], 'INTIGER' );
		
	}
	
	public function init()
	{
		$this->mOpenPlay = openPlayModel::get( array( ':opID' => $this->mOpenPlayID ) );
		$this->mStudent = student::get( array( ':sID' => $this->mStudentID ) );
		$this->mHistory = openPlayModel::getStudentHistory( array( ':opID' => $this->mOpenPlayID, ':sID' => $this->mStudentID ) );				
	}
}
?>