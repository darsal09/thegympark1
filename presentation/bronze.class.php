<?php
class bronze
{
	public $mMembership;
	public $mFeatures;
	
	public $mOptions;
	
	public $mMembserhipID = 0;
	public $mHasMembership;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_membership_id' ] ) )
			$this->mMembershipID = intval( $_GET[ 'tgp_membership_id' ] );
			
		$this->mMembership = memberships::getMembership( $this->mMembershipID );
		$this->mFeatures = memberships::getAttributes( $this->mMembershipID );
		$this->mHasMembership = user::hasMembership();
		
		if( isset( $_POST[ 'tgp_membership_bronze_register' ] ) )
			$register = shoppingCart::addMembership( $this->mMembershipID );
	}
}
?>