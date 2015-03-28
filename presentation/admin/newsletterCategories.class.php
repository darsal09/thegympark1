<?php
class newsletterCategories
{
	public $mCategories;
	public $mMenu;
		
	public function __construct()
	{		
	}
	
	public function init()
	{
		$this->mCategories = newsletters::getCategories();
		$this->setLinks();		
		$this->setMenu();
	}
	
	private function setLinks()
	{
		$size = sizeof( $this->mCategories );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$this->mCategories[ $i ][ 'link_to_view_category' ] 				= Link::Build( 'newsletter/category-info/'.$this->mCategories[ $i ][ 'id' ] );
			$this->mCategories[ $i ][ 'link_to_delete_category' ] 				= Link::Build( 'newsletter/category-'.$this->mCategories[ $i ][ 'id' ].'/deleteNewsletterCategory' );
			$this->mCategories[ $i ][ 'link_to_edit_category' ] 				= Link::Build( 'newsletter/category-'.$this->mCategories[ $i ][ 'id' ].'/editCategory' );
			$this->mCategories[ $i ][ 'link_to_add_category_new_user' ] 		= Link::Build( 'newsletter/category-'.$this->mCategories[ $i ][ 'id' ].'/addNewsletterMember' );
			$this->mCategories[ $i ][ 'link_to_add_category_existing_user' ]	= Link::Build( 'newsletter/category-'.$this->mCategories[ $i ][ 'id' ].'/addExistingUser' );
			
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
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'addNewsletterCategory' ),
													'link_title' => "Add a new category",
													'title' => "Add New Category" );
	}

}
?>