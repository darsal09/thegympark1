<?php
class updateCaregiver
{
	public $mP = array( ':sID' => '', ':id' => '', ':name' => '', ':phone' => '' );
	public $mErrors = array( ':sID' => false, ':id' => false, ':name=' => false, ':phone' => false );
	
	
	public $mCaregiver;
	
	public $mStudentID;
	
	private $_mRequired = array( ':sID' => true, ':id' => true, ':name' => true, ':phone' => true );
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = intval( sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' ) );			
			
		if( isset( $_POST[ 'tgp_student_caregiver_update_cancel' ] ) )
		{
			header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=adminStudent#caregiver' ) );
			exit;
		}
		
		if( isset( $_POST[ 'tgp_student_caregiver_update' ] ) )
			$this->updateCaregiver();
	}
	
	public function init()
	{
		$this->mCaregiver = administrator::getStudentCaregiver( $this->mStudentID );		
	}
	
	private function updateCaregiver( )
	{
		if( !isset( $_POST[ 'tgp_student_caregiver_update' ] ) )
			return;
			
		$this->mP[ ':sID' ] 		= $this->mStudentID;
		$this->mP[ ':id' ] 		= sanitize::sani( $_POST[ 'tgp_student_caregiver_id' ], 'INTIGER' );
		$this->mP[ ':name' ] 	= sanitize::sani( $_POST[ 'tgp_student_caregiver_name' ], 'STRING'  );
		$this->mP[ ':phone' ] 	= sanitize::sani( $_POST[ 'tgp_student_caregiver_phone' ], 'STRING' );
		
		if( $this->hasErrors() )
		{
			echo '<p class=error>There are errors!</p>';
			return;
		}
		
		student::updateCaregiver( $this->mP );
		
		helper::redirect( 'admin/students/'.$this->mStudentID );
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
		{
			if( $this->_mRequired[ $field ] && empty( $value )  )
				$this->mErrors[ $field ] = true;
		}

		if( in_array( true, $this->mErrors ) )
			return true;
		
		return false;
	}
	
	public function __destruct()
	{
	
	}
}
?>