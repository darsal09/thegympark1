<?php
class gold
{
	public $mMembershipID;
	public $mAttributes;
	
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_membership_id' ] ) )
			$this->mMembershipID = intval( $_GET[ 'tgp_membership_id' ] );
			
		$this->mMembership = memberships::getMembership( $this->mMembershipID );	
		
		$this->mAttributes = memberships::getAttributes( $this->mMembershipID );
		
		$this->mOptions = memberships::getAttributeOptions( $this->mMembershipID );
	}
}
?>