<?php

class myAccount
{
	public $mErrors;
	public $mUserInfo;
	public $mLinkToAction;
	public $mEdit = false;
	public $mEditPassword = false;
	public $mUpdatePasswordError = false;
	
	public function __construct()
	{
		if( !user::isLoggedIn() )	
		{
			header( 'Location:sign-in' );
			exit;
		}

			if( isset( $_POST[ 'tgp_edit_user' ] ) )
				$this->mEdit = true;
				
			if( isset( $_POST[ 'tgp_edit_pswd' ] ) )
				$this->mEditPassword = true;
				
			if( isset( $_POST[ 'tgp_update_user' ] ) )
			{
				$name = $_POST[ 'tgp_edit_user_name' ];
				$email = $_POST[ 'tgp_edit_user_email' ];
				
				$sql = "CALL tgp_update_user( :name, :email, :id )";
				$params = array( ':name' => $name, ':email' => $email, ':id' => $_SESSION[ 'lms_id' ] );
				
				databaseHandler::Execute( $sql, $params );
				
				header( 'Location:my-account' );
				
				exit;
			}
			if( isset( $_POST[ 'tgp_change_pswd' ] ) )
			{
				$opswd = symmetricCrypt::encrypt( $_POST[ 'tgp_edit_opswd' ]  );
				$npswd = symmetricCrypt::Encrypt( $_POST[ 'tgp_edit_npswd' ] );
				$renpswd = symmetricCrypt::Encrypt( $_POST[ 'tgp_edit_re_npswd' ] );
								
				if( $npswd == $renpswd )
				{
					$sql = "CALL tgp_update_user_password( :opswd, :npswd, :id )";
					$params = array( ':opswd' => $opswd, ':npswd' => $npswd, ':id' => $_SESSION[ 'lms_id' ] );
					
					$result = databaseHandler::getOne( $sql, $params );
					
					if( $result != 1 )
					{
						$this->mEditPassword = true;
						$this->mUpdatePasswordError = true;
					}
				}
				else
				{
					$this->mUpdatePasswordError = true;
					$this->mEditPassword = true;
				}
			}
				$this->mLinkToAction = Link::Build( 'my-account' );
				
		
				$sql = "CALL tgp_get_user( :id )";
				$params = array( 'id' => $_SESSION[ 'tgp_id' ] );
				
				$this->mUserInfo = databaseHandler::getRow( $sql, $params );
			
				if( sizeof( $this->mUserInfo ) == 0 )
					$this->mErrors = true;
	}
}
?>