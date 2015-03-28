<?php
class membership
{	
	public $mMembership;
	
	public $mMembershipID;
	
	public $mLinkToEdit;
	public $mLinkToAddAttribute;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_membership_id' ] ) )
			$this->mMembershipID = intval( $_GET[ 'tgp_membership_id' ] );
			
		$this->mMembership = memberships::getMembership( $this->mMembershipID );
		$this->mAttributes = memberships::getAttributes( $this->mMembershipID );
		
		$this->mLinkToEdit = "";
		$this->mLinkToAddAttribute = Link::Build( 'membership-'.$this->mMembershipID.'/addAttribute' );
		$this->mIsAdmin = user::isAdmin();
		
		if( $this->mIsAdmin )
			$this->setLinks();
	}
	private function setLinks()
	{
		for( $i = 0; $i < sizeof( $this->mAttributes ); $i++ )
		{
			$this->mAttributes[ $i ][ 'link_to_attribute' ] = Link::Build( 'feature/'.$this->mAttributes[ $i ][ 'id' ] );
		}
	}
}
?>