<?php
class addStudentToOpenPlay
{
	public $mStudents;
	public $mFilters;
	
	public $mOpenPlay;
	
	public $mOpenPlayID;
	public $mLetter;
	
	public $mLinkToShowAll;
	public $mLinkToOpenPlay;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_open_play_id' ] ) )
			$this->mOpenPlayID = sanitize::sani( $_GET[ 'tgp_open_play_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_letter' ] ) )
			$this->mLetter = sanitize::sani( $_GET[ 'letter' ], 'STRING' );
	
		if( isset( $_POST[ 'tgp_add_students' ] ) )
			$this->addStudents();
	}
	
	public function init()
	{
		if( isset( $this->mLetter ) )
			$this->mStudents = openPlayStudentsModel::getNotInWithLetter( array( ':letter' => $this->mLetter, ':opID' => $this->mOpenPlayID ) );
		else
			$this->mStudents = openPlayStudentsModel::getNotIn( array( ':opID' => $this->mOpenPlayID ) );
		
		$this->mParticipants = openPlayStudentsModel::get( array( ':opID' => $this->mOpenPlayID ) );
		$this->mOpenPlay = openPlayModel::get( array( ':opID' => $this->mOpenPlayID ) );
		
		$this->setStudents();
		$this->setFilters();
		
		$this->mLinkToShowAll = Link::Build( 'admin/open-plays/'.$this->mOpenPlayID.'/addStudent' );
		$this->mLinkToOpenPlay = Link::Build( 'admin/open-plays/'.$this->mOpenPlayID );
	}
	
	
	private function setStudents()
	{
		$S = &$this->mStudents;
		$size = sizeof( $S );
		
		for( $i = 0; $i < $size; $i++ )
			$S[ $i ][ 'name' ] = $S[ $i ][ 'first'  ].' '.$S[ $i ][ 'last' ];
	}

	private function setFilters()
	{
		$S = openPlayStudentsModel::getNotIn( array( ':opID' => $this->mOpenPlayID ) );
		
		$size = sizeof( $S );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$index = sizeof( $this->mFilters );
			$letter = substr( $S[ $i ][ 'first' ], 0, 1 );			

			if( !$this->inFilter( $letter ) )
				$this->mFilters[ $index ] = array( 'letter' => $letter, 'link' => Link::Build( 'admin/open-plays/'.$this->mOpenPlayID.'/addStudent/letter/'.$letter ));
		}
	}
	
	private function inFilter( $letter )
	{
		$size = sizeof( $this->mFilters );
		
		for( $i = 0; $i < $size; $i++ )
			if( in_array( $letter, $this->mFilters[ $i ] ) )
				return true;

		return false;
	}
	
	
	private function addStudents()
	{
		if( !isset( $_POST[ 'tgp_add_students' ] ) )
			return;
			
		foreach( $_POST[ 'tgp_students_id' ] AS $sID )
		{
			$sID = sanitize::sani( $sID, 'INTIGER' );
			
			$amount = sanitize::sani( $_POST[ 'tgp_students_'.$sID.'_amount' ], 'INTIGER' );
			
			openPlayModel::addStudent( array( ':opID' => $this->mOpenPlayID, ':sID' => $sID, ':Amount' => $amount ) );
		}	
	
		helper::redirect( 'admin/open-plays/'.$this->mOpenPlayID );		
	}
	
	public function __destruct()
	{
	
	}
}
?>