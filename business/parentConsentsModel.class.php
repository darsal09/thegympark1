<?php
class parentConsentsModel
{
	private function __construct()
	{
	
	}
	
	public static function get( $mP )
	{
		$mP[ ':status' ] = 'Pending';
		
		$sql = 'SELECT pc.*, tf.first AS name
				FROM tgp_family tf
				INNER JOIN parent_consent pc ON pc.student_id = tf.id AND pc.status = :status
				WHERE tf.user_id = :uID';
		
		return databaseHandler::getAll( $sql, $mP );
	}
}
?>