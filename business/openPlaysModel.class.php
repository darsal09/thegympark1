<?php
/*
	This singleton class is what helps us add, update, and retrieve the information about open plays
*/

class openPlaysModel
{
	private function __construct()
	{
	
	}

	public static function getAll()
	{
		$sql = 'SELECT op.*, tcs.season, tcs.year
				FROM openplays op
				INNER JOIN tgp_class_season tcs ON tcs.id = op.season_id
				ORDER BY tcs.start_date DESC, op.title';
				
		return databaseHandler::getAll( $sql );
	}
	
	public static function get( $mP )
	{		
		$sql = 'SELECT tcs.season, op.id, tcs.year, op.title
				FROM tgp_class_season tcs
				INNER JOIN openplays op ON op.season_id  = tcs.id
				WHERE tcs.start_date >= :sDate ';
				
		return databaseHandler::getAll( $sql, $mP );
	}
		
	public static function getIndividualPackages( $mP )
	{
		
		return self::getPackages( $mP );
	}
	
	public static function getGroupPackages( $mP )
	{
		return self::getPackages( $mP );
	}
	
	public static function getPackages( $mP )
	{
		return PackagesModel::get( $mP );
	}
	
	
}

?>