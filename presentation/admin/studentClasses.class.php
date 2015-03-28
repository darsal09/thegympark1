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
		
		$this->mLinkToAddClass = Link::Build( 'admin/students/'.$this->mStudentID.'/addClass' );
	}
	
	private function setTimes( &$c )
	{
		$size = sizeof( $c );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$c[ $i ][ 'start_time' ] 		= date( 'g:ia', strtotime( $c[ $i ][ 'start_time' ] ) );
			$c[ $i ][ 'end_time' ] 			= date( 'g:ia', strtotime( $c[ $i ][ 'end_time' ] ) );
			$c[ $i ][ 'link_to_class' ] 	= Link::Build(  'admin/programs/'.$c[ $i ][ 'tgp_program_id' ].'/categories/'.$c[ $i ][ 'category_id' ].'/class-groups/'.$c[ $i ][ 'title_id' ].'/classes/'.$c[ $i ][ 'class_id' ] ); 
			$c[ $i ][ 'link_to_remove' ] 	= Link::Build( 'admin/students/'.$this->mStudentID.'/classes/'.$c[ $i ][ 'class_id' ].'/remove' );
			$c[ $i ][  'move' ]				= Link::Build( 'admin/students/'.$this->mStudentID.'/classes/'.$c[ $i ][ 'class_id' ].'/move' );
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>