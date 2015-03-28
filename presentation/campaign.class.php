<?php

require_once BUSINESS_DIR.'/campaignModel.class.php';

class campaign
{
	public $mCampaign;
	
	public function __construct()
	{
		if( !isset( $_GET[ 'campaign_id' ] ) )
		{
			header( 'Location:index.php?action=mailChimp' );
			exit;
		}
		
		$this->mCID = sanitize::sani( $_GET[ 'campaign_id' ], 'STRING' );
	}
	
	public function init()
	{
		$this->mCampaign = campaignModel::get( array( 'cID' => $this->mCID ) );
	}
	
	
}
?>