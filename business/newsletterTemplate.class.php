<?php
class newsletterTemplate
{
	private function __construct()
	{
		
	}

	public static function get( $mP )
	{
		$sql = 'SELECT *
				FROM newsletter_templates
				WHERE id = :ntID';
		
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public static function add( $mP )
	{
		if( self::exist( array( ':title' => $mP[ ':title' ] ) ) )
			return;
			
		$sql = 'INSERT INTO 
				newsletter_templates( title, headers, footers)
				VALUES( :title, :headers, :footers )';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function exist( $mp )
	{
		$sql = 'SELECT COUNT( * )
				FROM newsletter_templates
				WHERE title = :title';
		
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
			
		return false;
	}
	
	public static function update( $mP )
	{
		$sql = 'UPDATE newsletter_templates
				SET title = :title, headers = :headers, footers = :footers
				WHERE id = :ntID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function remove( $mP )
	{
		$sql = 'DELETE 
				FROM newsletter_templates
				WHERE id = :ntID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
}
?>