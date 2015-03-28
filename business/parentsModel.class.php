<?php
class parentsModel
{
	private function __construct()
	{
	
	}
	
	public static function add( $mP )
	{
		if( self::exist( array( ':mID' => $mP[ ':mID' ], ':uID' => $mP[ ':uID' ], ':name' => $mP[ ':name' ], ':email' => $mP[ ':email' ] ) ) )
			return 0;
			
		$sql = 'INSERT INTO
				tgp_parents( student_id, user_id, name, homePhone, workPhone, cellPhone, email )
				VALUES( :mID, :uID, :name, :hPhone, :wPhone, :cPhone, :email )';
		
		databaseHandler::Execute( $sql, $mP );
		
		return databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );
	}
	
	public static function exist( $mP )
	{
		$sql = 'SELECT parent_id
				FROM tgp_parents
				WHERE student_id = :mID AND user_Id = :uID AND name = :name AND email = :email';
		
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
			
		return false;
	}
	
	public static function update( $mP )
	{
		$sql = 'UPDATE tgp_parents
				SET name = :name, homePhone = :hPhone, workPhone = :wPhone, cellPhone = :cPhone, email = :email
				WHERE parent_id = :ID AND student_id = :mID AND user_id = :uID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function delete( $mP )
	{
		$sql = 'DELETE 
				FROM tgp_parents
				WHERE parent_id = :ID AND student_id = :mID AND user_id = :uID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
}
?>