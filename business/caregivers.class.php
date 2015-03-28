<?php
class caregivers extends orm
{
	protected $mFields = array( 'name' 			=> ':name',
								'phone' 		=> ':phone',
								'student_id' 	=> ':studentID',
								'user_id' 		=> ':userID');
								
	protected $mReq = array( 'name' 		=> true,
							'phone' 		=> true,
							'studentID' 	=> true,
							'userID' 		=> true);
								
	protected $mErrors = array( 'name' 			=> false,
								'phone' 		=> false,
								'studentID' 	=> false,
								'userID' 		=> false);
								
	public $mName;
	public $mPhone;
	protected $mTableName = 'tgp_nannies';
	public $mStudentID;
	public $mUserID;

	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'name' ] ) )
			$this->setName( $mP[ 'name' ] );
 
		if( isset( $mP[ 'phone' ] ) )
			$this->setPhone( $mP[ 'phone' ] );
 
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
 
	public function setPhone( $phone )
	{
		$this->mPhone = $phone;
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
 
	public function getPhone( )
	{
		return $this->mPhone;
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