<?php
class requestPassword
{
	public $mP = array( ':email' => '' );
	public $mErrors = array( ':email' => false );
	public $mReq = array( ':email' => true );
	
	public $mLinkToLogin;
	public $mLinkToSignUp;
	
	public function __construct()
	{
		if( isset( $_POST[ 'request_password' ] ) )
			$this->save();
	}
	
	public function init()
	{
		$this->mLinkToLogin = Link::Build( 'sign-in' );
		$this->mLinkToSignUp = Link::Build( 'sign-up' );
	}
	
	private function save()
	{
		if( !isset( $_POST[ 'request_password' ] ) )
			return;
		
		$this->mP = sanitize::filterInputs( 'POST', array( ':email' => FILTER_SANITIZE_EMAIL ) );
		
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		if( in_array( true, $this->mErrors ) )
			return;
			
		$result = requestPasswordModel::get( $this->mP );
		
		if( !is_array( $result ) )
		{
			$this->mErrors[ 'errors' ] = true;
			return;
		}	
		
		$message = '<p>'.$result[ 'first' ].',<br/>';
		$message .= 'Here is your password for you login to  The Gym Park System: <br/>';
		$message .= symmetricCrypt::Decrypt( $result[ 'uPswd' ] ).'</p>';
		$message .= '<p>You can go <a href="'.Link::Build( 'sign-in' ).'">log in</a></p>';
		$message .= '<p>Thanks, <br/>
						The Gym Park<br/>
						81 Oak Street
						Greenpoint, NY 11222</p>';
						
		if( emailModel::send( array( ':name' => $result[ 'first' ], ':subject' => 'Password request to The Gym Park System', ':message' => $message, ':email' => $result[ 'uEmail' ], 'pID' => 0, 'cID' => 0, 'clID' => 0, 'ctID' => 0, ':uID' => $result[ 'id' ], ':sID' => 0 ) ) )
		{
			$_SESSION[ 'password' ][ 'sent' ] = array( 'name' => $result[ 'first' ], 'email' => $result[ 'uEmail' ] );
			
			header( 'Location:'.Link::Build( 'password/sent' ) );
			exit;
		}
		
	}
}
?>