<?php
class schools extends orm
{
	protected $mFields = array( 'name' 			=> ':name', 
								'grade' 		=> ':grade',
								'student_id' 	=> ':studentID',
								'user_id' 		=> ':userID' );
								
	protected $mReq = array( 'name' 			=> true, 
								'grade' 		=> false,
								'studentID' 	=> true,
								'userID' 		=> true );
								
	protected $mErrors = array( 'name' 		=> false, 
								'grade' 	=> false,
								'studentID' => false,
								'userID' 	=> false );

	public $mName;
	public $mGrade = '';
	protected $mTableName = 'tgp_student_school';
	public $mStudentID;
	public $mUserID;

	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'name' ] ) )
			$this->setName( $mP[ 'name' ] );
 
		if( isset( $mP[ 'grade' ] ) )
			$this->setGrade( $mP[ 'grade' ] );
 
		if( isset( $mP[ 'tableName' ] ) )
			$this->setTableName( $mP[ 'tableName' ] );
 
		if( isset( $mP[ 'studentID' ] ) )
			$this->setStudentID( $mP[ 'studentID' ] );
 
		if( isset( $mP[ 'userID' ] ) )
			$this->setUserID( $mP[ 'userID' ] );
 
	
		$this->setStatements();
		$this->checkErrors();
	}
 
	public function setName( $name )
	{
		$this->mName = $name;
	}
 
	public function setGrade( $grade )
	{
		$this->mGrade = $grade;
	}
 
	public function setTableName( $tableName )
	{
		$this->mTableName = $tableName;
	}
 
	public function setStudentID( $studentID )
	{
		$this->mStudentID = $studentID;
	}
 
	public function setUserID( $userID )
	{
		$this->mUserID = $userID;
	}
 
	public function getName( )
	{
		return $this->mName;
	}
 
	public function getGrade( )
	{
		return $this->mGrade;
	}
 
	public function getTableName( )
	{
		return $this->mTableName;
	}
 
	public function getStudentID( )
	{
		return $this->mStudentID;
	}
 
	public function getUserID( )
	{
		return $this->mUserID;
	}
 

}