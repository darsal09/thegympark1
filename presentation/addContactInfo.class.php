<?php
class addContactInfo
{
	public $mP = array( ':sID' => '', ':hPhone' => '', ':cPhone' => '', ':email' => '' );
	public $mErrors = array( ':sID' => false, ':hPhone' => false, ':cPhone' => false, ':email' => false, 'combined' => false );
	
	public $mStudentID;
	
	private $_mRequired = array( ':sID' => true, ':hPhone' => false, ':cPhone' => false, ':email' => false, 'combined' => array( ':hPhone', ':cPhone', ':email' ) );
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = intval( sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' ) );
			
		if( isset( $_POST[ 'tgp_student_contact_info_add' ] ) )
			$this->addContactInfo();
	}
	
	public function init()
	{
	
	}
	
	private function addContactInfo()
	{
		if( !isset( $_POST[ 'tgp_student_contact_info_add' ] ) )
			return;
		$this->mP[ ':sID' ]		= $this->mStudentID;			
		$this->mP[ ':hPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_contact_info_homePhone' ], 'STRING' );
		$this->mP[ ':cPhone' ]  = sanitize::sani( $_POST[ 'tgp_student_contact_info_cellPhone' ], 'STRING' );
		$this->mP[ ':email' ]  	= sanitize::sani( $_POST[ 'tgp_student_contact_info_email' ], 'EMAIL' );
		
		if( $this->hasErrors() )
		{
			print_r( $this->mErrors );
			return;
		}
		
		student::addContactInfo( $this->mP );
				
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent#contactinfo' ) );
		exit;
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
			if( $this->_mRequired[ $field ] && empty( $value ) )
				$this->mErrors[ $field ] = true;
	
		$this->mErrors[ 'combined' ] = $this->hasErrorsCombined( );
	
		if( in_array( true, $this->mErrors ) )
			return true;
			
		return false;
	}
	
	private function hasErrorsCombined()
	{
		$Req = $this->_mRequired[ 'combined' ];
		
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