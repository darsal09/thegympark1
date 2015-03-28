<?php
class openPlay
{
	public $mOpenPlayID;
	public $mClasses;
	public $mStudents;
	
	public $mLinkToAddClasses;
	public $mLinkToAddStudents;
	
	public $mLinks = array();
	
	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_open_play_id' ] ) )
			helper::redirect( 'admin/open-plays' );
		
		$this->mOpenPlayID = sanitize::sani( $_GET[ 'tgp_open_play_id' ], 'INTIGER' );
	}
	
	public function init()
	{
		$this->mOpenPlay 	=  openPlayModel::get( array( ':opID' => $this->mOpenPlayID ) );
		$this->mClasses 	= openPlayModel::getClasses( array( ':opID' => $this->mOpenPlayID ) );
		$this->mStudents	= openPlayModel::getStudents( );
		$this->setClassesTitle();
		
		$this->mLinkToAddClasses = Link::Build( 'admin/open-plays/'.$this->mOpenPlayID.'/addClass' );
		$this->mLinkToAddStudents = Link::Build( 'admin/open-plays/'.$this->mOpenPlayID.'/addStudent' );
		$this->mLinkToTakeAttendance = Link::Build( 'employee/open-plays/current' );
		$this->setLinks();
		$this->setStudents();
	}
	
	private function setLinks()
	{
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin' ), 'title' => '&laquo;Admin' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin/open-plays' ), 'title' => '&laquo;Open Plays' );
	}
	
	private function setClassesTitle()
	{
		$C = &$this->mClasses;
		$size = sizeof( $C );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$C[ $i ][ 'title' ] = date( 'g:ia', strtotime( $C[ $i ][ 'start_time' ] ) ).' - '.$C[ $i ][ 'weekday' ];
			$C[ $i ][ 'link' ] = Link::Build( 'open-plays-'.$this->mOpenPlayID.'/class-'.$C[ $i ][ 'class_id' ].'/attendance' );
		}
	}
	
	private function setStudents()
	{
		$S = &$this->mStudents;
		$size = sizeof( $S );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$S[ $i ][ 'name' ] = $S[ $i ][ 'first' ].' '.$S[ $i ][ 'last' ];
			$S[ $i ][ 'link' ] = Link::Build( 'index.php?tgp_student_id='.$S[ $i ][ 'id' ].'&action=viewStudent' );
			$S[ $i ][ 'history' ] = Link::Build( 'open-plays-'.$this->mOpenPlayID.'/student-'.$S[  $i ][ 'id' ].'/history' );
		}
	}
}
?>