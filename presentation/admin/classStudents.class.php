<?php
class classStudents
{
	public $mStudents;
	public $mFull;
	public $mLast;
	public $mFirst;
	
	public $mProgramID;
	public $mCategoryID;
	public $mClassID;

	
	public $mLinkToAddChild;
	public $mLinkToAddChildren;
	public $mLinkToAddChildrenFile;
	public $mLinkToAddExistingParticipant;
	public $mLinkToTakeAttedance;
	public $mLinkForAttedance;//this one is used for jquery
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = $_GET[ 'tgp_program_id' ];
		
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = $_GET[ 'tgp_category_id' ];
			
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
		
		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->mClassGroupID = sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );
	}
	
	public function init()
	{
	
		$this->mClass = classModel::get( array( ':cID' => $this->mClassID ) );
		
		$this->mFull = helper::getClassParameters( 'Full', $this->mClass );
		$this->mFull[ 'begin' ] = date( 'm/d/Y', strtotime( $this->mFull[ 'begin' ] ) );
		$this->mFull[ 'end' ] = date( 'm/d/Y', strtotime( $this->mFull[ 'end' ] ) );
		
		$this->mFirst = helper::getClassParameters( 'First', $this->mClass );
		$this->mFirst[ 'begin' ] = date( 'm/d/Y', strtotime( $this->mFirst[ 'begin' ] ) );
		$this->mFirst[ 'end' ] = date( 'm/d/Y', strtotime( $this->mFirst[ 'end' ] ) );
		
		$this->mLast = helper::getClassParameters( 'Last', $this->mClass );
		$this->mLast[ 'begin' ] = date( 'm/d/Y', strtotime( $this->mLast[ 'begin' ] ) );
		$this->mLast[ 'end' ] = date( 'm/d/Y', strtotime( $this->mLast[ 'end' ] ) );
		
		$this->mStudents = classModel::getStudents( array( ':cID' => $this->mClassID ) );
		$this->setLinks();
		
		$this->mLinkToAddChild 					= Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID.'/addChild' );
		$this->mLinkToAddChildren 				= Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID.'/addChildren' );
		$this->mLinkToAddChildrenFromFile 		= Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID.'/addChildrenFromFile' );
		$this->mLinkToAddExistingParticipant 	= Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID.'/addExistingParticipant' );
		$this->mLinkToTakeAttendance		 	= Link::Build( 'employee/classes/current/'.$this->mClassID );
		
		/*
			Links to API
		*/
		$this->mLinkForAttendance				= Link::Build( 'api/employee/classes/class/fullRosterAttendance.php' );
		$this->mLinkToGetStudents				= Link::Build( 'api/employee/classes/class/getStudentsNotInClass.php' );
		$this->mLinkToAddStudents				= Link::Build( 'api/employee/classes/class/addStudents.php' );
		$this->mLinkToRemoveStudents			= Link::Build( 'api/employee/classes/class/students/student/remove.php' );
		$this->mLinkToUpdateStudents			= Link::Build( 'api/employee/classes/class/students/student/update.php' );
		$this->mLinkToTakePayment				= Link::Build( 'api/employee/classes/class/students/student/payment.php' );
	}
	
	private function setLinks()
	{
		$s = &$this->mStudents;
		$size = sizeof( $s );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$s[ $i ][ 'link_to_student' ] 	= Link::Build( 'admin/students/'.$s[ $i ][ 'id' ] );
			$s[ $i ][ 'link_to_remove' ] 	= Link::Build( 'admin/students/'.$s[ $i ][ 'id' ].'/classes/'.$this->mClassID.'/remove' );
			
			list( $year, $month, $day ) = explode( '-', $s[ $i ][ 'dob' ] );
			
			$aYear = date( 'Y' );
			$aMonth = date( 'n' );
			$aDay = date( 'l' );
			
			$dYear = $aYear - $year;
			
			if( $aMonth < $month )
				$dYear--;
			else if( $aMonth == $month && $aDay < $day )
				$dYear--;
			
			$s[ $i ][ 'age' ] = $dYear;
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>