<?php
class caregiverModel
{
	private function __construct()
	{
	
	}
	
	public static function add( $mP )
	{
		if( self::exist( array( ':name' => $mP[ ':name' ], ':uID' => $mP[ ':uID' ] ) ) )
			return 0;
		
		$sql = 'INSERT INTO
				tgp_nannies( student_id, user_id, name, phone )
				VALUES( :mID, :uID, :name, :phone )';
		
		databaseHandler::Execute( $sql, $mP );
		
		return databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );
	
	}
	
	public static function update( $mP )
	{
		$sql = 'UPDATE tgp_nannies
				SET name = :name, phone = :phone
				WHERE nanny_id = :ID AND user_Id = :uID AND student_id = :mID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function exist( $mP )
	{
		$sql = 'SELECT nanny_id
				FROM tgp_nannies
				WHERE name = :name AND user_id = :uID';
		
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
			
		return false;	
	}
}
?>