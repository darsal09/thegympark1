<?php
class newsletterSetUp
{
	public $mAPIKey;
	public $mP;
	
	public function __construct()
	{
		if( isset( $_POST[ 'update_mailchimp_api_key' ] ) )
			$this->updateAPIKey();
	}
	
	public function init()
	{
		$this->mAPIKey = mailChimpModel::getAPIKey( array( ':title' => 'MailChimp' ) );
		
	}
	
	private function updateAPIKey()
	{
		if( !isset( $_POST[ 'update_mailchimp_api_key' ] ) )
			return;
			
		$mP[ ':apiKey' ] 	= sanitize::sani( $_POST[ 'mailchimp_api_key' ], 'STRING' );
		
		$mP[ ':title' ] = sanitize::sani( $_POST[ 'mailchimp_title' ], 'STRING' );
		
		if( isset( $_POST[ 'mailchimp_api_key_id' ] ) )
			$mP[ ':akID' ] = sanitize::sani( $_POST[ 'mailchimp_api_key_id' ], 'INTIGER' );
			
		mailchimpModel::updateAPIKey( $mP );
		
		header( 'Location:index.php?action=mailChimp' );
		exit;
	}
}
?>