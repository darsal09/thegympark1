<?php
require_once BUSINESS_DIR.'/MCAPI.class.php';

class listModel
{
	private function __construct()
	{
	
	}
	
	public static function getMembers( $lID )
	{
		$apiKey = mailChimpModel::getAPIKey( array( ':title' => 'MailChimp' ) ); 
		$api = new MCAPI($apiKey[ 'api_key' ] );
		
		return $api->listMembers($lID, 'subscribed', null, 0, 5000 );
	}
	
	public static function growthHistory( $lID )
	{
		$apiKey = mailChimpModel::getAPIKey( array( ':title' => 'MailChimp' ) ); 
		$api = new MCAPI($apiKey[ 'api_key' ] );
		
		return $api->listGrowthHistory($lID);
	}
	
	public static function unsubscribeMember( $lID, $memberEmail )
	{
		$api = new MCAPI( mailChimpModel::getAPIKey() );
		
		return $api->listUnsubscribe( $lID, $memberEmail );
	}
	
	public static function subscribeMember( $lID, $memberEmail, $name )
	{
		if( !isset( $name[ 'FNAME' ] ) && !isset( $name[ 'LNAME' ] ) && !empty( $memberEmail ) )
		{
			echo '<div class=error><p>You need to define FNAME & LNAME in order to work. You also have to provide an emaill.</p></div>';
			return false;
		}	
		$apiKey = mailChimpModel::getAPIKEY( array( ':title' => 'MailChimp' ) );
		
		$api = new MCAPI( $apiKey[ 'api_key' ] );
						
		// By default this sends a confirmation email - you will not see new members
		// until the link contained in it is clicked!
		$api->listSubscribe( $lID, $memberEmail, $name );
		
		if ($api->errorCode)
		{
				echo "<div class=error><p>Unable to load listSubscribe()!<br/>";
				echo "\tCode: ".$api->errorCode."<br/>";
				echo "\tMsg: ".$api->errorMessage."</p></div>";
				return false;
		} 
		else 
			echo "<div class=success><p>Subscribed - look for the confirmation email!</p></div>";
		
		return true;
	
	}
	
	public static function getMember( $lID, $memberEmail )
	{
		$apiKey = mailChimpModel::getAPIKey( array( ':title' => 'MailChimp' ) );
		
		$api = new MCAPI( $apiKey[ 'api_key' ] );

		$retval = $api->listMemberInfo( $lID, array( $memberEmail )  );
		
		return $retval[ 'data' ][ 0 ];
	}
	
	public static function updateMember( $lID, $oEmail, $memberEmail, $fName, $lName )
	{
		$api = new MCAPI( mailChimpModel::getAPIKey() );
		
		$merge_vars = array( 'FNAME' => $fName, 'LNAME' => $lName, 'EMAIL' => $oEmail, 'NEW_EMAIL' => $memberEmail );
		
		$retval = $api->listUpdateMember( $lID, $memberEmail, $merge_vars, 'html', false );
		
	}
}
?>