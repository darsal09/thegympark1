<?php
class week
{
	private function __construct()
	{
	
	}
	
	public static function getDayIndex( $weekday )
	{
		$days = array( 'Monday' => 1, 'Tuesday' => 2, 'Wednesday' => 3, 'Thursday' => 4, 'Friday' => 5, 'Saturday' => 6, 'Sunday' => 7 );
		
		return $days[ $weekday ];
	}
	
	public static function getCurrentdayIndex()
	{
		date_default_timezone_set('America/New_York');
		return date( 'N' );
	}
}
?>