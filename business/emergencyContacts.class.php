<?php
class emergencyContacts extends orm
{
	protected $mFields = array( 'name' 			=> ':name',
								'homePhone' 	=> ':homePhone',
								'cellPhone' 	=> ':cellPhone',
								'workPhone' 	=> ':workPhone',
								'relation' 		=> ':relation',
								'student_id'	=> ':studentID',
								'user_id' 		=> ':userID' );
								
	protected $mReq = array( 'name' 			=> true,
								'homePhone' 	=> false,
								'cellPhone' 	=> true,
								'workPhone' 	=> false,
								'relation' 		=> true,
								'studentID'	=> true,
								'userID' 		=> true );
								
	protected $mErrors = array( 'name' 			=> false,
								'homePhone' 	=> false,
								'cellPhone' 	=> false,
								'workPhone' 	=> false,
								'relation' 		=> false,
								'studentID'	=> false,
								'userID' 		=> false );
	public $mName;
	public $mHomePhone = '';
	public $mWorkPhone = '';
	public $mCellPhone = '';
	protected $mTableName = 'tgp_emergency_contact';
	public $mRelation;
	public $mStudentID;
	public $mUserID;

	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'name' ] ) )
			$this->setName( $mP[ 'name' ] );
 
		if( isset( $mP[ 'homePhone' ] ) )
			$this->setHomePhone( $mP[ 'homePhone' ] );
 
		if( isset( $mP[ 'workPhone' ] ) )
			$this->setWorkPhone( $mP[ 'workPhone' ] );
 
		if( isset( $mP[ 'cellPhone' ] ) )
			$this->setCellPhone( $mP[ 'cellPhone' ] );
 
		if( isset( $mP[ 'tableName' ] ) )
			$this->setTableName( $mP[ 'tableName' ] );
 
		if( isset( $mP[ 'relation' ] ) )
			$this->setRelation( $mP[ 'relation' ] );
 
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
 
	public function setHomePhone( $homePhone )
	{
		$this->mHomePhone = $homePhone;
	}
 
	public function setWorkPhone( $workPhone )
	{
		$this->mWorkPhone = $workPhone;
	}
 
	public function setCellPhone( $cellPhone )
	{
		$this->mCellPhone = $cellPhone;
	}
 
	public function setTableName( $tableName )
	{
		$this->mTableName = $tableName;
	}
 
	public function setRelation( $relation )
	{
		$this->mRelation = $relation;
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
 
	public function getHomePhone( )
	{
		return $this->mHomePhone;
	}
 
	public function getWorkPhone( )
	{
		return $this->mWorkPhone;
	}
 
	public function getCellPhone( )
	{
		return $this->mCellPhone;
	}
 
	public function getTableName( )
	{
		return $this->mTableName;
	}
 
	public function getRelation( )
	{
		return $this->mRelation;
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