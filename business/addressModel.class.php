<?php
class addressModel
{
	private function __construct()
	{
	
	}
	
	public static function add( $mP )
	{
		if( self::exist( array( ':street' => $mP[ ':street' ], ':city' => $mP[ ':city' ], ':state' => $mP[ ':state' ], ':zip' => $mP[ ':zip' ], ':uID' => $mP[ ':uID' ] ) ) )
			return 0;
			
		$sql = 'INSERT INTO 
				tgp_address( user_id, student_id, street, city, state, zip )
				VALUES( :uID, :mID, :street, :city, :state, :zip )';
		
		databaseHandler::Execute( $sql, $mP );
		
		return databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );
	}
	
	public static function exist( $mP )
	{
		$sql = 'SELECT id
				FROM tgp_address
				WHERE street = :street AND city = :city AND state = :state AND zip = :zip AND user_id = :uID';
		
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
			
		return false;
	}
	
	public static function update( $mP )
	{
		$sql = 'UPDATE tgp_address
				SET street = :street, city = :city, state = :state, zip = :zip
				WHERE id = :ID AND user_Id = :uID AND student_id = :mID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function delete( $mP )
	{
		$sql = 'DELETE FROM tgp_address
				WHERE id = :ID AND user_id = :uID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
}
?>