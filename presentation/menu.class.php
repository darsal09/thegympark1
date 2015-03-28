<?php
class menu
{
	public $mLinkToIndex;
	public $mLinkToEtiquette;
	public $mLinkToMyAccount;
	public $mLinkToSignIn;
	public $mLinkToSignUp;
	public $mLinkToLogOff;
	public $mLinkToMyHomePage;
	public $mLinkToCart;
	public $mLinkToMembership;
	
	public $mLogIn = false;
	public $mEmptyCart = true;
	
	public function __construct()
	{
		$this->mLinkToIndex = Link::toIndex();
		$this->mLinkToEtiquette = Link::Build( 'etiquette' );
		$this->mLinkToMyAccount = Link::Build( 'my-account' );
		$this->mLinkToSignIn = Link::Build( 'sign-in' );
		$this->mLinkToSignUp = Link::Build( 'register' );
		$this->mLinkToLogOff = Link::Build( 'log-off' );
		$this->mLinkToMyHomePage = Link::Build( 'logged-in' );
		$this->mLinkToMembership = Link::Build( 'memberships' );
		$this->mLinkToProgram = Link::Build( 'index.php?action=categories' );
		$this->mLinkToClassSchedule = Link::Build( 'index.php?action=weekly' );
		
		$this->mLogIn = user::isLoggedIn();	
		$this->mEmptyCart = shoppingCart::isEmpty();
		$this->mLinkToCart = Link::Build( 'cart' );
	}
	
}
?>