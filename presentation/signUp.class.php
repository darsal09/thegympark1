<?php
class signUp
{
	public $mErrors = "";
	public $mError = false;
	public $mPasswordError = false;
	public $mRepasswordError = false;
	public $mUserNameError = false;
	public $mUserEmailError = false;
	public $mUserAlreadyExist = false;
	public $mLinkToLogin = "";
	
	public function __construct()
	{
		if( user::isLoggedIn() )
		{
			header( 'Location:'.Link::Build( 'logged-in' ) );
			exit;
		}
		$this->mLinkToSignUp = Link::Build( 'register' );
		
		if( isset( $_POST[ 'tgp_signUp' ] ) )
		{	
			$this->mLinkToLogin = Link::Build( 'sign-in' );

			$name = $_POST[ 'tgp_signUp_name' ];
			$email = $_POST[ 'tgp_signUp_email' ];
			$pswd = $_POST[ 'tgp_signUp_pswd' ];
			$repswd = $_POST[ 'tgp_signUp_repswd' ];
			
			$pswd1 = symmetricCrypt::Encrypt( $_POST[ 'tgp_signUp_pswd' ] );
			$repswd1 = symmetricCrypt::Encrypt( $_POST[ 'tgp_signUp_repswd' ] );
				
			if( $name == "" )
			{
				$this->mUserNameError = true;
				$this->mError = true;
			}
				
			if( $email == "" )
			{
				$this->mUserEmailError = true;
				$this->mError = true;
			}
			if( $pswd1 != $repswd1 || $_POST[ 'tgp_signUp_pswd' ] == "" )
			{
				$this->mPasswordError = true;
				$this->mRepasswordError = true;
				$this->mError = true;
				$this->mErrors = "Password and re-password don't match.<br/>";
			}
				
			/*
				If there is no errors then sign the user up
			*/
			if( !$this->mError )
			{	
				if( user::signUp( $name, $email, $pswd ) )
				{	
					header( 'Location:logged-in' );
					exit;
				}
				else
				{	
					$this->mUserAlreadyExist = true;
					$this->mErrors .= 'There was an error accessing the database. Please try again later!';
					$this->mError = true;
					$this->mPasswordError = true;
					$this->mRepasswordError = true;
				}
			}
			else
				$this->mErrors .= 'You have errors in the following input fields.';
		}
	}
}
?>