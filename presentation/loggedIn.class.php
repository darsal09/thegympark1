<?php
class loggedIn
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
		
		if( user::isAdmin() )
			helper::redirect( 'admin' );
		
		if( user::isEmployee() )
			helper::redirect( 'employee' );
		
		$hasMembership = user::hasMembership();
		
		if( $hasMembership == 0 )
			$this->mHasMembership = false;
		else
			$this->mHasMembership = true;
			
		$this->mUserName = user::getName();
	}
}
?>