<?php
/*
This class enters the participants personal information
*/

class participantInfo extends orm
{
	protected $mFields 	= array( 'first' 	=> ':first', 
								'last' 		=> ':last', 
								'dob' 		=> ':dob', 
								'gender' 	=> ':gender', 
								'type' 		=> ':type', 
								'user_id' 	=> ':userID' );
								
	protected $mReq 	= array( 'first' 	=> true, 
								'last' 		=> true, 
								'dob' 		=> true, 
								'gender' 	=> true, 
								'type' 		=> true, 
								'userID' 	=> true );
								
	protected $mErrors 	= array( 'first' 	=> false, 
								'last' 		=> false, 
								'dob' 		=> false, 
								'gender' 	=> false, 
								'type' 		=> false, 
								'userID' 	=> false );
	
	public $mFirst;
	public $mLast;
	public $mDob;
	public $mGender;
	public $mType;
	public $mUserID;
	protected $mTableName = 'tgp_family';
	
	public $mID;
	
	public function __construct( $mP = array() )
	{		
		if( isset( $mP[ 'first' ] ) )
			$this->setFirst( $mP[ 'first' ] );
 
		if( isset( $mP[ 'last' ] ) )
			$this->setLast( $mP[ 'last' ] );
 
		if( isset( $mP[ 'dob' ] ) )
			$this->setDob( $mP[ 'dob' ] );
 
		if( isset( $mP[ 'gender' ] ) )
			$this->setGender( $mP[ 'gender' ] );
		
		if( isset( $mP[ 'id' ] ) )
			$this->setID( $mP[ 'id' ] );
			
		if( isset( $mP[ 'userID' ] ) )
			$this->setUserID( $mP[ 'userID' ]  );
			
		$this->setType();
		$this->setStatements();
		$this->checkErrors();
	}

	public function setID( $id )
	{
		$this->mID = $id;
	}
	
	public function setUserID( $userID )
	{
		$this->mUserID = $userID;
	}
	
	public function setFirst( $first )
	{
		$this->mFirst = $first;
	}
 
	public function setLast( $last )
	{
		$this->mLast = $last;
	}
 
	public function setDob( $dob )
	{
		$this->mDob = date( 'Y-m-d', strtotime( $dob ) );
	}
 
	public function setGender( $gender )
	{
		$this->mGender = $gender;
	}
	
	/*
		There are three options that can be inputted
		Myself
		Son
		Daughter
	*/
	public function setType()
	{	
		$type = array( 'M' => 'Son', 'F' => 'Daughter' );
		
		$age = helper::getAge( date( 'Y-m-d', strtotime( $this->getDob() ) ) );

		if( $age > 17 )
			$this->mType = 'Myself';
		else
			$this->mType = $type[ $this->getGender() ];		
	}
	
	public function getID( )
	{
		return $this->mID;
	}
 
	public function getUserID( )
	{
		return $this->mUserID;
	}
	
	public function getFirst( )
	{
		return $this->mFirst;
	}
 
	public function getLast( )
	{
		return $this->mLast;
	}
 
	public function getDob( )
	{
		return $this->mDob;
	}
 
	public function getGender( )
	{
		return $this->mGender;
	} 
	
	public function getType()
	{
		return $this->mType;
	}
}
?>