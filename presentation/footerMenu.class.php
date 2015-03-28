<?php
class footerMenu
{
	public $mLinkToRules;
	public $mLinkToContact;
	public $mLinkToFAQ;
	public $mLinkToAboutUs;
	
	public function __construct()
	{		
		$this->mLinkToRules = Link::Build( 'rules' );
		$this->mLinkToContact = Link::Build( 'contacts' );
		$this->mLinkToFAQ = Link::Build( 'faq' );
		$this->mLinkToAboutUs = Link::Build( 'about-us' );		
	}
}
?>