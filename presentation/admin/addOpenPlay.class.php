<?php
class addOpenPlay
{
	public $mStudentID;
	
	public function __construct()
	{	
		if( isset( $_POST[ 'tgp_add_open_play' ] )  )
			$this->addOpenPlay();
	}
	
	public function init()
	{
		$this->mSeasons = seasonsModel::get();
		$this->setTitle();
	}
	
	private function addOpenPlay( )
	{
		if( !isset( $_POST[ 'tgp_add_open_play' ] ) )
			return;
		
		if( !isset( $_POST[ 'tgp_seasons' ] )  )
			return;
		
		$title = sanitize::sani( $_POST[ 'open_play_title' ], 'STRING' );
		
		foreach( $_POST[ 'tgp_seasons' ] AS $ID )
		{
			$ID = sanitize::sani( $ID, 'INTIGER' );	
			
			if( !openPlayModel::add( array( ':sID' => $ID, ':title' => $title ) ) )
				echo '<div class=has-errors>There is an open play for that season</div>';
			
		}
		
		helper::redirect( 'admin/open-plays' );
	}
	
	private function setTitle()
	{
		$s = &$this->mSeasons;
		$size = sizeof( $s );
		
		for( $i = 0; $i < $size; $i++ )
			$s[ $i ][ 'title' ] = $s[ $i ][ 'season' ].' '.$s[ $i ][ 'year' ];
	}
	
	public function __destruct()
	{
	
	}
}
?>