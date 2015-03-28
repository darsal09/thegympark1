<?php

class addProgram
{
	public $mLinkToAddProgram;
	public $mErrors = array( ':pTitle' => false, ':pDesc' => false );
	public $mP;
	
	public $mErrorMessage = "";
	
	
	public function __construct()
	{
		$this->mLinkToAddProgram = Link::Build( 'add-program' );
		
		if( !user::isAdmin() )
		{
			header( 'Location:index.php' );
			exit;
		}
			
		if( isset( $_POST[ 'tgp_program_addProgram' ] ) )
			$this->addProgram();
	}
	
	private function addProgram()
	{
		if( !isset( $_POST[ 'tgp_program_addProgram' ] ) )
			return -1;
			
		$this->mP[ ':pTitle' ] 	= sanitize::sani( $_POST[ 'tgp_program_title' ], 'STRING' );
		$this->mP[ ':pDesc' ] 	= sanitize::sani( $_POST[ 'tgp_program_description' ], 'STRING' );
		
		if( $this->hasErrors() )
			return -1;
		
		programModel::add( $this->mP );
		
		$pID = programModel::exist( array( ':pTitle' => $this->mP[ ':pTitle' ] ) );
		
		header( 'Location:'.Link::Build( 'program-info/'.$pID ) );
		exit;
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
		{
			if( empty( $value ) )
			{
				$this->mErrorMessage = "Please fill out the fields in yellow";
				$this->mErrors[ $field ] = true;
			}
		}
		
		if( in_array( true, $this->mErrors ) )
			return true;
	
		return false;
	}
}
?>