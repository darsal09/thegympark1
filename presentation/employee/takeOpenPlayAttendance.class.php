<?php
class takeOpenPlayAttendance
{
	public function __construct()
	{
		$this->mStudentID = sanitize::sani( $_POST[ 'student_id' ], 'INTIGER' );
		$this->mOpenPlayID = sanitize::sani( $_POST[ 'openplay_id' ], 'INTIGER' );
		
		echo 'SID: '.$this->mStudentID.', OPID: '.$this->mOpenPlayID;
	}
}
?>