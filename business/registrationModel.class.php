<?php

class registrationModel
{
	private function __construct()
	{
	
	}
	
	/*
		a guest is someone who has not taken a class at the gym and does not exist in the database
		In this case:
		The we check to make sure that the user is not a member in the system. 
			If s/he is a member then we have them log in and continue the process
			If s/he is not a member we create a member log in to keep track of their info and future registration and will recieve an email letting them know that they have a new login info to our website
			
		Then we add the information of the user in the family tree as the person who holds the login information. The rest of the family members are inputted dependant of their relationship to the user holder
		However, this does not apply to minors. In minors situation, the primary parent holds the user account. S/he will receive the information to be able to log in the system.
		
		
	*/
	public static function guest( $mP )
	{
		switch( )
		{			
			case 'Parent':
				child::parentSignUp( $mP );
				break;
				
			case 'Caregiver':
				child::caregiverSignUp( $mP );
				break;
				
			case 'Relative':
				child::relativeSignUp( $mP );
				break;
			
			default:
				adult::signUp( $mP );
		}
	}
	
	public static function registered( $mP )
	{
		switch()
		{
			case 'Parent':
				child::parentSignUp( $mP );
				break;
				
			case 'Caregiver':
				child::caregiverSignUp( $mP );
				break;
				
			case 'Relative':
				child::relativeSignUP( $mP );
				break;
			
			default:
				adult::signUp( $mP );
				
		}
	}
}
?>