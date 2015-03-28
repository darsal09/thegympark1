<?php
class requestPasswordModel
{
	private function __construct()
	{
	
	}
	
	public static function get( $mP )
	{
		$mP[ ':type' ] = 'Myself';
		
		$sql = 'SELECT tu.*, tf.first
				FROM tgp_users tu
				LEFT JOIN tgp_family tf ON tf.user_id = tu.id AND tf.type = :type
				WHERE tu.uEmail = :email';
		
		return databaseHandler::getRow( $sql, $mP  );
	}
}