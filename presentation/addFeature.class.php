<?php
class addFeature
{

	public function __construct()
	{
		if( isset( $_GET[ 'tgp_membership_id' ] ) )
			$this->mMembershipID = intval( $_GET[ 'tgp_membership_id' ] );
			
		$this->mLinkToAddFeature = Link::Build( 'membership-'.$this->mMembershipID.'/addFeature' );
		
		if( isset( $_POST[ 'tgp_feature_save' ] ) )
		{
			$title 		=  $_POST[ 'tgp_feature_title' ];
			$quantity 	=  $_POST[ 'tgp_feature_quantity' ];
			
			$result = memberships::addFeature( $title, $quantity );
		}
	}
}
?>