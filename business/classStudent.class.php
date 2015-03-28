<?php
class classStudent extends orm
{
	protected $mReq = array( );
	protected $mFields = array( 'student_id' 	=> 'studentID',
								'class_id' 		=> 'classID',
								'price' 		=> 'price',
								'start' 		=> 'startDate',
								'end' 			=> 'endDate',
								'type' 			=> 'classPart' );
								
	public $mStudentID;
	public $mClassID;
	public $mID;
	public $mPrice;
	public $mClassPart;
	public $mStartDate;
	public $mEndDate;

	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'studentID' ] ) )
			$this->setStudentID( $mP[ 'studentID' ] );
 
		if( isset( $mP[ 'classID' ] ) )
			$this->setClassID( $mP[ 'classID' ] );
 
		if( isset( $mP[ 'ID' ] ) )
			$this->setID( $mP[ 'ID' ] );
 
		if( isset( $mP[ 'price' ] ) )
			$this->setPrice( $mP[ 'price' ] );
 
		if( isset( $mP[ 'classPart' ] ) )
			$this->setClassPart( $mP[ 'classPart' ] );
 
		if( isset( $mP[ 'startDate' ] ) )
			$this->setStartDate( $mP[ 'startDate' ] );
 
		if( isset( $mP[ 'endDate' ] ) )
			$this->setEndDate( $mP[ 'endDate' ] );
 
	
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
 
	public function setID( $ID )
	{
		$this->mID = $ID;
	}
 
	public function setPrice( $price )
	{
		$this->mPrice = $price;
	}
 
	public function setClassPart( $classPart )
	{
		$this->mClassPart = $classPart;
	}
 
	public function setStartDate( $startDate )
	{
		$this->mStartDate = $startDate;
	}
 
	public function setEndDate( $endDate )
	{
		$this->mEndDate = $endDate;
	}
 
	public function getStudentID( )
	{
		return $this->mStudentID;
	}
 
	public function getClassID( )
	{
		return $this->mClassID;
	}
 
	public function getID( )
	{
		return $this->mID;
	}
 
	public function getPrice( )
	{
		return $this->mPrice;
	}
 
	public function getClassPart( )
	{
		return $this->mClassPart;
	}
 
	public function getStartDate( )
	{
		return $this->mStartDate;
	}
 
	public function getEndDate( )
	{
		return $this->mEndDate;
	}
 

}