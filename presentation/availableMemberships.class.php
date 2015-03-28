<?php
class availableMemberships
{	
	public $mIsAdmin;
	public $mMemberships;
	
	public $mLinkToAddMembership;
	
	public function __construct()
	{
		$this->mMemberships = memberships::getMemberships();
		$this->setLinks();
		$this->mIsAdmin = user::isAdmin();
		$this->mLinkToAddMembership = Link::Build( 'addMembership' );
	}
	private function setLinks()
	{
		$size = sizeof( $this->mMemberships );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$this->mMemberships[ $i ][ 'membership_link' ] = Link::Build( 'membership/'.$this->mMemberships[ $i ][ 'id' ] );
		}
	}
}
?>