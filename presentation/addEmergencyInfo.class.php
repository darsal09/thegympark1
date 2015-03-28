<?php
class addEmergencyInfo
{
	public $mP = array( ':sID' => '', ':eName' => '', ':eRelation' => '', ':ehPhone' => '', ':ecPhone' => '', ':ewPhone' => '' );
	public $mErrors = array( ':sID' => false, ':eName' => false, ':eRelation' => false, 'combined' => false );
	
	
	private $_mRequired = array( ':sID' => true, ':eName' => true, ':eRelation' => true, ':ehPhone' => false, ':ecPhone' => false, ':ewPhone' => false,
							'combined' => array( ':ehPhone', ':ecPhone', ':ewPhone' ) );
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = intval( sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' ) );
		
		if( isset( $_POST[ 'tgp_student_emergency_contact_add' ] ) )
			$this->addEmergencyInfo();
	}
	
	public function init()
	{
	
	}
	
	private function addEmergencyInfo()
	{
		if( !isset( $_POST[ 'tgp_student_emergency_contact_add' ] ) )
			return;
			
		$this->mP[ ':sID' ] 	= $this->mStudentID;	
		$this->mP[ ':eName' ] 	= sanitize::sani( $_POST[ 'tgp_student_emergency_name' ], 'STRING' );
		$this->mP[ ':eRelation' ] = isset( $_POST[ 'tgp_student_emergency_relation' ] ) ? sanitize::sani( $_POST[ 'tgp_student_emergency_relation' ], 'STRING' ) : '' ;
		$this->mP[ ':ehPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_emergency_homePhone' ], 'STRING' );
		$this->mP[ ':ecPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_emergency_cellPhone' ], 'STRING' );
		$this->mP[ ':ewPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_emergency_workPhone' ], 'STRING' );
		
		if( $this->hasErrors() )
		{
			echo '<p class=error>There are errors!</p>';
			print_r( $this->mErrors );
			return;
		}
		
		student::addEmergencyInfo( $this->mP );
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent#emergency' ) );
		exit;
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
			if( !is_array( $this->_mRequired[ $field ] ) && $this->_mRequired[ $field ] &&  empty( $value ) )
				$this->mErrors[ $field ] = true;
				
		$this->mErrors[ 'combined' ] = $this->hasErrorsCombined();
		
		if( in_array( true, $this->mErrors ) )
			return true;
			
		return false;
	}
	
	private function hasErrorsCombined()
	{
		if( !isset( $this->_mRequired[ 'combined' ] ) )
			return false;
				
		foreach( $this->_mRequired[ 'combined' ] AS $field )
			if( !empty( $this->mP[ $field ] ) )
				return false; //we found one that is filled and that is enough
		
		return true; //all combined fields were empty
	}
	
	public function __destruct()
	{
	
	}
}
?>