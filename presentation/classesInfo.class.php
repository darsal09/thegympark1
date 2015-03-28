<?php
class classesInfo
{
	public $mObjects 	= array();
	public $mClasses = array();
	
	public $mLinks = array();
	
	public $mDay;
	
	public $mLinkToAddClasses;
	public $mLinkToAllWeek;
	
	public function __construct()
	{			
		if( isset( $_GET[ 'tgp_classes_day' ] ) )
			$this->mDay = sanitize::sani( $_GET[ 'tgp_classes_day' ], 'STRING' );
						
	
		if( isset( $_POST[ 'tgp_search' ] ) )
			$this->doSearch();
	
	}
	
	public function init()
	{
		$this->mPrograms = catalog::getPrograms();
	
		if( !empty( $this->mDay ) )
			$this->setDayMenu();
		else
		{
			$this->mClasses = classes::getCurrentSeason();
			
			if( sizeof( $this->mClasses ) < 1 )
				$this->mClasses = classes::getNextSeason() ;
		}
		
		$this->setMenu();
		
		$this->setLinks();
		$this->setClasses();
	}
	
	private function setClasses()
	{
		$C = &$this->mClasses;
		$size = sizeof( $C );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$start_time = date( 'g:ia', strtotime( $C[ $i ][ 'start_time' ] ) );
			
			list( $hour, $min, $sec ) = explode( ':', $C[ $i ][ 'start_time' ] );
			
			if( $min == '00' )
				$start_time = date( 'ga', strtotime( $C[ $i ][ 'start_time' ] ) );
				
			$C[ $i ][ 'title' ] = substr( $C[ $i ][ 'weekday' ], 0, 3 ).' '.$start_time.'<br/>'.$C[ $i ][ 'title' ];
			$C[ $i ][ 'link' ] = Link::Build( 'program-'.$C[  $i ][ 'tgp_program_id' ].'/category-'.$C[ $i ][  'category_id' ].'/class-group-'.$C[ $i ][ 'title_id' ].'/class-info/'.$C[ $i ][ 'class_id' ] );
		}
	}
	
	private function setMenu()
	{
		$season = seasonModel::getCurrent();
		
		if( !$season )
			$season = seasonModel::getNext();
			
		$days =  classes::getSeasonDays( array( ':sID' => $season[ 'id' ] ) );//administrator::getClassDays( date( 'Y-m-d' ) );
		
		$size = sizeof( $days );
		
		for( $i = 0; $i < $size; $i++ )
			$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => $days[ $i ][ 'weekday' ], 'link' => Link::Build( 'index.php?action=classes&tgp_classes_day='.$days[ $i ][ 'weekday' ] ) );		
	}
	
	private function setDayMenu()
	{
		if( empty( $this->mDay ) )
			return;
		$season = seasonModel::getCurrent();

		if( !$season )
			$season = seasonModel::getNext();
			
		$this->mClasses = administrator::getSeasonDayClasses( array( ':Day' => $this->mDay, ':sID' => $season[ 'id' ] ) );
	}
	
	private function doSearch()
	{
		echo '<p>searching...</p>';
	}
	
	private function setLinks()
	{
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin' ), 'title' => 'Admin' );		
					
		$this->mLinkToAddClasses =  Link::Build( 'index.php?action=addClasses' );
		$this->mLinkToAllWeek = Link::Build( 'index.php?action=classes' );
	}
}
?>