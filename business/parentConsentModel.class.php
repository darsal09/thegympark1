<?php
class parentConsentModel
{
	private function __construct()
	{
	
	}
	
	
	public static function add( $mP )
	{
		if( self::exist( $mP ) )
			return;
			
		$sql = 'INSERT INTO 
				parent_consent( student_id, registered_id, type, status )
				VALUES( :sID, :rID, :type, :status )';
		
		databaseHandler::Execute( $sql, $mP );
		
		return databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );
	}
	
	public static function exist( $mP )
	{
		$sql = 'SELECT id 
				FROM parent_consent
				WHERE student_id = :sID AND registered_id = :rID AND type = :type AND status = :status';
		
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
		
		return false;
	}
	
	public static function update( $mP )
	{
		$sql = 'UPDATE parent_consent
				SET student_id = :sID, registered_id = :rID, type = :type, status = :status
				WHERE id = :ID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function updateStatus()
	{
		$sql = 'UPDATE parent_consent
				SET status = :status
				WHERE id = :ID';
		
		return databaseHandler::Execute( $sql, $mP );
	}	
}
?>