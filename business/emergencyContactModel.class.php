<?php
class emergencyContactModel
{
	private function __construct()
	{
	
	}
	
	public static function add( $mP )
	{
		if( self::exist( $mP ) )
			return 0;
		
		$sql = 'INSERT INTO
				tgp_emergency_contact( user_id, student_id, relation, name, cellPhone )
				VALUES( :uID, :mID, :relation, :name, :phone )';
		
		databaseHandler::Execute( $sql, $mP );
		
		return databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );
	}
	
	public static function update( $mP )
	{
		$sql = 'UPDATE tgp_emergency_contact
				SET name = :name, cellPhone = :phone, relation = :relation, type = :type
				WHERE user_id = :uID AND student_id = :mID AND id = :ID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function exist( $mP )
	{
		$sql = 'SELECT id
				FROM tgp_emergency_contact
				WHERE name = :name AND cellPhone = :phone AND relation = :relation AND user_id = :uID AND student_id = :mID';
		
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
		
		return false;
	}
	
	public static function delete( $mP )
	{
		$mP[ ':type' ] = 'Disactive';
		
		return self::update( $mP );
	}
}
?>