<?php
class updateEmergencyContact
{
	public $mEmergency;
	public $mStudentID;
	
	public $mP = array( 'id' => '', 'name' => '', 'relation' => '', 'hPhone' => '', 'wPhone' => '', 'wPhone' => '', 'cPhone' => '' );
	public $mError = array( 'id' => false, 'name' => false, 'relation' => false, 'hPhone' => false, 'wPhone' => false, 'wPhone' => false, 'cPhone' => false );
	private $_mRequired = array( 'id' => true, 'name' => true, 'relation' => true, 'hPhone' => false, 'wPhone' => false, 'wPhone' => false, 'cPhone' => false );
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = intval( sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' ) );
		
		if( isset( $_POST[ 'tgp_student_emergency_update_cancel' ] ) )
		{
			header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=adminStudent#emergency' ) );
			exit;
		}
		
		if( isset( $_POST[ 'tgp_student_emergency_update' ] ) )
			$this->updateEmergencyContact();
			
		
	}
	
	public function init()
	{
		$this->mEmergency = administrator::getStudentEmergency( $this->mStudentID );
	}
	
	private function updateEmergencyContact()
	{
		if( !isset( $_POST[ 'tgp_student_emergency_update' ] ) )
			return;
			
		$this->mP[ 'id' ] 		= sanitize::sani( $_POST[ 'tgp_student_emergency_id' ], 'INTIGER' );
		$this->mP[ 'name' ] 	= sanitize::sani( $_POST[ 'tgp_student_emergency_name' ], 'STRING' );
		$this->mP[ 'relation' ] = sanitize::sani( $_POST[ 'tgp_student_emergency_relation' ], 'STRING' );
		$this->mP[ 'hPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_emergency_homePhone' ], 'STRING' );
		$this->mP[ 'wPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_emergency_workPhone' ], 'STRING' );
		$this->mP[ 'cPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_emergency_cellPhone' ], 'STRING' );		
		
		if( $this->hasErrors() )
		{
			echo '<p class=error>There are errors!</p>';
			return;
		}
		
		student::updateEmergencyContact( $this->mStudentID, $this->mP[ 'id' ], $this->mP[ 'name' ], $this->mP[ 'relation' ], $this->mP[ 'hPhone' ], $this->mP[ 'wPhone' ], $this->mP[ 'cPhone' ] );
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent#emergency' ) );
		exit;
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
			if( $this->_mRequired[ $field ] && empty( $value ) )
				$this->mError[ $field ] = true;
		
		if( in_array( true, $this->mError ) )
			return true;
		
		return false;
	}
	
	public function __destruct()
	{
	
	}
}
?>