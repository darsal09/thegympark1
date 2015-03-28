<?php
class adminMemberships
{
	public $mLinkToHome;
	public $mLinkToGold;
	public $mLinkToSilver;
	public $mLinkToBronze;
	
	public $mIsAdmin;
	public $mIsLoggedIn;
	public $mIsRegular;
	
	public $mMemberships;
	
	public function __construct()
	{
		if( user::hasMembership() )
		{
			header( 'Location:'.Link::Build( 'membership' ) );
			exit;
		}
		
		$this->mIsLoggedIn = user::isLoggedIn();
		$this->mIsRegular = user::isRegular();
		
		$this->mIsAdmin = user::isAdmin();
		
		$this->mLinkToHome = Link::Build( '' );
		
		$this->mLinkToGold = Link::Build( 'gold' );
		$this->mLinkToSilver = Link::Build( 'silver' );
		$this->mLinkToBronze = Link::Build( 'bronze' );
	
		$this->mMemberships = memberships::getMemberships();
		$this->setLinksAndGetFeatures();
	}
	
	private function setLinksAndGetFeatures()
	{
		for( $i = 0; $i < sizeof( $this->mMemberships ); $i++ )
		{
			$this->mMemberships[ $i ][ 'link_to_membership' ] = Link::Build( 'membership-'.$this->mMemberships[ $i ][ 'id' ].'/'.$this->mMemberships[ $i ][ 'type' ] );
			$this->mMemberships[ $i ][ 'features' ] = memberships::getMembershipFeatures( $this->mMemberships[ $i ][ 'id' ] );
		}
	}
}
?>