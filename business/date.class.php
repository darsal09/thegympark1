<?php
class date
{
	public $mDate;
	
	public function __construct( $mP = array( ) )
	{
		date_default_timezone_set('America/New_York');
		
		if( isset( $mP[ 'date' ] ) )
			$this->mDate = date( 'Y-m-d', strtotime( $mP[ 'date' ] ) );
		else
			$this->mDate = date( 'Y-m-d' );
	}
	
	public function getCurrent()
	{
		return $this->mDate;
	}
	
	public function withWeekday()
	{
		return date( 'l, F jS, Y', strtotime( $this->getCurrent() ) );
	}
	
	public function withShortWeekday()
	{
		return date( 'D, F jS, Y', strtotime( $this->getCurrent() ) );
	}
	
	public function getCurrentWeekday()
	{
		return date( 'l', strtotime( $this->getCurrent() ) );
	}
	
	public function withShortMonth()
	{
		return date( 'l, M jS, Y', strtotime( $this->getCurrent() ) );
	}
	
	public function withShortWeekdayMonth()
	{
		return date( 'D, M jS, Y', strtotime( $this->getCurrent() ) );
	}
	
	public function withoutWeekday()
	{
		return date( 'F jS, Y', strtotime( $this->getCurrent() ) );	
	}
	
	public function addDays( $days )
	{
		return date( 'Y-m-d', strtotime( "+$days days", strtotime( $this->getCurrent() ) ) );	
	}
	
	public function addMonths( $months )
	{
		return date( 'Y-m-d', strtotime( "+$months months", strtotime( $this->getCurrent() ) ) );	
	}
	
	public function addYears( $years )
	{
		return date( 'Y-m-d', strtotime( "+$years years", strtotime( $this->getCurrent() ) ) );	
	}
	
	
}