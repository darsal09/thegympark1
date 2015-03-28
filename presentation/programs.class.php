<?php
class programs
{
	public $mPrograms;
	public $mLinkToProgram;
	public $mShowAll = true;
	public $mIsAdmin = false;
	public $mLinkToAddProgram = "";
	
	private $mProgramID;
	private $mCategryID;
	private $mClassID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( $_GET[ 'tgp_program_id' ] );
		if( isset( $_GET[ 'tgp_cateogry_id' ] ) )
			$this->mCategoryID = intval( $_GET[ 'tgp_category_id' ] );
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = intval( $_GET[ 'tgp_class_id' ] );
			
		$this->mIsAdmin = user::isAdmin();
		$this->mLinkToAddProgram = Link::Build( 'add-program' );
	}
	public function init()
	{		
		if( $this->mProgramID > 0 )
		{
			$this->mPrograms = catalog::getProgram( $this->mProgramID );
			$this->mShowAll = false;
			
			$this->mPrograms[ 'program_link' ] = Link::Build( 'program-info/'.$this->mPrograms[ 'program_id' ]  );
			$this->mPrograms[ 'show_all_link' ] = Link::Build( '' );
		}
		else
		{
			$this->mPrograms = catalog::getPrograms();
			$this->setLinks();	
		}
	}
	public function setLinks()
	{
		for( $i = 0; $i < sizeof( $this->mPrograms ); $i++ )
		{
			$this->mPrograms[ $i ][ 'program_link' ] = Link::Build( 'program-info/'.$this->mPrograms[ $i ][ 'program_id' ] );
		}
	}
}
?>