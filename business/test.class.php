<?php
class test extends orm
{

	public $mFields = array();
	public $mReq = array();
	
	public $mTest1;
	public $mTest2;
	public $mTest3;

	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'test1' ] ) )
			$this->setTest1( $mP[ 'test1' ] );
 
		if( isset( $mP[ 'test2' ] ) )
			$this->setTest2( $mP[ 'test2' ] );
 
		if( isset( $mP[ 'test3' ] ) )
			$this->setTest3( $mP[ 'test3' ] );
 
	
		$this->setStatements();
		$this->checkErrors();
	}
 
	public function setTest1( $test1 )
	{
		$this->mTest1 = $test1;
	}
 
	public function setTest2( $test2 )
	{
		$this->mTest2 = $test2;
	}
 
	public function setTest3( $test3 )
	{
		$this->mTest3 = $test3;
	}
 
	public function getTest1( )
	{
		return $this->mTest1;
	}
 
	public function getTest2( )
	{
		return $this->mTest2;
	}
 
	public function getTest3( )
	{
		return $this->mTest3;
	}
 

}