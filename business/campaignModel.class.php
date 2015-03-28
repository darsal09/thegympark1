<?php
require_once BUSINESS_DIR.'/MCAPI.class.php';

class campaignModel
{
	private function __construct()
	{
	
	}
	
	public static function get( $mP )
	{
		$apiKey = mailChimpModel::getAPIKey( array( ':title' => 'MailChimp' ) );
		
		$api = new MCAPI( $apiKey[ 'api_key' ] );
		
		return $api->campaignStats( $mP[ 'cID' ] );
	}
}
?>