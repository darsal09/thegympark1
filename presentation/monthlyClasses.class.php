<?php
class monthlyClasses
{
	public $monthInfo;
	public $previousMonth;
	public $nextMonth;
	public $mLinkToPreviousMonth;
	public $mLinkToNextMonth;
	
	public function __construct()
	{
		$month_index = date( 'n' );
		$year = date( 'Y' );

		if( isset( $_GET[ 'tgp_year' ] ) )
			$year = intval( $_GET[ 'tgp_year' ] );

		if( isset( $_GET[ 'tgp_month' ] ) )
			$month_index = intval( $_GET[ 'tgp_month' ] );
			
		$this->monthInfo = new monthCalendar( $month_index, $year );
			
		$this->previousMonth = new monthCalendar( $month_index - 1, $year );
		$this->nextMonth = new monthCalendar( $month_index + 1, $year );
		$this->setLinks( $month_index, $year );
	}
	private function setLinks( $month, $year )
	{
		$this->mLinkToPreviousMonth = Link::Build( 'month/'.$this->previousMonth->month.'/'.$this->previousMonth->year );
		$this->mLinkToNextMonth = Link::Build( 'month/'.$this->nextMonth->month.'/'.$this->nextMonth->year );
	}
	
}
?>