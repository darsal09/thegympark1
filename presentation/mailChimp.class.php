<?php
require_once BUSINESS_DIR."/MCAPI.class.php";

class mailChimp
{
	public $mMailChimp;
	public $mIsConnected = false;
	
	public function __construct()
	{
		if( isset( $_POST[ 'list_unsubscribe' ] ) )
			$this->unsubscribeList();
		
		if( isset( $_POST[ 'campain_unsubscribe' ] ) )
			$this->unsubscribeCampaign();
	}
	
	public function init()
	{
		$this->mMailChimp = mailChimpModel::get( array( ':title' => 'MailChimp' ) );
	}
	
	private function unsubscribeList()
	{
		if( !isset( $_POST[ 'list_unsubscribe' ] ) && !isset( $_POST[ 'list_id' ] ) )
			return;
			
		$lID = sanitize::sani( $_POST[ 'list_id' ], 'STRING' );
		
		listModel::unsubscribe( $lID );
	}
	
	private function unsubscribeCampaign()
	{
		if( !isset( $_POST[ 'campaign_unsubscribe' ] ) && !isset( $_POST[ 'campaign_id' ] ) )
			return;
			
		$cID = sanitize::sani( $_POST[ 'campaign_id' ], 'STRING' );
		
		campaignModel::unsubscribe( $cID );
	}
}

?>