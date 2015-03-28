<?php

class program
{
	public $mProgram;
	
	public $mLinkToProgram;
	public $mLinkToHome;
	
	private $_mProgramID;
	
	public function __construct()
	{		
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->_mProgramID = intval( sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' ) );		
		
		if( $this->_mProgramID < 1 )
		{
			header( 'Location:'.Link::Build( '' ) );
			exit;
		}		
	}
	
	public function init()
	{		
		$this->mProgram = catalog::getProgram( $this->_mProgramID );
		
		$this->mLinktoProgram = Link::Build( 'program-info/'.$this->_mProgramID );
		$this->mLinkToAddCategory = Link::Build( 'program-'.$this->_mProgramID.'/add-category' );
		$this->mLinkToHome = Link::Build( '' );		
	}
}
?>