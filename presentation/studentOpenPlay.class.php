<?php
class studentOpenPlay
{
	public $mOpenPlays;
	
	public $mLinkToAddOpenPlay;

	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
			
	}
	
	public function init()
	{
		$this->mOpenPlays = student::getOpenPlays( array( ':sID' => $this->mStudentID ) );
		$this->mLinkToAddOpenPlayToStudent = Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=addOpenPlayToStudent' );
		
		$this->setTitle();
	}
	
	private function setTitle()
	{
		$OP = &$this->mOpenPlays;
		$size = sizeof( $OP );

		for( $i = 0; $i < $size; $i++ )
		{
			$OP[ $i ][ 'title' ] = $OP[ $i ][ 'season' ].' '.$OP[ $i ][ 'year' ];
			$OP[ $i ][ 'link' ] = Link::Build( 'open-plays/'.$OP[ $i ][ 'openplay_id' ] );
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>