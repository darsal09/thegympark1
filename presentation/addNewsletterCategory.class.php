<?php
class addNewsletterCategory
{
	public $mTitle 	= "";
	public $mDesc 	= "";
	public $mFilterID = 0;
	
	public $mMenu;
	
	public $mCategoryID = 0;

	public $mLinkToNewFilter = '';
	
	public function __construct()
	{					
		if( isset( $_POST[ 'tgp_newsletter_category_save' ] ) )
			$this->saveCategory();
			
		$this->mLinkToNewFilter = Link::Build( 'addNewsletterFilter' );
		
	}
	
	public function init()
	{
		if( isset( $_GET[ 'tgp_newsletter_category_id' ] ) )
			$this->getCategories();

		$this->mFilters = newsletters::getFilters();
		
		$this->setMenu();
	}
	
	private function getcategories()
	{
		if( !isset( $_GET[ 'tgp_newsletter_category_id' ] ) )
			return;
			
		$this->mCategoryID = intval( $_GET[ 'tgp_newsletter_category_id' ] );
		$category = newsletters::getCategory( $this->mCategoryID );
			
		$this->mTitle = $category[ 'title' ];
		$this->mDesc = $category[ 'description' ];
	}
	
	private function saveCategory()
	{
		if( !isset( $_POST['tgp_newsletter_category_title' ] ) )
			return;
			
		$this->mTitle = $_POST[ 'tgp_newsletter_category_title' ];
		$this->mDesc = $_POST[ 'tgp_newsletter_category_description' ];		
		$this->mFilterID = intval( $_POST[ 'tgp_newsletter_category_filter' ] );
		
		if( !empty( $this->mTitle ) )
			newsletters::addCategory( $this->mTitle, $this->mDesc, $this->mFilterID );		
		
		header( 'Location:'.Link::Build( 'newsletterCategories' ) );
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
	
	public function __destruct()
	{
		$this->mMenu = '';
		$this->mCateogries = '';
		$this->mFilters = '';
	}
}
?>