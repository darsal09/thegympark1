<?php
class category
{	
	public $mCategoryInfo;
	public $mPrograms;
	public $mClassTitles;
	public $mP = array( ':cID' => '', ':pID' => '', ':title' => '',  ':desc' => '', ':color' => '' );
	public $mErrors = array( ':cID' => false, ':pID' => false, ':title' => false, ':desc' => false, ':color' => false );
	
	public $mLinks = array();
	
	public $mLinkToPrograms = "";
	public $mLinkToSchedule = "";
	public $mLinkToAddClassTitle = "";
	public $mLinkToProgram;
	
	public $mCategoryEdit = false;
	
	private $mProgramID;
	private $mCategoryID;
	private $_mRequired = array( ':cID' => true, ':pID' => true, ':title' => true, ':desc' => false, ':color' => true );
	
	public function __construct()
	{
		unset( $_SESSION[ 'classes' ] );
		
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' ) );
		
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = intval( sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' ) );

		
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
		
		$this->mPrograms = catalog::getPrograms();
		
		$this->mCategoryInfo = catalog::getCategory( $this->mCategoryID );
		
		$this->setLinks();
		$this->mLinkToProgram 		= Link::Build( 'admin/programs/'.$this->mProgramID );			
		$this->mLinkToCategory 		= Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID );
		$this->mLinkToAddClass 		= Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/addClass' );
		$this->mLinkToAddClassTitle = Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/addClassTitle' );
		$this->mLinkToSendEmail 	= Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/email' );
	}
	
	private function setLinks()
	{
		$this->mCategoryInfo[ 'category_link' ] = Link::Build( 'category-info/'.$this->mCategoryInfo[ 'cc_id' ] );
		
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin' ), 'title' => 'Admin' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin/programs' ), 'title' => 'Programs' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin/programs/'.$this->mProgramID ), 'title' => 'Program' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin/categories' ), 'title' => 'Categories' );
	}
	
	private function setClassTitleLinks()
	{
		$ct = &$this->mClassTitles;
		$size = sizeof( $ct );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$ct[ $i ][ 'link_class_title' ] = Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$ct[ $i ][ 'id' ] );
			$ct[ $i ][ 'link_to_add_class' ] = Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$ct[ $i ][ 'id' ].'/addClass' );
		}
	}
	
	private function saveCategory()
	{
		if( !isset( $_POST[ 'tgp_category_save' ] ) )
			return;
			
		$this->mP[ ':title' ] 	= sanitize::sani( $_POST[ 'tgp_category_title' ], 'STRING' );
		$this->mP[ ':desc' ] 	= sanitize::sani( $_POST[ 'tgp_category_description' ], 'STRING' );
		$this->mP[ ':pID' ] 	= sanitize::sani( $_POST[ 'tgp_category_program_id' ], 'INTIGER' );
		$this->mP[ ':cID' ] 	= sanitize::sani( $_POST[ 'tgp_category_id' ], 'INTIGER' );
		$this->mP[ ':color' ]  	= sanitize::sani( $_POST[ 'tgp_category_color' ], 'STRING' );
		
		if( categoryModel::update( $this->mP ) )
		{
			header( 'Location:'.Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID ) );
			exit;
		}
	}
	
	private function deleteCategory()
	{
		if( !isset( $_POST[ 'tgp_category_delete' ] ) )
			return;
		
		if( categoryModel::delete( array( ':cID' => $this->mCategoryID ) ) )
			helper::redirect( 'admin/programs/'.$this->mProgramID );
		
		echo '<div class=error><h1>Cannot Delete Category: </h1><p>The category you are trying to delete cannot be deleted because it has class titles in it</p>
				<p> To delete this category you have to first delete all its class titles</p>
				<h1><a href="'.Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID ).'">Ok</a></h1>
				</div>';
	}
	
	private function hasErrors( )
	{
		foreach( $this->mP AS $field => $value )
			if( $this->_mRequired[ $field ] && empty( $value ) )
				$this->mErrors[ $field ] = true;
		
		if( in_array( true, $this->mErrors ) )
			return true;
			
		return false;		
	}
}
?>