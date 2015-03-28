<?php
class schoolModel
{
	private function __construct()
	{
	
	}
	
	public function add( $mP )
	{
		if( self::exist( array( ':name' => $mP[ ':mame' ], ':mID' => $mP[ ':mID' ], ':uID' => $mP[ ':uID' ] ) ) );
			return 0;
			
		$sql = 'INSERT INTO
				tgp_student_school( student_id, user_id, name, grade )
				VALUES( :sID, :uID, :name, :grade )';
		
		databaseHandler::Execute( $sql, $mP );
		
		return databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );
	}
	
	public function exist( $mP )
	{
		$sql = 'SELECT id
				FROM tgp_student_school
				WHERE name = :name AND student_id = :mID AND user_id = :uID';
		
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
			
		return false;
	}
	
	public function update( $mP )
	{
		$sql = 'UPDATE tgp_student_school
				SET name = :name, grade = :grade
				WHERE student_id = :mID AND user_id = :uID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public function delete( $mP )
	{
		$sql = 'DELETE FROM tgp_student_school
				WHERE id = :ID AND user_id = :uID AND student_id = :mID';
		
		return databaseHandler( $sql, $mP );
	}
}
?>