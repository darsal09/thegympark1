<?php
class addNewsletter
{
	public $mTitle;
	public $mNewsletterID;
	public $mMessage;
	public $mMenu;
	
	public $mLinkToNewsletters;
	public $mLinkToSendNewsletter;
	public $mLinkToNewsletterAdmin; 
	
	public function __construct()
	{		
		if( isset( $_POST[ 'tgp_newsletter_id' ] ) )
			$this->editNewsletter();
		else if( isset( $_POST[ 'tgp_newsletter_new' ] ) )
			$this->addNewNewsletter();
		else
		{
			if( isset( $_GET[ 'tgp_newsletter_id' ] ) )
				$this->mNewsletterID = intval( $_GET[ 'tgp_newsletter_id' ] );
				
			$newsletter = newsletters::getNewsletter( $this->mNewsletterID );
			
			$this->mTitle = $newsletter[ 'title' ];
			$this->mMessage = stripslashes( html_entity_decode( $newsletter[ 'message' ] ) );
		}
		
		$this->setMenu();
	}
	
	private function addNewNewsletter()
	{
		if( !isset( $_POST[ 'tgp_newsletter_new' ] ) )
			return;
		
		if( isset( $_POST[ 'tgp_newsletter_title' ] ) )
			$this->mTitle = $_POST[ 'tgp_newsletter_title' ];
		
		if( isset( $_POST[ 'tgp_newsletter_message' ] ) )
			$this->mMessage = htmlentities( $_POST[ 'tgp_newsletter_message' ] );
				
		if( !empty( $this->mMessage ) && !empty( $this->mTitle ) )
			$this->mNewsletterID = newsletters::addNewsletter( $this->mTitle, $this->mMessage );	
	}
	
	private function editNewsletter()
	{
		if( !isset( $_POST[ 'tgp_newsletter_id' ] ) )
			return;
			
		$this->mNewsletterID = intval( $_POST[ 'tgp_newsletter_id' ] );
		
		$this->mTitle = $_POST[ 'tgp_newsletter_title' ];
		
		$this->mMessage = htmlentities( $_POST[ 'tgp_newsletter_message' ] );
				
		newsletters::updateNewsletter( $this->mNewsletterID, $this->mTitle, $this->mMessage );			
	}
	
	private function setMenu()
	{
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'admin/newsletter' ),
													'link_title' => "Go to newsletters admin page",
													'title' => "Newsletter Admin" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'newsletters' ),
													'link_title' => "Go to newsletters",
													'title' => "Newsletters" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'newsletterCategories' ),
													'link_title' => "Go to newsletter categories",
													'title' => "Categories" );
		if( $this->mNewsletterID > 0 )
			$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'newsletter-'.$this->mNewsletterID.'/sendNewsletter' ),
													'link_title' => "Send newsletter",
													'title' => "Send Newsletter" );
	}
}
?>