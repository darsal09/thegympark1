<?php
class removeNewsletterCategoryMember
{
	public $mMenu;
	public $mCategory;
	public $mMember;
	
	public $mCategoryID;
	public $mMemberID;

	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_newsletter_category_id' ] ) && !isset( $_GET[ 'tgp_newsletter_member_id' ] ) )
		{
			header( 'Location:'.Link::Build( 'logged-in' ) );
			exit;
		}
		
		$this->mCategoryID = intval( $_GET[ 'tgp_newsletter_category_id' ] );
		$this->mMemberID = intval( $_GET[ 'tgp_newsletter_member_id' ] );
		
		$this->mCategory = newsletters::getCategory( $this->mCategoryID );		
		$this->mMember = newsletters::getCategoryMember( $this->mCategoryID,  $this->mMemberID );
		
		if( isset( $_POST[ 'tgp_newsletter_remove_category_member' ] ) )
			$this->removeMemberFromCategory();
			
		$this->setMenu();
	}
	
	private function removeMemberFromCategory()
	{
		
		if( !isset( $_POST[ 'tgp_newsletter_remove_member_option' ] ) )
			return;
			
		$option = $_POST[ 'tgp_newsletter_remove_member_option' ];
			
		if( $option === "Y" )
			newsletters::removeMemberFromCategory( $this->mCategoryID, $this->mMemberID );	
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
}
?>