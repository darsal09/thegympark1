<?php

class seasonsModel
{
	private function __construct()
	{
		//
	}	
	
	public static function get( )
	{
		$sql = 'SELECT *
				FROM tgp_class_season
				ORDER BY start_date DESC';
		
		return databaseHandler::getAll( $sql );
	}
	
	public static function getNextSeasons()
	{
		$sql = 'SELECT * 
				FROM tgp_class_season
				WHERE start_date >= NOW()
				ORDER BY start_date';		
		
		return databaseHandler::getAll( $sql );
	}
	
	public static function getUpcoming()
	{
		$sql = 'SELECT *
				FROM tgp_class_season
				WHERE end_date >= NOW()
				ORDER BY start_date';
		
		return databaseHandler::getAll( $sql );
	}

	public static function current()
	{
		$sql = 'SELECT *
				FROM tgp_class_season
				WHERE start_date <= NOW() AND end_date >= NOW()';
				
		return databaseHandler::getRow( $sql );
	}
	
	
}

?>