<?php
/*
This singleton class helps to keep a history of the actions users and administrators do in the website
*/
class log
{
	
	public function __construct()
	{
	
	}
	
	public static function moveparticipant( $mP )
	{
		$sql = 'INSERT INTO 
				tgp_log( )
				VALUES()';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
}
?>