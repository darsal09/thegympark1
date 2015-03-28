<?php

class program
{
	public $mProgram;
	public $mCategories;
	public $mClassTitles;
	
	//this variables are use to see if the information is need to be updated by the administrator	
	public $mLinkToProgram = "";
	public $mEditProgram = false;

	public $mLinks = array();
	
	public $mLinkToEditProgram;
	public $mLinkToDeleteProgram;
	public $mLinkToAddCategory;
	public $mLinkToAddClassProgram;
	
	public $mLinkToAdmin;
	public $mLinkToAddSeason;
	public $mLinkToPrograms;
	
	private $_mProgramID;
	
	public function __construct()
	{				
		if( !isset( $_GET[ 'tgp_program_id' ] ) )
			helper::redirect( 'admin/programs' );
			
		$this->_mProgramID = intval( sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' ) );				
	
		if( isset( $_POST[ 'tgp_program_edit' ] ) )
			$this->mEditProgram = true;
		
		if( isset( $_POST[ 'tgp_program_save' ] ) )
			$this->updateProgram();
					
		if( isset( $_POST[ 'tgp_program_delete' ] ) )
			$this->deleteProgram();
			
		if( isset( $_POST[ 'tgp_program_send_email' ] ) )
		{
			header( 'Location:'.Link::Build( 'index.php?tgp_program_id='.$this->_mProgramID.'&action=email' ) );
			exit;
		}
	}
	
	public function init()
	{		
		$this->mProgram = catalog::getProgram( $this->_mProgramID );
		$this->mCategories = catalog::getProgramCategories( $this->_mProgramID );
		$this->mClassTitles = administrator::getClassTitles( $this->_mProgramID, 0 );
		
		$this->setLinks();
	}
	
	private function setLinks()
	{
		$this->setCategoriesLinks();
		$this->setClassTitlesLinks();
		
		$this->mLinktoProgram 		= Link::Build( 'program-info/'.$this->_mProgramID );
		$this->mLinkToAddCategory 	= Link::Build( 'program-'.$this->_mProgramID.'/add-category' );
		$this->mLinkToAddClassGroup = Link::Build( 'program-'.$this->_mProgramID.'/add-classTitle' );
		$this->mLinkToAdmin			= Link::Build( 'admin' );
		$this->mLinkToPrograms 		= Link::Build( 'admin/programs' );
		
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin' ), 'title' => 'Admin' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin/programs' ), 'title' => 'Programs' );	
	}
	
	private function setCategoriesLinks()
	{
		$cat = &$this->mCategories;
		$size = sizeof( $cat );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$cat[ $i ][ 'category_link' ] = Link::Build( 'admin/programs/'.$cat[ $i ][ 'program_id' ].'/categories/'.$cat[ $i ][ 'cc_id' ] );
			$cat[ $i ][ 'add_class_title_link' ] = Link::Build( 'admin/programs/'.$cat[ $i ][ 'program_id' ].'/categories/'.$cat[ $i ][ 'cc_id' ].'/add-classTitle' );
		}
	}
	
	private function setClassTitlesLinks()
	{
		$c = &$this->mClassTitles;
		$size = sizeof( $c );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$c[ $i ][ 'class_title_link' ] = Link::Build( 'admin/programs/'.$c[ $i ][ 'program_id' ].'/categories/'.$c[ $i ][ 'category_id' ].'/class-groups/'.$c[ $i ][ 'id' ] );
			$c[ $i ][ 'add_class_link' ] = Link::Build( 'admin/programs/'.$c[ $i ][ 'program_id' ].'/categories/'.$c[ $i ][ 'category_id' ].'/class-groups/'.$c[ $i ][ 'id' ].'/addClass' );
		}
	}
	
	private function updateProgram()
	{
		if( !isset( $_POST[ 'tgp_program_save' ] ) )
			return;
			
		$title = sanitize::sani( $_POST[ 'tgp_program_title' ], 'STRING' );
		$description = sanitize::sani( $_POST[ 'tgp_program_description' ], 'STRING' );
			
		administrator::updateProgram( $this->_mProgramID, $title, $description );
	}
	
	private function deleteProgram()
	{
		if( !isset( $_POST[ 'tgp_program_delete' ] ) )
			return;
			
		if( administrator::deleteProgram( $this->_mProgramID ) )
		{
			header( 'Location:index.php' );
			exit;
		}
		
		echo '<div class=error><h1>Cannot Delete Program:</h1><p>The program you are trying to delete cannot be deleted because it has categories in it</p>
				<p> To delete this program you have to first delete all its categories</p>
				<h1><a href="'.Link::Build( 'program-info/'.$this->_mProgramID ).'">Ok</a></h1>				
			</div>';
	}
}
?>