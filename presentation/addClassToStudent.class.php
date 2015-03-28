<?php
class addClassToStudent
{
	public $mParcipant;
	public $mClasses;
	public $mWeek;

	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id'], 'INTIGER' );
		
		if( isset( $_POST[ 'tgp_student_add_classes'  ] ) )
			$this->addClasses();
	}
	
	public function init()
	{
		$this->mParticipant = student::getInfo( $this->mStudentID );
		$this->mClasses = classes::getClassesStudentNotIn( array( ':sID' => $this->mStudentID ) );
		
		$this->setClasses();
	}
	
	private function setClasses()
	{
		$this->mWeek = array();
		$C = &$this->mClasses;
		$size = sizeof( $C );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$day = date( 'D', strtotime( $C[ $i ][ 'start_date' ] ) );
			$C[ $i ][ 'title' ] = $day.' '. date( 'g:ia', strtotime( $C[ $i ][ 'start_time' ] ) ).' '.$C[ $i ][ 'title' ];
			$C[ $i ][ 'link' ] = Link::Build( 'program-'.$C[ $i ][ 'tgp_program_id' ].'/category-'.$C[ $i ][ 'category_id' ].'/class-group-'.$C[ $i ][ 'title_id' ].'/class-info/'.$C[ $i][ 'class_id' ] );
			
			if( !in_array( $day, $this->mWeek ) )
				$this->mWeek[ sizeof( $this->mWeek ) ] = $day;
		}
	}
	
	private function addClasses()
	{
		if( !isset( $_POST[ 'tgp_student_add_classes' ] ) )
			return;
			
		foreach( $_POST[ 'tgp_classes' ] AS $cID )
		{
			$cID = sanitize::sani( $cID, 'INTIGER' );
			
			if( $cID > 0 )
				student::addToClass( $this->mStudentID, $cID );
		}
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent' ) );
		exit;
	}
	
	public function __destruct()
	{
	
	}
}
?>