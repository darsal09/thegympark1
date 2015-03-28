<?php
class controllerLoggedIn
{	
	public $mHasMembership = false;
	
	public $mUserName;
	
	public function __construct()
	{	
		if( !user::isLoggedIn() )
		{
			header( 'Location:sign-in' );
			exit;
		}
		
		switch( user::isAdmin() )
		{
			case 'A':
				helper::redirect( 'admin' );
				break;
				
			case 'E':
				helper::redirect( 'employee' );
				break;
				
			case 'I':
				helper::redirect( 'instructor' );
				break;
			
			default:
				$this->mContent = "loggedIn.tpl";
				break;
		}		
	}
}
?>