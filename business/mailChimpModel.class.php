<?php

class mailChimpModel
{
	private function __construct()
	{
		//
	}
	
	
	public static function get( $mP )
	{
		$apiKey = self::getAPIKey( $mP );
		
		$api = new MCAPI( $apiKey[ 'api_key' ] );
		
		$campaigns = $api->campaigns();
		$lists = $api->lists();
		
		$size = sizeof( $campaigns[ 'data' ] );
		$i_size = sizeof( $lists[ 'data' ] );
		
		for( $i = 0; $i < $size; $i++ )
			$campaigns[ 'data' ][ $i ][ 'link' ] = Link::Build( 'index.php?campaign_id='.$campaigns[ 'data' ][ $i ][ 'id' ].'&action=campaign' );

		for( $i = 0; $i < $i_size; $i++ )
			$lists[ 'data' ][ $i ][ 'link' ] = Link::Build( 'index.php?list_id='.$lists[ 'data' ][ $i ][ 'id' ].'&action=list' );
			
		return array( 'campaigns' => $campaigns, 'lists' => $lists );
	}
	
	public static function addAPIKey( $mP )
	{
		if( self::apiKeyExist( array( ':apiKey' => $mP[ ':apiKey' ] ) ) )
		{
			throw new Exception( 'The API Key already exist in the database' );
		}
			
		$sql = 'INSERT INTO
				api_keys( title, api_key )
				VALUES( :title, :apiKey )';
				
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function getAPIKey( $mP )
	{
	
		return array( 'api_key' => '56dd55d0adf8b29041f7469cc7cbdf55-us3' );
		
		$sql = 'SELECT * 
				FROM api_keys
				WHERE title = :title';
		
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public static function updateAPIKey( $mP )
	{
		if( !isset( $mP[ ':akID' ] ) )
		{
			try
			{
				return self::addAPIKey( $mP );
			}
			catch( Exception $e )
			{
				echo '<p>Duplicate!<br/>'.$e->getMessage().'</p>';
				return;
			}
		}	
		$sql = 'UPDATE api_keys
				SET title = :title, api_key = :apiKey
				WHERE id = :akID';
				
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function getListMembers( $mP )
	{
		return listModel::getMembers( $mP[ 'lID' ] );
	}
	
	public static function apiKeyExist( $mP )
	{
		$sql = 'SELECT COUNT( * )
				FROM api_keys
				WHERE api_key = :apiKey';
		
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
		
		return false;
	}
	
	public static function addMember( $mP )
	{
		$apiKey = self::getAPIKEY( array( ':title' => 'MailChimp' ) );
		
		$api = new MCAPI( $apiKey[ 'api_key' ] );
		
		list( $first, $last ) = explode( ' ', $mP[ ':name' ] );
		
		return $api->listSubscribe( $mP[ ':lID' ], $mP[ ':email' ], array( 'FNAME' => $first, 'LNAME' => $last ) );
		
		
	}
}

?>