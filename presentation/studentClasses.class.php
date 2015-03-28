<?php
class studentClasses
{

	public $mClasses;
	
	public $mLinkToAddClass = '';
	
	public function __construct()
	{
		
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' ) );
		
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = intval( sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' ) );
		
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = intval( sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' ) );
		
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = intval( sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' ) );
		
		if( isset( $_GET[ 'option' ] ) )
			$this->mOption = sanitize::sani( $_GET[ 'option' ], 'STRING' );			
	}
	
	public function init()
	{
		$this->mClasses = administrator::getStudentClasses( $this->mStudentID );
		$this->setTimes( $this->mClasses );
		
		$this->mLinkToAddClass = Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=addClassToStudent' );
	}
	
	private function setTimes( &$c )
	{
		$size = sizeof( $c );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$c[ $i ][ 'start_time' ] 		= date( 'g:ia', strtotime( $c[ $i ][ 'start_time' ] ) );
			$c[ $i ][ 'end_time' ] 			= date( 'g:ia', strtotime( $c[ $i ][ 'end_time' ] ) );
			$c[ $i ][ 'link_to_class' ] 	= Link::Build(  'program-'.$c[ $i ][ 'tgp_program_id' ].'/category-'.$c[ $i ][ 'category_id' ].'/class-group-'.$c[ $i ][ 'title_id' ].'/class-info/'.$c[ $i ][ 'class_id' ] ); 
			$c[ $i ][ 'link_to_remove' ] 	= Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&tgp_class_id='.$c[ $i ][ 'class_id' ].'&action=removeClass' );
			$c[ $i ][  'move' ]				= Link::Build( 'index.php?tgp_program_id='.$c[ $i ][ 'tgp_program_id' ].'&tgp_category_id='.$c[ $i ][ 'category_id' ].'&tgp_class_group_id='.$c[ $i ][ 'title_id' ].'&tgp_class_id='.$c[ $i ][ 'class_id' ].'&tgp_student_id='.$this->mStudentID.'&action=moveParticipant' );
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>