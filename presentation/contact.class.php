<?php
class contact
{
	public $mMessageSent = false;
	public $mErrors = NULL;
	public $mError = false;
	public $mContactNameError = false;
	public $mContactEmailError = false;
	public $mContactSubjectError = false;
	public $mContactMessageError = false;
	
	public function __construct()
	{
		if( isset( $_POST[ 'lms_contact_submit' ] ) )
		{			
				$name 		= $_POST[ 'lms_contact_name' ];
				$email 		= $_POST[ 'lms_contact_email' ];
				$subject 	= $_POST[ 'lms_contact_subject' ];
				$message 	= $_POST[ 'lms_contact_message' ];
				
				if( $name == "" )
				{
					$this->mContactNameError = true;
					$this->mError = true;
				}
				
				if( $email == "" )
				{
					$this->mContactEmailError = true;
					$this->mError = true;
				}
				if( $_POST[ 'lms_contact_subject' ] == "" )
				{
					$this->mContactSubjectError = true;
					$this->mError = true;
				}
				if( $_POST[ 'lms_contact_message' ] == "" )
				{
					$this->mContactMessageError = true;
					$this->mError = true;
				}
				
				if( !$this->mError )
				{	
					//send message
					$to = "darsal09@yahoo.com";
					
					mail( $to, $subject, $message );
				}
				else
				{
					$this->mErrors = 'You have errors in the following input fields.';
				}
		}
	}
}
?>