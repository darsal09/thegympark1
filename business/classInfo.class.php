<?php
class classInfo
{
	public $mOption;
	public $mClassID;
	public $mStartDate;
	public $mEndDate;
	public $mFullPrice;
	public $m9WeekPrice;
	public $mWeekday;
	public $mStartTime;
	public $mEndTime;
	public $mTitle;
	
	public function __construct( $mP, $option )
	{
		$this->mOption 		= $option;
		$this->mClassID 	= $mP[ 'class_id' ];
		$this->mStartDate 	= $mP[ 'start_date' ];
		$this->mEndDate 	= $mP[ 'end_date' ];
		$this->mFullPrice 	= $mP[ 'price' ];
		$this->m9WeekPrice 	= $mP[ '9WeekPrice' ];
		$this->mTitle 		= $mP[ 'title' ];
		$this->mWeekday 	= $mP[ 'weekday' ];
		$this->mStartTime	= $mP[ 'start_time' ];
		$this->mEndTime		= $mP[ 'end_time' ];		
		$this->setOptions();
		
		if( isset( $mP[ ':mID' ] ) )
			$this->mMemberID = $mP[ ':mID' ];
			
		if( isset( $mP[ ':uID' ] ) )
			$this->mUserID = $mP[ ':uID' ];
		
		if( isset( $mP[ ':ID' ] ) )
			$this->mID = $mP[ ':ID' ];
	}
	
	public function setOptions()
	{
		$this->mAmount		= $this->m9WeekPrice;
		
		switch( $this->mOption )
		{
			case 'First':
				$this->mBegin = date( 'Y-m-d', strtotime( $this->mStartDate ) );
				$this->mEnd = date( 'Y-m-d', strtotime( '+8 weeks', strtotime( $this->mStartDate ) ) );
				break;
				
			case 'Last':
				$this->mBegin = date( 'Y-m-d', strtotime( '+9 weeks', strtotime( $this->mStartDate ) ) );
				$this->mEnd = date( 'Y-m-d', strtotime( $this->mEndDate ) );
				break;
				
			default:
				$this->mBegin = date( 'Y-m-d', strtotime( $this->mStartDate ) );
				$this->mEnd = date( 'Y-m-d', strtotime( $this->mEndDate ) );
				$this->mAmount = $this->mFullPrice;
		}
	}
	
	public function add()
	{			
		$this->_mID = family::addMemberToClass( array( ':cID' => $this->mClassID, ':sID' => $this->mMemberID, ':type' => $this->mOption, ':start' => $this->mBegin, ':end' => $this->mEnd ) );
		return $this->_mID;
	}
	
	public function save()
	{
		if( $this->_mID < 1 )
			return false;
		
		$this->update();
	}
	
	public function update()
	{
		if( $this->_mID < 1 )
			return false;
			
		familyMember::updateClass( $this->getArray() );
	}
	
	public function hasErrors()
	{
		if( $this->mClassID < 1 || $this->mMemberID < 1 || $this->mUserID < 1 || !$this->optionsGood() || !$this->goodBeginDate() || !$this->goodEndDate() )
			return true;
		
		return false;
	}
	
	public function goodBeginDate()
	{
		if( empty( $this->mBegin ) )
			return false;
		
		return true;
	}
	
	public function goodEndDate()
	{
		if( empty( $this->mEnd ) )
			return false;
			
		return true;
	}
	
	public function optionsGood()
	{
		$option = array( 'First', 'Last', 'Full' );
		
		return in_array( $this->mOption, $option );
	}
	
	public function getArray()
	{
		return array( 'begin' => $this->mBegin, 'end' => $this->mEnd, 'amount' => $this->mAmount, 'start_time' => $this->mStartTime, 'end_time' => $this->mEndTime, 'weekday' => $this->mWeekday ); 
	}

	public function setParameters( $mP )
	{			
		foreach( $mP AS $field => $value )
		{
			$name = 'm'.substr( $field, 1, strlen( $field ) );
			$this->{$name} = $value;
		}		
	}
}
?>