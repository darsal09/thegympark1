<?php
class holidayModel
{

	private function __construct()
	{
	
	}
	
	public static function add( $mP )
	{
		if( !is_array( $mP ) )
			return 0;
			
		$sql = 'INSERT INTO
				holidayCalendar( title, weekday, hdate, year )
				VALUES( :title, :weekday, :date, :year )';
		
		databaseHandler::Execute( $sql, $mP );
		
		return databaseHandler::getLastID();
	}
	
	public static function exist( $mP )
	{
		$sql = 'SELECT id
				FROM holidayCalendar
				WHERE hdate = :hdate';
		
		return databaseHandler::getOne( $sql, $mP );
	}
	
	public static function get( $mP )
	{
		$sql = 'SELECT * 
				FROM holidayCalendar
				WHERE id = :ID';
				
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public static function remove( $mP )
	{
		$sql = 'DELETE 
				FROM holidayCalendar
				WHERE id = :hID';
				
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function update( $mP )
	{
		$sql = 'UPDATE holidayCalendar
				SET title = :title, hdate = :date, weekday = :weekday, year = :year
				WHERE id = :hID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
}

?>