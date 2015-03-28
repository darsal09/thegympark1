<?php
class addNewsletterExistingMember
{
	public $mMembers;
	
	public $mLinkToNewsletters;
	public $mLinkToNewsletterMembers;
	public $mLinkToAddNewMember;
	
	public function __construct()
	{	
		if( isset( $_POST[ 'tgp_newsletter_new_members_add' ] ) )
			newsletters::addMembers( $_POST[ 'tgp_newsletter_new_members' ] );
			
		$this->mLinkToNewsletters 		= Link::Build( 'newsletters' );
		$this->mLinkToNewsletterMembers = Link::Build( 'newsletterMembers' );
		$this->mLinkToAddNewMember		= Link::Build( 'addNewsletterMember' );
	}
	public function init()
	{
		$this->mMembers = newsletters::getNonMembers();
	}
}
?>