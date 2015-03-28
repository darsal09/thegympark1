<?php
class newsletterCategory
{
	public $mCategory;
	public $mMenu;
	
	public function __construct()
	{		
		if( isset( $_GET[ 'tgp_newsletter_category_id' ] ) )
			$this->mNewsletterCategoryID = intval( $_GET[ 'tgp_newsletter_category_id' ] );					
			
		$this->mMenu = array();
	}
	
	public function init()
	{
		$this->mCategory = newsletters::getCategory( $this->mNewsletterCategoryID );		
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
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'category-'.$this->mCategory[ 'id' ].'/deleteCategory' ),
													'link_title' => 'delete category, '.$this->mCategory[ 'title' ].', from the newsletter',
													'title' => "Delete" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'newsletter/category-'.$this->mCategory[ 'id' ].'/editCategory' ),
													'link_title' => 'Edit category, '.$this->mCategory[ 'title' ],
													'title' => "Edit" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'category-'.$this->mCategory[ 'id' ].'/addNewUser' ),
													'link_title' => 'Add new user to category, '.$this->mCategory[ 'title' ],
													'title' => "Add New User" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'newsletter/category-'.$this->mCategory[ 'id' ].'/addExistingUser' ),
													'link_title' => 'Add existing members in the newsletter system to this category, '.$this->mCategory[ 'title' ],
													'title' => "Add Existing User" );		
	}
	
	private function setMemberLinks()
	{
		$size = sizeof( $this->mMembers[ 'members' ] );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$member_id = $this->mMembers[ 'newsletter_category_members' ][ $i ][ 'id' ];
			
			$this->mMembers[ 'members' ][ $i ][ 'link_to_remove' ] = Link::Build( 'newsletter/category-'.$this->mCategoryID.'/member-'.$member_id.'/removeMember' );
			$this->mMembers[ 'newsletter_category_members' ][ $i ][ 'link_to_view_newsletter_member' ] = Link::Build( 'newsletter/category-'.$this->mCategoryID.'/member-'.$member_id );			
		}
	}
}
?>