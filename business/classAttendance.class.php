<?php
class classAttendance extends orm
{
	protected $mFields 	= array( 'student_id' => ':studentID', 'class_id' => ':classID', 'dates' => ':date' );
	protected $mReq 	= array( 'studentID' => true, 'classID' => true, 'date' => true );
	protected $mErrors 	= array( 'studentID' => false, 'classID' => false, 'date' => false );
	
	protected $mTableName = 'tgp_class_attendance';
	
	public $mStudentID;
	public $mClassID;
	public $mDate;	

	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'studentID' ] ) )
			$this->setStudentID( $mP[ 'studentID' ] );
 
		if( isset( $mP[ 'classID' ] ) )
			$this->setClassID( $mP[ 'classID' ] );
 
		if( isset( $mP[ 'date' ] ) )
			$this->setDate( $mP[ 'date' ] );
 
	
		$this->setStatements();
		$this->checkErrors();
	}
 
	public function setStudentID( $studentID )
	{
		$this->mStudentID = $studentID;
	}
 
	public function setClassID( $classID )
	{
		$this->mClassID = $classID;
	}
 
	public function setDate( $date )
	{
		$this->mDate = $date;
	}
 
	public function getStudentID( )
	{
		return $this->mStudentID;
	}
 
	public function getClassID( )
	{
		return $this->mClassID;
	}
 
	public function getDate( )
	{
		return $this->mDate;
	}
 

}