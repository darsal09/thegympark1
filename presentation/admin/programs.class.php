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
		$this->mLinkToAddProgram = Link::Build( 'add-program' );
	}
	public function init()
	{		
		$this->mPrograms = programsModel::get();
		$this->setLinks();
	}
	public function setLinks()
	{
		for( $i = 0; $i < sizeof( $this->mPrograms ); $i++ )
		{
			$this->mPrograms[ $i ][ 'program_link' ] = Link::Build( 'admin/programs/'.$this->mPrograms[ $i ][ 'program_id' ] );
		}
	}
}
?>