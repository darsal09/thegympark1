<?php
class moveParticipant
{
	public $mStudent;
	public $mClass;
	public $mAvailableClasses;
	public $mFilters = array();
	
	public $mProgramID, $mCategoryID, $mClassGroupID, $mClassID, $mStudentID, $mType = '';
	public $mLinkToAll;
	
	public function __construct()
	{			
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
		
		if( isset( $_GET[ 'type' ] ) )
			$this->mType = sanitize::sani( urldecode( $_GET[ 'type' ] ), 'STRING' );			

		if( isset( $_POST[ 'tgp_cancel' ] ) )
		{
			header( 'Location:'.Link::Build( 'index.ph?tgp_student_id='.$this->mStudentID.'action=viewStudent' ) );
			exit;
		}
		
		if( isset( $_POST[ 'tgp_move_student' ] ) )
			$this->saveChanges();
	}
	
	public function init()
	{
		$this->mStudent = student::getInfo( $this->mStudentID );
		$this->mClass = classModel::get( array( ':cID' => $this->mClassID )  );
		
		if( isset( $_GET[ 'type' ] ) )
			$this->mAvailableClasses = classes::getStudentNotInForTitle( array( ':sID' => $this->mStudentID, ':tID' => $this->mType ) );
		else
			$this->mAvailableClasses = classes::getClassesStudentNotIn( array( ':sID' => $this->mStudentID ) );
		
		$this->setClassTitle();
		$this->setTime();
		$this->setFilters();
		$this->mLinkToAll = Link::Build( 'index.php?tgp_class_id='.$this->mClassID.'&tgp_student_id='.$this->mStudentID.'&action=moveParticipant' );
	}
	
	private function setClassTitle()
	{
		$this->mClass[ 'title' ] = date( 'D', strtotime( $this->mClass[ 'start_date' ] ) ).' '.date( 'g:im', strtotime( $this->mClass[ 'start_time' ] ) ).' '.$this->mClass[ 'title' ];
	}
	
	private function setTime()
	{
		$A = &$this->mAvailableClasses;
		$size = sizeof( $A );
		
		for( $i = 0; $i < $size; $i++ )
			$A[ $i ][ 'title' ] = '<i>'.date( 'D', strtotime( $A[ $i ][ 'start_date' ] ) ).' '.date( 'g:ia', strtotime( $A[ $i ][ 'start_time' ] ) ).'</i> <b>'.$A[ $i ][ 'title' ].'</b>';
	}

	private function setFilters()
	{
		$A = classes::getClassesStudentNotIn( array( ':sID' => $this->mStudentID ) );
		$size = sizeof( $A );
		
		for( $i = 0; $i < $size; $i++ )
			if( !$this->inArray( $A[ $i ][ 'title' ] ) )
				$this->mFilters[ sizeof( $this->mFilters ) ] = array( 'title' => $A[ $i ][ 'title' ], 'link' => Link::Build( 'index.php?type='.$A[ $i ][ 'title_id' ].'&tgp_class_id='.$this->mClassID.'&tgp_student_id='.$this->mStudentID.'&action=moveParticipant' ) );
	}
	
	private function inArray( $title )
	{
		foreach( $this->mFilters AS $A )
			if( in_array( $title, $A ) )
				return true;
				
		return false;
	}
	
	private function saveChanges()
	{
		if( !isset( $_POST[ 'tgp_move_student' ] ) )
			return;
			
		$mP[ ':sID' ] = $this->mStudentID;
		$mP[ ':oCID' ] = $this->mClassID;
		$mP[ ':nCID' ] = sanitize::sani( $_POST[ 'tgp_new_class' ], 'INTIGER'  );
		
		student::moveClass( $mP );
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent' ) );
		exit;
	}
	
	public function __destruct()
	{
	
	}
}
?>