<?php

class weeklyScheduleModel
{
	private function __construct()
	{
	
	}
	
	public static function get()
	{
		$classTitles = classTitlesModel::get();
		$size = sizeof( $classTitles );
		
		$days = array( 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$classTitles[ $i ][ 'mWeek' ] = array();
			
			for( $j = 0; $j < 7; $j++ )
			{
				$classTitles[ $i ][ 'mWeek' ][ $j ] = classTitleModel::getDayClasses( $classTitles[ $i ][ 'id' ], $days[ $j ] );
			}
		}
		
		return $classTitles;
	}
}

?>