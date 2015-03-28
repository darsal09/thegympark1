<?php
class updateParent
{
	public  $mP 	= array( ':sID' => '', ':pID' => '', ':name' => '', ':hPhone' => '', ':wPhone' => '', ':cPhone' => '', ':email' => '' );
	public $mErrors = array( ':sID' => false, ':pID' => false, ':name' => false, ':hPhone' => false, ':wPhone' => false, ':cPhone' => false, ':email' => false );
	
	public $mParent;
	public $mStudentID;
	public $mParentID;
	
	private $_mSelected;
	private $_mRequired = array( ':sID' => true, ':pID' => true, ':name' => true, ':hPhone' => false, ':wPhone' => false, ':cPhone' => false, ':email' => false );
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_parent_id' ] ) )
			$this->mParentID = sanitize::sani( $_GET[ 'tgp_parent_id' ], 'INTIGER' );

		if( isset( $_GET[ 'selected' ] ) )
			$this->_mSelected = sanitize::sani( $_GET[ 'selected' ], 'INTIGER' );
	
		if( isset( $_POST[ 'tgp_student_parent_update_cancel' ] ) )
		{
			header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent#parent'.$this->_mSelected ) );
			exit;
		}
			
		if( isset( $_POST[ 'tgp_student_parent_update' ] ) )
			$this->updateParent();
	}
	
	public function init()
	{
		$this->mParent = administrator::getStudentParent( $this->mStudentID, $this->mParentID );		
	}
	
	private function updateParent( )
	{
		if( !isset( $_POST[ 'tgp_student_parent_update' ] ) )
			return;
			
		$this->mP[ ':sID' ] 		= $this->mStudentID;	
		$this->mP[ ':pID' ] 		= $this->mParentID;
		$this->mP[ ':name' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent_name' ], 'STRING'  );
		$this->mP[ ':hPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent_hPhone' ], 'STRING' );
		$this->mP[ ':wPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent_wPhone' ], 'STRING' );
		$this->mP[ ':cPhone' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent_cPhone' ], 'STRING' );
		$this->mP[ ':email' ] 	= sanitize::sani( $_POST[ 'tgp_student_parent_email' ], 'STRING' );
		
		if( $this->hasErrors() )
		{
			echo '<p class=error>There are errors!<br/></p>';
			return;
		}
		//print_r( $this->mP );
		student::updateParent( $this->mP );
		
		header( 'Location:'.Link::Build( 'index.php?action=viewStudent&tgp_student_id='.$this->mStudentID.'#parent'.$this->_mSelected ) );
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