<?php
class holidaysModel
{

	private function __construct()
	{
	
	}
	
	public static function get( $mP )
	{
		if( !is_array( $mP ) )
			return 0;
			
			
		$sql = 'SELECT *
				FROM holidayCalendar
				WHERE year = :year
				ORDER BY hdate';
		
		return databaseHandler::getAll( $sql, $mP );
	}
}
?>