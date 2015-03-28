<?php
class noticesModel
{
	private function __construct()
	{
	
	}
	
	public static function get( $mP )
	{
		$mP[ ':payment' ] = 'Pending';
		
		$sql = 'SELECT *
				FROM tgp_class_payments
				WHERE user_id = :uID AND payment = :payment';
				
		return databaseHandler::getAll( $sql, $mP );
	}
}
?>