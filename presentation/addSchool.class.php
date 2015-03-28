<?php
class addSchool
{
	public $mStudentID;
	public $mP = array( ':sID' => '', ':school' => '', ':grade' => '' );
	public $mError = array( ':sID' => false, ':school' => false, ':grade' => false);
	private $_mRequired = array( ':sID' => true, ':school' => true, ':grade' => false );
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = intval( $_GET[ 'tgp_student_id' ] );
			
		if( isset( $_POST[ 'tgp_student_school_add' ] ) )
			$this->addSchool();
	}
	
	public function init()
	{
	
	}
	
	private function addSchool()
	{
		if( !isset( $_POST[ 'tgp_student_school_add' ] )  )
			return;
					
		//school
		$this->mP[ ':sID' ] = $this->mStudentID;
		$this->mP[ ':school' ] = sanitize::sani( $_POST[ 'tgp_student_school' ], 'STRING' );
		$this->mP[ ':grade' ]  = sanitize::sani( $_POST[ 'tgp_student_grade' ], 'STRING' );
		
		if( $this->hasErrors() )
		{
			echo '<p class=error>There are errors!</p>';
			return;
		}
		
		student::addSchool( $this->mP );
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent#school' ) );
		exit;
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
			if( $this->_mRequired[ $field ] && empty( $value ) )
				$this->mErrors[ $field ] = true;
		
		if( in_array( true, $this->mErrors ) )
			return true;
		
		return false;
	}
	
	public function __destruct()
	{
	
	}
}
?>