<?php

class addCategory
{
	public $mProgram;
	
	public $mErrors = array( ':title' => false, ':desc' => false, ':color' => false , ':pID' => false );
	public $mP = array( ':title' => '', ':desc' => '', ':pID' => '', ':color' => '' );
	public $mRequired = array( ':title' => true, ':desc' => false, ':color' => true, ':pID' => true );
	
	public $mErrorMessage = "";
	public $mProgramID;

	public $mLinkToProgram;
	public $mLinkToAddCategory;
	public $mLinkToColorMap;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' ) );
			
		if( !user::isAdmin() )
		{
			header( 'Location:'.Link::Build( 'program-info/'.$this->mProgramID ) );
			exit;
		}
			
		$this->mLinkToProgram = Link::Build( 'program-info/'.$this->mProgramID );
			
		if( isset( $_POST[ 'tgp_category_addCategory' ] ) )
			$this->saveCategory();
	}
	
	public function init( )
	{
		$this->mProgram = catalog::getProgram( $this->mProgramID );		
	}
	
	private function saveCategory()
	{
		if( !isset( $_POST[ 'tgp_category_addCategory' ] ) || intval( $this->mProgramID ) < 1 )
			return;
						
		$this->mP[ ':title' ] 	= sanitize::sani( $_POST[ 'tgp_category_title' ], 'STRING' );
		$this->mP[ ':desc' ] 	= sanitize::sani( $_POST[ 'tgp_category_description' ], 'STRING' );
		$this->mP[ ':pID' ] 	= sanitize::sani( $this->mProgramID, 'INTIGER' );
		$this->mP[ ':color' ] 	= sanitize::sani( $_POST[ 'tgp_category_color' ], 'STRING' );
			
		if( $this->hasErrors() )
		{
			$this->mErrorMessage = "Please fill out the fields in yellow";		
			return;
		}
		
		$cID = catalog::addCategory( $this->mP );
		
		if( $cID > 0 )
		{
			header( 'Location:'.Link::Build( 'program-'.$this->mProgramID.'/category-info/'.$cID ) );
			exit;
		}
		
		return;		
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
		{
			if( $this->mRequired[ $field ] && empty( $value ) )
				$this->mErrors[ $field ] = true;
		}
		
		if( in_array( true, $this->mErrors ) )
			return true;
			
		return false;
	}
}
?>