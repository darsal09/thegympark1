<?php
class parents extends orm
{
	protected $mFields = array( 'name' 			=> ':name', 
								'email' 		=> ':email', 
								'cellPhone' 	=> ':cellPhone', 
								'homePhone' 	=> ':homePhone', 
								'workPhone' 	=> ':workPhone', 
								'student_id' 	=> ':studentID', 
								'user_id' 		=> ':userID' );
								
	protected $mErrors = array( 'name' => false, 
								'email' => false, 
								'cellPhone' => false, 
								'homePhone' => false, 
								'workPhone' => false, 
								'studentID' => false, 
								'userID' => false );
								
	protected $mReq = array( 'name' => true, 
							'email' => true, 
							'cellPhone' => false, 
							'homePhone' => false, 
							'workPhone' => false, 
							'studentID' => true, 
							'userID' => true );
							
	protected $mTableName = 'tgp_parents';
	
	public $mName;
	public $mEmail;
	public $mCellPhone = '';
	public $mHomePhone = '';
	public $mWorkPhone = '';
	public $mStudentID;
	public $mUserID;
	public $mID;
	
	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'id' ] ) )
			$this->setID( $mP[ 'id' ] );
			
		if( isset( $mP[ 'name' ] ) )
			$this->setName( $mP[ 'name' ] );
 
		if( isset( $mP[ 'email' ] ) )
			$this->setEmail( $mP[ 'email' ] );
 
		if( isset( $mP[ 'cellPhone' ] ) )
			$this->setCellPhone( $mP[ 'cellPhone' ] );
 
		if( isset( $mP[ 'homePhone' ] ) )
			$this->setHomePhone( $mP[ 'homePhone' ] );
 
		if( isset( $mP[ 'workPhone' ] ) )
			$this->setWorkPhone( $mP[ 'workPhone' ] );
 
		if( isset( $mP[ 'studentID' ] ) )
			$this->setStudentID( $mP[ 'studentID' ] );
 
		if( isset( $mP[ 'userID' ] ) )
			$this->setUserID( $mP[ 'userID' ] );
			
		$this->checkErrors();
		$this->setStatements();
	}
 
	public function setName( $name )
	{
		$this->mName = $name;
	}
  
	public function setEmail( $email )
	{
		$this->mEmail = $email;
	}
 
	public function setCellPhone( $cellPhone )
	{
		$this->mCellPhone = $cellPhone;
	}
 
	public function setHomePhone( $homePhone )
	{
		$this->mHomePhone = $homePhone;
	}
 
	public function setWorkPhone( $workPhone )
	{
		$this->mWorkPhone = $workPhone;
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
  
	public function getEmail( )
	{
		return $this->mEmail;
	}
 
	public function getCellPhone( )
	{
		return $this->mCellPhone;
	}
 
	public function getHomePhone( )
	{
		return $this->mHomePhone;
	}
 
	public function getWorkPhone( )
	{
		return $this->mWorkPhone;
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