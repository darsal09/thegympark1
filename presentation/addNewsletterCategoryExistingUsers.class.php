<?php
class addNewsletterCategoryExistingUsers
{
	public $mCategory;
	public $mMenu;
	
	public $mMembers;
	public $mNewsletterCategoryID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_newsletter_category_id' ] ) )
			$this->mNewsletterCategoryID = intval( $_GET[ 'tgp_newsletter_category_id' ] );
		
		if( isset( $_POST[ 'tgp_newsletter_category_existing_users_save' ] ) )
			newsletters::addExistingUsersToCategory( $this->mNewsletterCategoryID, $_POST[ 'tgp_newsletter_category_existing_users' ] );
			
	}
	
	public function init()
	{
		$this->mCategory = newsletters::getCategory( $this->mNewsletterCategoryID );
		$this->mMembers = newsletters::getCategoryNonMembers( $this->mNewsletterCategoryID );
		$this->mExistingMembers = newsletters::getCategoryMembers( $this->mNewsletterCategoryID );
		
		$this->setMenu();
	}
	
	private function setMenu()
	{		
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'admin/newsletter' ),
													'link_title' => "Go to newsletters admin page",
													'title' => "Newsletter Admin" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'newsletterCategories' ),
													'link_title' => "Go to newsletter categories",
													'title' => "Categories" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'newsletter/category-info/'.$this->mCategory[ 'id' ] ),
													'link_title' => 'go back to category, '.$this->mCategory[ 'title' ],
													'title' => "Category" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'category-'.$this->mCategory[ 'id' ].'/addNewUser' ),
													'link_title' => 'Add new user to category, '.$this->mCategory[ 'title' ],
													'title' => "Add New User" );
	}
	
}
?>