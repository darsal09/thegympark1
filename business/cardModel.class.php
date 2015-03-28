<?php
class cardModel
{
	private function __construct()
	{
	
	}
	
	public static function add( $mP )
	{
		$result = self::encryptInfo( $mP );
		
		if( is_array( $result ) )
			return $result;
		
		$params = array( ':info' => $result, ':uID' => $mP[ ':uID' ] );
		
		$cID = self::exist( $params );
		
		if( $cID > 0 )
			return $cID;
			
		$sql = 'INSERT INTO
				tgp_credit_cards( user_id, info, modefied )
				VALUES( :uID, :info, NOW() )';
				
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $params )  );
		
		$pdo->execute();
		
		return $pdo->getLastID();		
	}
	
	
	
	private static function exist( $mP )
	{
		$sql = 'SELECT id
				FROM tgp_credit_cards
				WHERE user_id = :uID AND info = :info';
		
		return databaseHandler::getOne( $sql, $mP );
	}
	
	public static function get( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_credit_cards
				WHERE id = :cID';
		
		$row = databaseHandler::getRow( $sql, $mP );
		
		$row[ 'card' ] = self::decryptInfo( $row[ 'info' ] );
		$row[ 'card'][ 'last4' ]  = substr( $row[ 'card' ][ 'number' ],(  strlen( $row[ 'card' ][ 'number' ] ) - 4 ), strlen( $row[ 'card' ][ 'number' ] ) );
		
		return $row;
	}

	public static function getThrouhOpenPlayPayment( $mP )
	{		
		$sql = 'SELECT card_id
				FROM tgp_class_payments 
				WHERE register_id = :rID AND student_id = :sID';
		
		return self::get( array( ':cID' => databaseHandler::getOne( $sql, $mP ) ) );
	}
	
	public static function encryptInfo( $mP )
	{
		$result = self::createXML( $mP );
		
		if( is_array( $result ) )
			return $result;
			
		return symmetricCrypt::Encrypt( $result );
	}
	
	public static function decryptInfo( $info )
	{
		return self::extractXML( symmetricCrypt::Decrypt(  $info ) );
	}
	
	private static function createXML( $mP )
	{
		$result = self::hasErrors( $mP );
		
		if( is_array( $result ) )
			return array( 'status' => true, 'message' => $result[ 'message' ] );
			
		$xml_data = new DOMDocument();
		
		$root = $xml_data->createElement( 'CardDetails' );
		
		//add name on the card
		$child = $root->appendChild( $xml_data->createElement( 'CardHolder' ) );
		$value = $child->appendChild( $xml_data->createTextNode( $mP[ ':name' ] ) );
		//add card number
		$child = $root->appendChild( $xml_data->createElement( 'CardNumber' ) );
		$value = $child->appendChild( $xml_data->createTextNode( $mP[ ':number' ] ) );

		$child = $root->appendChild( $xml_data->createElement( 'ExpireDate' ) );
		$value = $child->appendChild( $xml_data->createTextNode( $mP[ ':expire_date' ] ) );

		$child = $root->appendChild( $xml_data->createElement( 'CardCode' ) );
		$value = $child->appendChild( $xml_data->createTextNode( $mP[ ':card_code' ] ) );
		
		$child = $root->appendChild( $xml_data->createElement( 'CardType' ) );
		$value = $child->appendChild( $xml_data->createTextNode( $mP[ ':type' ] ) );

		$child = $root->appendChild( $xml_data->createElement( 'street' ) );
		$value = $child->appendChild( $xml_data->createTextNode( $mP[ ':street' ] ) );
		
		$child = $root->appendChild( $xml_data->createElement( 'city' ) );
		$value = $child->appendChild( $xml_data->createTextNode( $mP[ ':city' ] ) );
		
		$child = $root->appendChild( $xml_data->createElement( 'state' ) );
		$value = $child->appendChild( $xml_data->createTextNode( $mP[ ':state' ] ) );
		
		$child = $root->appendChild( $xml_data->createElement( 'zip' ) );
		$value = $child->appendChild( $xml_data->createTextNode( $mP[ ':zip' ] ) );
		
		$root = $xml_data->appendChild( $root );
		
		return $xml_data->saveXML();
	}
	
	private static function extractXML( $info )
	{
		$xml = simplexml_load_string( $info );
		
		return array( 'type' => (string) $xml->CardType, 'name' => (string)$xml->CardHolder, 'number' => (string)$xml->CardNumber, 'expire' => (string)$xml->ExpireDate, 'card_code' => (string)$xml->CardCode, 'street' => (string)$xml->street, 'city' => (string)$xml->city, 'state' => (string)$xml->state, 'zip' => (string)$xml->zip );
	}
	
	private static function hasErrors( $mP )
	{
		$errors = '';
		$flag = false;
		
		if( empty( $mP[ ':type' ] )  )
		{
			$errors .= 'Error: :type is empty<br/>';
			$flag = true;
		}
		
		if( empty( $mP[ ':name' ] ) )
		{
			$errors .= 'Error: :name is empty<br/>';
			$flag = true;
		}
		
		if( empty( $mP[ ':number' ] ) )
		{
			$errors .= 'Error: :number is empty<br/>';
			$flag = true;
		}
		
		if( empty( $mP[ ':expire_date' ] ) )
		{
			$errors .= 'Error: :expiration date is empty<br/>';
			$flag = true;
		}
		
		if( empty( $mP[ ':card_code' ] ) )
		{
			$errors .= 'Error: :card code is empty<br/>';
			$flag = true;
		}
		
		if( empty( $mP[ ':street' ] ) )
		{
			$errors .= 'Error: :street is empty<br/>';
			$flag = true;
		}
		
		if( empty( $mP[ ':city' ] ) )
		{
			$errors .= 'Error: :city is empty<br/>';
			$flag = true;
		}
		
		if( empty( $mP[ ':state' ]  ) )
		{
			$errors .= 'Error: :state is empty<br/>';
			$flag = true;
		}
		
		if( empty( $mP[ ':zip' ] ) )
		{
			$errors .= 'Error: :zip is empty<br/>';
			$flag = true;
		}
		
		if( $flag  )
			return array( 'status' => 'error', 'message' => $errors );
			
		return false;
	}
}
?>