<?php
class creditCardModel
{
	private function __construct()
	{
	
	}
	
	public static function get( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_credit_cards
				WHERE id = :id';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $mP ) );
		
		return $pdo->getRow();
	}
}
?>