<?php
class newsletterMembers
{
	public $mMembers;
	public $mLinkToNewMember;
	public $mLinkToExistingMember;
	
	public $mMenu = array();
	
	public function __construct()
	{
		$this->mLinkToNewMember = Link::Build( 'addNewsletterMember' );
		$this->mLinkToExistingMember = Link::Build( 'addNewsletterExistingMember' );
		$this->mLinkToNewsletterAdmin = Link::Build( 'admin/newsletter' );
		$this->mLinkToAddMembersFromFile = Link::Build( 'index.php?action=addMembersFromFile' );
	}

	public function init()
	{
		$this->mMembers = newsletters::getMembers();
		$this->setMenu();
	}
	
	private function setMenu()
	{
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'title' => 'Admin', 'link' => Link::Build( 'admin' ), 'link_title' => 'Click to go to the admin page');
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'title' => 'Newsletter Admin', 'link' => Link::Build( 'admin/newsletter' ), 'link_title' => 'Click to go to the newsletter admin page');
	}
}
?>