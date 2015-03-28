<?php
class mainFront
{
	public $mTitle;
	public $mContent = "feature.tpl";
	public $mLinkToCss;
	public $mLinkToLogo;
	public $mLinkToJS;
	public $mEditNewsletter = false;
	
	public $mCategoryFile = "categories.tpl";
	public $mShowQuickLinks = true;
	public $mIsAdmin;
	
	public function __construct()
	{		
			
		$this->mTitle = 'the Gym Park';	
		
		$this->mLinkToCss = Link::Build( 'styles/thegympark.css' );
		$this->mLinkToLogo = Link::Build( 'images/gp_symbol.png' );
		$this->mLinkToJS = Link::Build( 'scripts' );
		
		if( isset( $_GET[ 'action' ] ) )
		{
			if( isset( $_GET[ 'folder'] ) )
				$this->mContent = $_GET[ 'folder' ].'/'.$_GET[ 'action' ].'.tpl';
			else
				$this->mContent = $_GET[ 'action' ].'.tpl';
		
		}
		
		$this->mIsAdmin = user::isAdmin();
		
		if(  $this->mContent === "addNewsletter" )
			$this->mEditNewsletter = true;
	}
}
?>