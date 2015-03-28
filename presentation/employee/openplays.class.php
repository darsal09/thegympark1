<?php
class openplays
{
	public function __constuct()
	{
		if( !user::isEmployee() )
			helper::redirect( 'sign-in' );
			
		helper::redirect( 'employee/open-plays/current' );
	}
	
	public function init()
	{
	
	}
}
?>