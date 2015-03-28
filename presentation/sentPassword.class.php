<?php
class sentPassword
{	
	public $mP;
	
	public $mLinkToLogin;
	public $mLinkToSignUp;
	
	public function __construct()
	{
		if( !isset( $_SESSION[ 'password' ][ 'sent' ] ) )
		{
			header( 'Location:'.Link::Build( 'password/request' ) );
			exit;
		}
	}
	
	public function init()
	{
		$this->mP = $_SESSION[ 'password' ][ 'sent' ];
		
		$this->mLinkToLogin = Link::Build( 'sign-in' );
		$this->mLinkToSignUp = Link::Build( 'sign-up' );
	}	
}
?>