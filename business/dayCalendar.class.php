<?php
class Day
{
	public $mYear;
	public $mDay;
	public $mMonth;
	public $mClasses;
	public $mLinkToDay;
	public $mTitle;
	public $season;
	
	public function __construct( $day, $month, $year )
	{	
		$this->mMonth = $month;
		$this->mDay = $day;
		$this->mYear = $year;	

		if( $day < 10 )
			$day = '0'.$day;
			
		if( $month < 10 )
			$month = '0'.$month;
		
		$this->mTitle = date( 'l', strtotime( $year.'-'.$month.'-'.$day ) );
		
		if( $month >= 9 && $month <= 12 )
			$this->season = 'Fall';
		else if( $month >= 6 && $month <= 9 )
			$this->season = 'Summer';
		else if( $month >= 3 && $month <= 6 )
			$this->season = 'Spring';
		else
			$this->season = 'Winter';
			
		$this->init();
		$this->setTimeAndLink();
		$this->setLinkToDay();
	}
	public function init()
	{
		$sql = 'CALL tgp_get_day_classes( :weekDay, :season, :year )';
		$params = array( ':weekDay' => $this->mTitle, ':season' => $this->season, ':year' => $this->mYear );
		
		$this->mClasses = databaseHandler::getAll( $sql, $params );
	}
	private function setTimeAndLink()
	{
		for( $i = 0; $i < sizeof( $this->mClasses ); $i++ )
		{
			list( $hour, $minute, $second ) = explode(':', $this->mClasses[ $i ][ 'start_time' ] );
			
			if( intval( $minute ) == 0 )
				$this->mClasses[ $i ][ 'start_time' ] = date( 'ga', strtotime( $this->mClasses[ $i ][ 'start_time' ] ) );									
			else
				$this->mClasses[ $i ][ 'start_time' ] = date( 'g:ia', strtotime( $this->mClasses[ $i ][ 'start_time' ] ) );						
			
			$this->mClasses[ $i ][ 'class_link' ] = Link::Build( 'program-'.$this->mClasses[ $i ][ 'tgp_program_id' ].'/category-'.$this->mClasses[ $i ][ 'tgp_class_category_id' ].'/class-info/'.$this->mClasses[ $i ][ 'class_id' ] );
		}
	}
	private function setLinkToDay()
	{
		$this->mLinkToDay = Link::Build( 'day-info/'.$this->mDay.'-'.$this->mMonth.'-'.$this->mYear );
	}
}
?>
