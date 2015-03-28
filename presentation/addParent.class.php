<?php

class addParent
{
	public $mP = array( ':sID' => '', ':name' => '', ':hPhone' => '', ':wPhone' => '', ':cPhone' => '', ':email' => '' );
	public $mErrors = array( ':sID' => false, ':name' => false, ':hPhone' => false, ':wPhone' => false, ':cPhone' => false, ':email' => false, 'combined' => false );
	
	private $_mRequired = array( ':sID' => true, ':name' => true, ':hPhone' => false, ':wPhone' => false, ':cPhone' => false, ':email' => false,
							'combined' => array( ':hPhone', ':wPhone', ':cPhone', ':email' ) );
	
	public $mStudentID;
	
	public function __construct()
	{
	
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
			
		if( isset( $_POST[ 'tgp_parent_add' ] ) )
			$this->addParent();
	}
	
	public function init()
	{
	
	}
	
	private function addParent()
	{
		if( !isset( $_POST[ 'tgp_parent_add' ] ) )
			return;
			
		$this->mP[ ':sID' ] 	= $this->mStudentID;
		$this->mP[ ':name' ] 	= sanitize::sani( $_POST[ 'tgp_parent_name' ], 'STRING' );
		$this->mP[ ':wPhone' ] 	= sanitize::sani( $_POST[ 'tgp_parent_wPhone' ], 'STRING' );
		$this->mP[ ':hPhone' ] 	= sanitize::sani( $_POST[ 'tgp_parent_hPhone'  ], 'STRING' );
		$this->mP[ ':cPhone' ] 	= sanitize::sani( $_POST[ 'tgp_parent_cPhone' ], 'STRING' );
		$this->mP[ ':email' ] 	= sanitize::sani( $_POST[ 'tgp_parent_email' ], 'STRING' );
		
		if( $this->hasErrors() )
		{
			print_r( $this->mErrors );
			return;
		}
		
		student::addParent( $this->mP );
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent#parent1' ) );
		exit;
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
			if( !is_array( $this->_mRequired[ $field ] ) && $this->_mRequired[ $field ] && empty( $value ) )
				$this->mErrors[ $field ] = true;
		
		$this->mErrors[ 'combined' ] = $this->hasErrorsCombined();
		
		if( in_array( true, $this->mErrors ) )
			return true;
			
		return false;
	}
	
	private function hasErrorsCombined()
	{
		$C = &$this->_mRequired[ 'combined' ];

		foreach( $C AS $field )
			if( !empty( $this->mP[ $field ] ) )
				return false;
			
		return true;
	}
	
	
	public function __destruct()
	{
	
	}
}
?>