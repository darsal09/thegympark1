<?php
class sendNewsletter
{
	public $mNewsletterID;
	public $mNewsletters;
	public $mMenu;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_newsletter_id' ] ) )
			$this->mNewsletterID = intval( $_GET[ 'tgp_newsletter_id' ] );
			
		if( isset( $_POST[ 'tgp_newsletters_send_newsletter' ] ) )
			$this->sendNewsletter();
	}
	
	public function init()
	{
		if( $this->mNewsletterID > 0 )
		{
			$this->mNewsletters = newsletters::getNewsletter( $this->mNewsletterID );
			$this->mNewsletters[ 'link_to_newsletter' ] = Link::Build( 'newsletter-info/'.$this->mNewsletters[ 'newsletter_id' ] );
			$this->mNewsletters[ 'message'  ] = stripslashes( html_entity_decode( $this->mNewsletters[ 'message' ] ) );
		}
		
		if( $this->mNewsletterID < 1 )
		{
			$this->mNewsletters = newsletters::getNewsletters();
			$this->setLinks();
		}
		
		$this->mCategories = newsletters::getCategories();
		$this->mMembers = newsletters::getMembers();
		$this->mFilters = newsletters::getFilters();
		
		$this->setMenu();
	}
	
	private function setLinks()
	{
		$size = sizeof( $this->mNewsletters );
				
		for( $i = 0; $i < $size; $i++ )
			$this->mNewsletters[ $i ][ 'link_to_newsletter' ] = Link::Build( 'newsletter-info/'.$this->mNewsletters[ $i ][ 'newsletter_id' ] );
	}
	
	private function sendNewsletter()
	{
		if( !isset( $_POST[ 'tgp_newsletters_send_newsletter' ] ) )
			return;
		
		if( $this->mNewsletterID < 1 )
			$this->mNewsletterID = sanitize::sani( $_POST[ 'tgp_newsletters_newsletter' ], 'INTIGER' );
		
		$season = null;
		if( isset( $_POST[ 'seasons' ] ) )
			$season = sanitize::sani( $_POST[ 'seasons' ], 'STRING' );		
		
		switch( $_POST[ 'tgp_newsletter_filter' ] ) 
		{
			case 'Age': //already tested but need to talk to Peter about the last part
				$flag = newsletters::sendNewsletterToAge( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_age_start' ], $_POST[ 'tgp_age_end' ], $season );
				break;
			
			case 'Category'://already tested
				$flag = newsletters::sendNewsletterToCategory( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_category' ], $season );				
				break;
				
			case 'Day': //already tested
				$flag = newsletters::sendNewsletterToDay( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_newsletter_days' ], $season );
				break;

			case 'Class': //already tested
				$flag = newsletters::sendNewsletterToClasses( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_class' ], $season );	
				break;
				
			case 'Class Title': //already tested
				$flag = newsletters::sendNewsletterToClassTitles( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_classtitle' ], $season );
				break;
				
			case 'Month': //already test
				$flag = newsletters::sendNewsletterToMonth( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_newsletter_month_start' ], $_POST[ 'tgp_newsletter_month_end' ], $season );
				break;
				
			case 'Newsletter Categories':
				$flag = newsletters::sendNewsletterToNewsletterCategories( $this->mNewsletterID, $this->mSubject, $_POST[ 'tgp_newsletter' ], $season );
				//return filters::getNewsletterType( $_POST[ 'tgp_newsletter' ] );
				break;
				
			case 'Program': //already tested
				$flag = newsletters::sendNewsletterToProgram( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_program' ], $season );
				break;
								
			case 'Time': //already tested
				$flag = newsletters::sendNewsletterToTime( $this->mNewsletterID, $_POST[ 'tgp_newsletter_subject' ], $_POST[ 'tgp_filter_start_time' ], $_POST[ 'tgp_filter_end_time' ], $season );
				break;
				
			default:
				return false;
				break;
		}	
	}
	
	private function setMenu()
	{
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'admin/newsletter' ),
													'link_title' => "Go to newsletters admin page",
													'title' => "Newsletter Admin" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'newsletterCategories' ),
													'link_title' => "Go to newsletter categories",
													'title' => "Categories" );
	}
}
?>