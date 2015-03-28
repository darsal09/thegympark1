<?php
class addAttribute
{
	public $mFeatures;
	public $mMembership;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_membership_id' ] ) )
			$this->mMembershipID = intval( $_GET[ 'tgp_membership_id' ] );
		
		if( isset( $_POST[ 'tgp_membership_add_attributes' ] ) )
		{
			$attributes = $_POST[ 'tgp_attributes_options' ];
			
			foreach( $attributes AS $atr )
			{
				memberships::addAttribute( $this->mMembershipID, $atr );
			}
			
			header( 'Location:'.Link::Build( 'membership/'.$this->mMembershipID ) );
		}
		
		$this->mMembership = memberships::getMembership( $this->mMembershipID );
		
		$this->mFeatures = memberships::getFeatures( $this->mMembershipID );
		$this->mLinkToFeature = Link::Build( 'membership-'.$this->mMembershipID.'/addFeature' );
		$this->mLinkToAddAttribute = Link::Build( 'membership-'.$this->mMembershipID.'/addAttribute' );
	}
}
?>