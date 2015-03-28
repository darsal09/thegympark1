<?php
class PackagesModel
{
	private function __construct()
	{
	
	}
	
	public static function get( $mP )
	{
		$sql = 'SELECT id, price, title, type, amount
				FROM tgp_class_packages
				WHERE type = :type';
		
		return databaseHandler::getAll( $sql, $mP );		
	}
}
?>