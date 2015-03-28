<?php
class addParent2
{
	public $mP = array( ':sID' => '', ':name' => '', ':hPhone' => '', ':wPhone' => '', ':cPhone' => '', ':email' => '' );
	public $mErrors = array( ':sID' => false, ':name' => false, ':hPhone' => false, ':wPhone' => false, ':cPhone' => false, ':email' => false,
						'combined' => false );
	
	private $_mRequired = array( ':sID' => true, ':name' => true, ':hPhone' => false, ':wPhone' => false, ':cPhone' => false, ':email' => false, 
							'combined' => array( ':hPhone', ':wPhone', ':cPhone', ':email' ) );
	
	public $mStudentID;
	
	public function __construct()
	{
	
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
			
		if( isset( $_POST[ 'tgp_parent2_add' ] ) )
			$this->addParent();
	}
	
	public function init()
	{
	
	}
	
	private function addParent()
	{
		if( !isset( $_POST[ 'tgp_parent2_add' ] ) )
			return;
			
		$this->mP[ ':sID' ] 		= $this->mStudentID;
		$this->mP[ ':name' ] 	= sanitize::sani( $_POST[ 'tgp_parent2_name' ], 'STRING' );
		$this->mP[ ':wPhone' ] 	= sanitize::sani( $_POST[ 'tgp_parent2_wPhone' ], 'STRING' );
		$this->mP[ ':hPhone' ] 	= sanitize::sani( $_POST[ 'tgp_parent2_hPhone'  ], 'STRING' );
		$this->mP[ ':cPhone' ] 	= sanitize::sani( $_POST[ 'tgp_parent2_cPhone' ], 'STRING' );
		$this->mP[ ':email' ] 	= sanitize::sani( $_POST[ 'tgp_parent2_email' ], 'STRING' );
		
		if( $this->hasErrors() )
		{
			print_r( $this->mErrors );
			return;
		}
		
		student::addParent( $this->mP );
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent#parent2' ) );
		exit;
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
			if( $this->_mRequired[ $field ] && empty( $value ) )
				$this->mErrors[ $field ] = true;
				
		$this->mErrors[ 'combined'] = $this->hasErrorsCombined();
		
		if( in_array( true, $this->mErrors ) )
			return true;
			
		return false;
	}
	
	private function hasErrorsCombined()
	{
		if( !is_array( $this->_mRequired[ 'combined'  ]  ) )
			return false;
		
		foreach( $this->_mRequired[ 'combined' ] AS $field )
			if( !empty( $this->mP[ $field ] ) )
				return false;
				
		return true;
	}
	
	public function __destruct()
	{
	
	}
}
?>