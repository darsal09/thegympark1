<?php
class logOff
{
	public function __construct()
	{	
		if( user::logOff() )
			header( 'Location:sign-in' );
	}
}
?>