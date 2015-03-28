<?php
class newsletterFilters
{
	public $mFilters;
	public $mMenu;
	
	public $mFilterID;
	public $mLinkToAddFilter;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_newsletter_filter_id' ] ) )
			$this->mFilterID = intval( $_GET[ 'tgp_newsletter_filter_id' ] );
		
		if( isset( $_POST[ 'tgp_filter_edit_save' ] ) )
			$this->saveEditFilter();
	}
	
	public function init()
	{
		$this->mFilters = newsletters::getFilters();
		
		$this->setMenu();
	}
	
	private function setMenu()
	{
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'admin' ),
													'link_title' => "Go to the admin page",
													'title' => "Admin" );
													
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'admin/newsletter' ),
													'link_title' => "Go to newsletters admin page",
													'title' => "Newsletter Admin" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'newsletters' ),
													'link_title' => "Go to newsletters",
													'title' => "Newsletters" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'newsletterCategories' ),
													'link_title' => "Go to newsletter categories",
													'title' => "Categories" );
													
		$this->mLinkToAddFilter = Link::Build( 'addFilter' );
	}
	
	private function saveEditFilter()
	{
		if( !isset( $_POST[ 'tgp_filter_edit_save' ] ) )
			return;
		
		$desc = $_POST[ 'tgp_filter_desc' ];
		
		if( !empty( $desc ) && $this->mFilterID != 0 )
		{
			newsletters::updateFilterDescription( $this->mFilterID, $desc );
			header( 'Location:'.Link::Build( 'newsletterFilters' ) );
			exit;
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>