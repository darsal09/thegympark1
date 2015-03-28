<?php
class category
{	
	public $mCategoryInfo;
	public $mClassTitles;
	public $mLinkToCategory = "";
	public $mLinkToAddClassTitle = "";
	public $mLinkToProgram;
	
	public $mIsAdmin = false;
	public $mCategoryEdit = false;

	public $mImageSource = "http://localhost/thegympark/images/gp_symbol.png";
	private $mProgramID;
	private$mClassID;
	
	public function __construct()
	{
		unset( $_SESSION[ 'classes' ] );	
		
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' ) );
			
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = intval( sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' ) );
			
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = intval( sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' ) );
		
		if( $this->mProgramID < 1 || $this->mCategoryID < 1 )
		{
			header( 'Location:'.Link::Build( '' ) );
			exit;
		}
	
		$this->mIsAdmin = user::isAdmin();
			
		if( isset( $_POST[ 'tgp_category_edit' ] )  )
			$this->mCategoryEdit = true;
		
		if( isset( $_POST[ 'tgp_category_save' ] ) )
			$this->saveCategory();
		
		if( isset( $_POST[ 'tgp_category_delete' ] ) )
			$this->deleteCategory();
		
	}
	
	public function init()
	{
		$this->mClassTitles = administrator::getClassTitles( $this->mProgramID, $this->mCategoryID );
		$this->setClassTitleLinks();
				
		$this->mCategoryInfo = catalog::getCategory( $this->mCategoryID );
				
		$this->setLinks();
		$this->mLinkToProgram = Link::Build( 'program-info/'.$this->mProgramID );			
		$this->mLinkToCategory = Link::Build( 'program-'.$this->mProgramID.'/category-info/'.$this->mCategoryID );
		$this->mLinkToAddClass = Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/add-class' );
	}
	
	private function setLinks()
	{
		$this->mCategoryInfo[ 'category_link' ] = Link::Build( 'category-info/'.$this->mCategoryInfo[ 'cc_id' ] );
	}
	
	private function setClassTitleLinks()
	{
		$ct = &$this->mClassTitles;
		$size = sizeof( $ct );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$ct[ $i ][ 'link_class_title' ] = Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group/'.$ct[ $i ][ 'id' ] );
			$ct[ $i ][ 'link_to_add_class' ] = Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$ct[ $i ][ 'id' ].'/add-class' );
		}
	}
	
	private function saveCategory()
	{
		if( !isset( $_POST[ 'tgp_category_save' ] ) )
			return;
			
		$P[ 'title' ] = sanitize::sani( $_POST[ 'tgp_category_title' ], 'STRING' );
		$P[ 'description' ] = sanitize::sani( $_POST[ 'tgp_category_description' ], 'STRING' );
		$P[ 'program_id' ] = sanitize::sani( $_POST[ 'tgp_category_program_id' ], 'INTIGER' );
		$P[ 'category_id' ] = sanitize::sani( $_POST[ 'tgp_category_id' ], 'INTIGER' );
		
		$sql = 'tgp_update_category';
//		$sql = 'CALL tgp_update_category( :categoryID, :programID, :categoryTitle, :categoryDescription )';
		$params = array( ':categoryID' => $P[ 'category_id' ], ':programID' => $P[ 'program_id' ], ':categoryTitle' => $P[ 'title' ], ':categoryDescription' => $P[ 'description' ] );
			
		administrator::prepareAndExecute( $sql, $params, 'Add' );
		
		header( 'Location:'.Link::Build( 'program-'.$this->mProgramID.'/category-info/'.$this->mCategoryID ) );
	}
	
	private function deleteCategory()
	{
		if( !isset( $_POST[ 'tgp_category_delete' ] ) )
			return;
			
		$sql = 'tgp_delete_category';
		$params = array( ':categoryID' => $this->mCategoryID );
			
		$result = administrator::prepareAndExecute( $sql, $params, 'One' );
			
		if( $result == 1 )
		{
			header( 'Location:'.Link::Build( 'program-info/'.$this->mProgramID ) );
			exit;
		}
		
		echo '<div class=error><h1>Cannot Delete Category: </h1><p>The category you are trying to delete cannot be deleted because it has class titles in it</p>
				<p> To delete this category you have to first delete all its class titles</p>
				<h1><a href="'.Link::Build( 'program-'.$this->mProgramID.'/category-info/'.$this->mCategoryID ).'">Ok</a></h1>
				</div>';
	}
}
?>