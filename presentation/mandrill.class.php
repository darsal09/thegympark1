<?php
require_once BUSINESS_DIR.'/mandrillModel.class.php';

class mandrill
{
	public $mP;
	
	public function __construct()
	{
		if( isset( $_POST[ 'mandrill_api_key_update' ] ) )
			$this->update();
	}
	
	public function init()
	{
		$this->mP = mandrillModel::getAPIKey( 'Mandrill' );
	}
	
	private function update()
	{
		if( !isset( $_POST[ 'mandrill_api_key_update' ] ) )
			return;
			
		$mP[ ':apiKey' ] = sanitize::sani( $_POST[ 'mandrill_api_key' ], 'STRING' );
		$mP[ ':title' ] = sanitize::sani( $_POST[ 'maindrill_api_key_title' ], 'STRING' );
		
		if( isset( $_POST[ 'mandrill_api_key_id' ] ) )
			$mP[ ':akID' ] = sanitize::sani( $_POST[ 'mandrill_api_key_id' ], 'INTIGER' );
			
		
		if( empty( $mP[ 'apiKey' ] ) )
			return;
			
		mandrillModel::update( $mP );
	}
}
?>