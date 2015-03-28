<?php
class cardsModel
{
	private function __construct()
	{
	
	}
	
	public static function get( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_credit_cards
				WHERE user_id = :uID
				ORDER BY addedOn';
		
		$row = databaseHandler::getAll( $sql, $mP );
		
		$size = sizeof( $row );
		for( $i = 0; $i < $size; $i++ )
		{
			$row[ $i ][ 'card' ] = cardModel::decryptInfo( $row[  $i ][ 'info' ] );
			$row[ $i ][ 'card'][ 'last4' ]  = substr( $row[ $i ][ 'card' ][ 'number' ], 12, 16 );
		}
		return $row;	
	}
}
?>