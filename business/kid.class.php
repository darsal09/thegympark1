<?php
class kid
{
	public $mFirst;
	public $mLast;
	public $mDob;
	public $mGender;

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
		$this->mDob = $dob;
	}
 
	public function setGender( $gender )
	{
		$this->mGender = $gender;
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
 

}