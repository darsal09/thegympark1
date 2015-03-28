<?php
class addNewsletterMember
{
	public $mMenu;
	public $mP = array( ':Name' => '',':Email' => '' );
	public $mErrors = array( ':Name' => false, ':Email' => false );
	
	public $mCategoryID = 0;
	
	private $_mRequired = array( ':Name' => true, ':Email' => true );
	
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_newsletter_category_id' ] ) )
			$this->mCategoryID = intval( $_GET[ 'tgp_newsletter_category_id' ] );
			
		if( isset( $_POST[ 'tgp_newsletter_member_save' ] ) )
			$this->saveMember();
	}
	
	public function init()
	{
		$this->setMenu();
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
	}
	
	private function saveMember()
	{
		if( !isset( $_POST[ 'tgp_newsletter_member_save' ] ) )
			return;
		
		$this->mP[ ':Name' ] 	= sanitize::sani( $_POST[ 'tgp_newsletter_member_name' ], 'STRING' );
		$this->mP[ ':Email' ] 	= sanitize::sani( $_POST[ 'tgp_newsletter_member_email' ], 'EMAIL' );
		
		if( $this->hasErrors() )
			return;
		
		newsletters::addNewMember( $this->mP );
			
		header( 'Location:'.Link::Build( 'newsletterMembers' ) );
		exit;
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
			if( $this->_mRequired[ $field ] && empty( $value ) )
				$this->mErrors[ $field ] = true;
				
		return in_array( true, $this->mErrors );
	}
}
?>