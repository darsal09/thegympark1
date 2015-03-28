<?php
class addresses extends orm
{
	protected $mFields = array( 'street' 		=> ':street', 
								'city'			=> ':city', 
								'state' 		=> ':state', 
								'zip' 			=> ':zip', 
								'student_id' 	=> ':studentID', 
								'user_id' 		=> ':userID' );
								
	protected $mErrors = array( 'street' => false, 
							'floor' 	=> false,
							'city' 		=> false,
							'state' 	=> false,
							'zip' 		=> false,
							'studentID' => false,
							'userID' 	=> false );
							
	protected $mReq = array( 'street' 		=> true, 
							'floor' 	=> false,
							'city' 		=> true,
							'state' 	=> true,
							'zip' 		=> true,
							'studentID' => true,
							'userID' 	=> true );
	
	protected $mTableName = 'tgp_address';
	
	public $mStreet;
	public $mFloor;
	public $mCity;
	public $mState;
	public $mZip;
	public $mStudentID;
	public $mUserID;
	
	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'street' ] ) )
			$this->setStreet( $mP[ 'street' ] );
 
		if( isset( $mP[ 'floor' ] ) )
			$this->setFloor( $mP[ 'floor' ] );
 
		if( isset( $mP[ 'city' ] ) )
			$this->setCity( $mP[ 'city' ] );
 
		if( isset( $mP[ 'state' ] ) )
			$this->setState( $mP[ 'state' ] );
 
		if( isset( $mP[ 'zip' ] ) )
			$this->setZip( $mP[ 'zip' ] );
 
		if( isset( $mP[ 'studentID' ] ) )
			$this->setStudentID( $mP[ 'studentID' ] );
 
		if( isset( $mP[ 'userID' ] ) )
			$this->setUserID( $mP[ 'userID' ] );
			
		$this->setStatements();
		$this->hasErrors();
 
	}
 
	public function setStreet( $street )
	{
		$this->mStreet = $street;
	}
 
	public function setFloor( $floor )
	{
		$this->mFloor = $floor;
	}
 
	public function setCity( $city )
	{
		$this->mCity = $city;
	}
 
	public function setState( $state )
	{
		$this->mState = $state;
	}
 
	public function setZip( $zip )
	{
		$this->mZip = $zip;
	}
 
	public function setStudentID( $studentID )
	{
		$this->mStudentID = $studentID;
	}
 
	public function setUserID( $userID )
	{
		$this->mUserID = $userID;
	}
 
	public function getStreet( )
	{
		return $this->mStreet;
	}
 
	public function getFloor( )
	{
		return $this->mFloor;
	}
 
	public function getCity( )
	{
		return $this->mCity;
	}
 
	public function getState( )
	{
		return $this->mState;
	}
 
	public function getZip( )
	{
		return $this->mZip;
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