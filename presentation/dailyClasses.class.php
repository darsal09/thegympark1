<?php
class dailyClasses
{
	public $mDayInfo;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_day' ] ) )
			$day = intval( $_GET[ 'tgp_day' ] );
		if( isset( $_GET[ 'tgp_month' ] ) )
			$month = intval( $_GET[ 'tgp_month' ] );
		if( isset( $_GET[ 'tgp_year' ] ) )
			$year = intval( $_GET[ 'tgp_year' ] );
			
		$this->mDayInfo = new Day( $day, $month, $year );
	}
}
?>