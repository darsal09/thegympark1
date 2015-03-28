<?php
class signIn
{
	public $mLoginError = false;
	public $mUserEmailError = false;
	public $mUserPasswordError = false;
	
	public $mP = array( 'tgp_signin_email' => '', 'tgp_signin_pswd' => '' );
	public $mErrors = array( 'tgp_signin_email' => false, 'tgp_signin_pswd' => false );
	public $mReq = array( 'tgp_signin_email' => true, 'tgp_signin_pswd' => true );
	
	public $mLinkToSignIn;
	public $mLinkToSignUp;
	public $mLinkToRequestPassword;
	
	public function __construct()
	{
		if( user::isLoggedIn() )
		{
			header( 'Location:'.Link::Build( 'logged-in' ) );
			exit;
		}
		
		if( isset( $_POST[ 'tgp_signIn' ] ) )
			$this->userLogin();
	}
	public function init()
	{
		$this->mLinkToSignIn = Link::Build( 'sign-in' );
		$this->mLinkToSignUp = Link::Build( 'register' );
		$this->mLinkToRequestPassword = Link::Build( 'password/request' );
	}
	
	private function userLogin()
	{
		if( !isset( $_POST[ 'tgp_signIn' ] ) )
			return;
			
		$email = $_POST[ 'tgp_signin_email' ];
		$pswd =  $_POST[ 'tgp_signin_pswd' ];
		$this->mP = sanitize::filterInputs( 'POST', array( 'tgp_signin_email' => FILTER_SANITIZE_EMAIL, 'tgp_signin_pswd' => FILTER_SANITIZE_STRING ) );
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
					
		if( in_array( true, $this->mErrors ) )
			return;
			
		if( user::logIn( array( ':email' => $this->mP[ 'tgp_signin_email' ], ':pswd' => $this->mP[ 'tgp_signin_pswd' ] ) ) )
		{
			header( 'Location:logged-in' );
			exit;
		}
		else
			$this->mErrors[ 'errors' ] = true;
			
		return;
	}
}
?>