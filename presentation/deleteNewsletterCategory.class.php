<?php

class deleteNewsletterCategory
{
	public $mMenu;
	public $mCategory;
	public $mCategoryID;
	
	public $mCanDelete = true;
	
	
	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_newsletter_category_id' ] ) )
		{
			header( 'Location:'.Link::Build( '' ) );
			exit;
		}
		
		$this->mCategoryID = intval( $_GET[ 'tgp_newsletter_category_id' ] );
		
		if( isset( $_POST[ 'tgp_newsletter_delete_category' ] ) )
		{
			$result = intval( $this->deleteCategory() );

			if( $result == 1 )
			{
				header( 'Location:'.Link::Build( 'newsletterCategories' ) );
				exit;
			}
			
			$this->mCanDelete = false;
		}
	}
	
	public function init()
	{
		$this->mCategory = newsletters::getCategory( $this->mCategoryID );
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
	}
	
	private function deleteCategory()
	{
		if( !isset( $_POST[ 'tgp_newsletter_delete_category_option' ] ) || $_POST[  'tgp_newsletter_delete_category_option' ] === "N" )
			return;

		return newsletters::deleteCategory( $this->mCategoryID );
	}
}

?>