<?php
class newslettersInfo
{
	public $mMenu;
	public $mNewsletters;
	public $mLinks = array();

	public function __construct()
	{
		
	}
	public function init()
	{
		$this->mNewsletters = newsletters::getNewsletters();
		
		$this->setLinks();
		$this->setMenu();
	}
	private function setLinks()
	{
		$size = sizeof( $this->mNewsletters );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$this->mNewsletters[ $i ][ 'link_to_newsletter' ] = Link::Build( 'admin/newsletters/'.$this->mNewsletters[ $i ][ 'newsletter_id' ] );
			$this->mNewsletters[  $i ][ 'link_to_edit_newsletter' ] = Link::Build( 'admin/newsletters/'.$this->mNewsletters[ $i ][ 'newsletter_id' ].'/edit' );
			$this->mNewsletters[  $i ][ 'link_to_send_newsletter' ] = Link::Build( 'admin/newsletters/'.$this->mNewsletters[ $i ][ 'newsletter_id' ].'/send' );			
		}
		
		$this->mLinks[] = array( 'title' => '&laquo;Admin', 'link' => Link::Build( 'admin' ) );
	}
	
	private function setMenu()
	{
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'admin/newsletters/add' ),
													'link_title' => "Go to newsletters admin page",
													'title' => "+Add Newsletter" );
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'admin/newsletters/categories' ),
													'link_title' => "Go to newsletter categories",
													'title' => "Categories" );
	}
}
?>