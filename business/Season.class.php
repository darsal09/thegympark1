<?php
class Season
{
	public $mTitle, $mID, $mYear, $mStartDate, $mEndDate, $mArray;
	
	public function __construct( $mP )
	{
		if( array_key_exists( ':sID', $mP ) )
			$this->setParameters( $mP );
		else
			$this->defineVariables( $mP );
	}
	
	public function setParameters( $mP )
	{
		$s = seasonModel::get( $mP );
		$this->mArray = $s;
		$this->defineVariables( $s );
	}
	
	public function defineVariables( $mP )
	{
		$this->mArray = $mP;
		
		foreach( $mP AS $field => $value )
		{
			if( strpos( $field, '_' ) > 0 )
			{
				$v = explode( '_', $field );
				$methodName = 'set'.ucfirst( $v[ 0 ] ).''.ucfirst( $v[ 1 ] );
			}
			else
				$methodName = 'set'.ucfirst( $field );
			
			$this->{$methodName}( $value );
		}
	
	}
	public function setTitle( $title )
	{
		$this->mTitle = $title;
	}
	
	public function setID( $id )
	{
		$this->mID = $id;
	}
	
	public function setYear( $year )
	{
		$this->mYear = $year;
	}
	
	public function setStartDate( $sdate )
	{
		$this->mStartDate = $sdate;
	}
	
	public function setEndDate( $edate )
	{
		$this->mEndDate = $edate;
	}
	
	public function getTitle()
	{
		return $this->mTitle;
	}
	public function getStartDate()
	{
		return $this->mStartDate;
	}
	public function getEndDate()
	{
		return $this->mEndDate;
	}
	public function getFormattedStartDate()
	{
		return date( 'D. M. jS, Y', strtotime( $this->getStartDate() ) );
	}
	public function getFormattedEndDate()
	{
		return date( 'D. M. jS, Y', strtotime( $this->getEndDate() ) );
	}
}
?>