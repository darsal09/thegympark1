<?php
class addPackageToStudent
{
	public $mStudentID;
	public $mParticipant;
	public $mOpenPlays;
	
	public function __construct()
	{	
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
				
		if( isset( $_POST[ 'tgp_add_open_play' ] )  )
			$this->addOpenPlay();
	}
	
	public function init()
	{
		$season = seasonModel::getCurrent();

		$this->mOpenPlays = packagesModel::get( array( ':type' => 'Individual' )  );
		$this->mParticipant = student::getInfo( $this->mStudentID );
		
		$this->setTitle();
	}
	
	private function addOpenPlay( )
	{
		if( !isset( $_POST[ 'tgp_add_open_play' ] ) )
			return;
		
		foreach( $_POST[ 'tgp_openplays' ] AS $ID )
		{
			$ID = sanitize::sani( $ID, 'INTIGER' );			
			
			$amount = sanitize::sani( $_POST[ 'openplay_'.$ID ], 'INTIGER' );
			
			if( $amount > 0 )
				openPlayModel::addStudent( array( ':opID' => $ID, ':sID' => $this->mStudentID, ':Amount' => $amount ) );
			else
				echo '<p class=error>You did not provide amount for the following open play</p>';
		}
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent' ) );
		exit;
	}
	
	private function setTitle()
	{
		$s = &$this->mOpenPlays;
		$size = sizeof( $s );
		
		for( $i = 0; $i < $size; $i++ )
			$s[ $i ][ 'title' ] = $s[ $i ][ 'season' ].' '.$s[ $i ][ 'year' ];
	}
	
	public function __destruct()
	{
	
	}
}
?>