<?php
class categories
{	
	public $mCategories;
	public $mShowAll = true;
	public $mCategoriesAmount = 0;
	public $mIsAdmin = false;
	public $mLinkToAddCategory = "";
	
	private $mProgramID;
	private $mClassID;
	private $mCategoryID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( $_GET[ 'tgp_program_id' ] );
			
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = intval( $_GET[ 'tgp_class_id' ] );
		
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = intval( $_GET[ 'tgp_category_id' ] );

		$this->mIsAdmin = user::isAdmin();
			
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mLinkToAddCategory = Link::Build( 'program-'.$this->mProgramID.'/add-category' );
		else
			$this->mLinkToAddCategory = Link::Build( 'add-category' );
		
	}	
	public function init()
	{		
		if( $this->mProgramID >  0 )
		{				
			if( $this->mCategoryID > 0 )
			{
				$this->mCategories = catalog::getCategory( $this->mCategoryID );
				$this->mShowAll = false;
				
				$this->mCategories[ 'category_link' ] = Link::Build( 'category-info/'.$this->mCategories[ 'cc_id' ] );
				$this->mCategories[ 'show_all_link' ] = Link::Build( '' );
			}
			else
				$this->mCategories = catalog::getProgramCategories( $this->mProgramID );
		}
		else
			$this->mCategories = catalog::getCategories();

		
		if( $this->mShowAll )
		{
			$this->setLinks();
		}
		
		$this->mCategoriesAmount = sizeof( $this->mCategories );
		
	}

	function setLinks()
	{
		for( $i = 0; $i < sizeof( $this->mCategories ); $i++ )
			$this->mCategories[ $i ][ 'category_link' ] = Link::Build( 'program-'.$this->mCategories[ $i ][ 'program_id' ].'/category-info/'.$this->mCategories[ $i ][ 'cc_id' ] );
	}
}
?>