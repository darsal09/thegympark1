<?php
class myMemberModel
{
	private function __construct()
	{
	
	}
	
	public static function getClasses( $mP )
	{
		return student::getClasses( $mP );
	}
	
	public static function getOpenPlays( $mP )
	{
		return;
	}
}
?>