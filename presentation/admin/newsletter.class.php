<?php
class newsletter
{
	public $mNewsletter;
	public $mSubject = "";
	public $mNewsletterID;
		
	public function __construct()
	{
		if( !user::isAdmin() )
		{
			header( 'Location:'.Link::Build( '' ) );
			exit;
		}
		
		if( isset( $_GET[ 'tgp_newsletter_id' ] ) )
			$this->mNewsletterID = sanitize::sani( $_GET[ 'tgp_newsletter_id' ], 'INTIGER' );
		
		if( isset( $_POST[ 'tgp_newsletter_send' ] ) )
			$this->sendNewsletter();
			
	}
	
	public function init()
	{
		$this->mFilters = newsletters::getFilters();

		$this->mNewsletter = newsletters::getNewsletter( $this->mNewsletterID );
		
		$this->setLinks();
	}
	
	private function setLinks()
	{		
		$this->mNewsletter[ 'message' ] = stripslashes( html_entity_decode( $this->mNewsletter[ 'message' ] ) );
		
		$this->mNewsletter[ 'link_to_edit' ] = Link::Build( 'admin/newsletters/'.$this->mNewsletterID.'/edit' );
		
		$this->mLinks[] = array( 'title' => '&laquo;Admin', 'link' => Link::Build( 'admin' ) );
		$this->mLinks[] = array( 'title' => 'Newsletters', 'link' => Link::Build( 'admin/newsletters' )  );
	
	}
	
	private  function sendNewsletter()
	{	
		if( isset( $_POST[ 'tgp_newsletter_subject' ] ) )
			$this->mSubject = sanitize::sani( $_POST[ 'tgp_newsletter_subject' ], 'STRING' );
		/*
		newsletters::sendNewsletterToClasses( newsletters::getNewsletter( $this->mNewsletterID ), $_POST[ 'tgp_newsletter_subject' ], $this->getStudents() );
		ini_set( 'smtp_server', 'smtp.gmail.com' );
		ini_set( 'smtp_port', '25' );
		ini_set( 'auth_username', 'dmsservices@gmail.com' );
		ini_set( 'auth_password', 'soccer09' );
		*/
		
		switch( $_POST[ 'tgp_newsletter_filter' ] ) 
		{
			case 'Age': //already tested
				$flag = newsletters::sendNewsletterToAge( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_age_start' ], $_POST[ 'tgp_age_end' ] );
				break;
			
			case 'Category'://already tested
				$flag = newsletters::sendNewsletterToCategory( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_category' ] );				
				break;
				
			case 'Day': //already tested
				$flag = newsletters::sendNewsletterToDay( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_newsletter_days' ] );
				break;

			case 'Class': //already tested
				$flag = newsletters::sendNewsletterToClasses( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_class' ] );	
				break;
				
			case 'Class Title': //already tested
				$flag = newsletters::sendNewsletterToClassTitles( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_classtitle' ] );
				break;
				
			case 'Month': //already tested
				$flag = newsletters::sendNewsletterToMonth( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_newsletter_month_start' ], $_POST[ 'tgp_newsletter_month_end' ] );
				break;
				
			case 'Newsletter Categories':
				$flag = newsletters::sendNewsletterToNewsletterCategories( $this->mNewsletterID, $this->mSubject, $_POST[ 'tgp_newsletter' ] );
				//return filters::getNewsletterType( $_POST[ 'tgp_newsletter' ] );
				break;
				
			case 'Program': //already tested
				$flag = newsletters::sendNewsletterToProgram( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_program' ] );
				break;
								
			case 'Time': //already tested
				$flag = newsletters::sendNewsletterToTime( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_filter_start_time' ], $_POST[ 'tgp_filter_end_time' ] );
				break;
				
			default:
				return false;
				break;
		}	
	}
}
?>