<?php
class classStudents
{
	public $mStudents;
	
	public $mProgramID;
	public $mCategoryID;
	public $mClassID;

	public $mLinkToAddChild;
	public $mLinkToAddChildren;
	public $mLinkToAddChildrenFile;
	public $mLinkToAddExistingParticipant;
	
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
		$this->mStudents = administrator::getClassStudents( $this->mClassID );
		
		$this->setLinks();
		
		$this->mLinkToAddChild 					= Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/class-'.$this->mClassID.'/addChild' );
		$this->mLinkToAddChildren 				= Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-'.$this->mClassID.'/addChildren' );
		$this->mLinkToAddChildrenFromFile 		= Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-'.$this->mClassID.'/addChildrenFromFile' );
		$this->mLinkToAddExistingParticipant 	= Link::Build( 'index.php?tgp_program_id='.$this->mProgramID.'&tgp_category_id='.$this->mCategoryID.'&tgp_class_group_id='.$this->mClassGroupID.'&tgp_class_id='.$this->mClassID.'&action=addExistingParticipant' );
	}
	
	private function setLinks()
	{
		$s = &$this->mStudents;
		$size = sizeof( $s );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$s[ $i ][ 'link_to_student' ] 	= Link::Build( 'index.php?tgp_student_id='.$s[ $i ][ 'id' ].'&action=studentView' );
			$s[ $i ][ 'link_to_remove' ] 	= Link::Build( 'index.php?tgp_program_id='.$this->mProgramID.'&tgp_category_id='.$this->mCategoryID.'&tgp_class_group_id='.$this->mClassGroupID.'&tgp_class_id='.$this->mClassID.'&tgp_student_id='.$s[ $i ][ 'id' ].'&action=removeParticipant' );
			
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