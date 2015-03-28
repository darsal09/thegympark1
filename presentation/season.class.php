<?php

class season
{
	public $mObjects = array();
	public $mSeason = array();
	
	public $mWeekdays = array();
	
	public $mLinkToAdmin;
	public $mLinkToSeasons;
	public $mLinkToWholeWeek;
	public $mLinkToTitles;
	
	public $mWeekday;
	public $mTitleID;
	public $mTitles = array();
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_season_id' ] ) )
			$this->mSeasonID = sanitize::sani( $_GET[ 'tgp_season_id' ], 'INTIGER' );
		
		if( isset( $_GET[ 'tgp_weekday' ] ) )
			$this->mWeekday = sanitize::sani( $_GET[  'tgp_weekday' ], 'STRING' );
		
		if( isset( $_GET[ 'tgp_title_id' ] ) )
			$this->mTitleID = sanitize::sani( $_GET[ 'tgp_title_id' ], 'INTIGER' );
	}
	
	public function init()
	{
		$this->mSeason = seasonModel::get( $this->mSeasonID );
		
		$this->setObject();
		
		$this->mLinkToAdmin = Link::Build( 'index.php?action=admin' );
		$this->mLinkToSeasons = Link::Build( 'index.php?tgp_admin_options=Seasons&action=admin' );
		$this->mLinkToWholeWeek = Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&action=season' );
		
		if( isset( $this->mWeekday ) )
			$this->mLinkToTitles 	= Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&tgp_weekday='.$this->mWeekday.'&action=season' );
		else		
			$this->mLinkToTitles 	= Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&action=season' );
			
		$this->setWeekdays();
		$this->setDates();		
	}
	
	private function setWeekdays()
	{
		if( isset( $this->mTitleID ) )
		{
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Sunday', 'link' => Link::Build( 'index.php?tgp_title_id='.$this->mTitleID.'&tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Sunday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Monday', 'link' => Link::Build( 'index.php?tgp_title_id='.$this->mTitleID.'&tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Monday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Tuesday', 'link' => Link::Build( 'index.php?tgp_title_id='.$this->mTitleID.'&tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Tuesday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Wednesday', 'link' => Link::Build( 'index.php?tgp_title_id='.$this->mTitleID.'&tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Wednesday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Thursday', 'link' => Link::Build( 'index.php?tgp_title_id='.$this->mTitleID.'&tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Thursday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Friday', 'link' => Link::Build( 'index.php?tgp_title_id='.$this->mTitleID.'&tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Friday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Saturday', 'link' => Link::Build( 'index.php?tgp_title_id='.$this->mTitleID.'&tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Saturday&action=season' ) );		
		}
		else
		{
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Sunday', 'link' => Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Sunday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Monday', 'link' => Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Monday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Tuesday', 'link' => Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Tuesday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Wednesday', 'link' => Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Wednesday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Thursday', 'link' => Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Thursday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Friday', 'link' => Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Friday&action=season' ) );
			$this->mWeekdays[ sizeof( $this->mWeekdays ) ] = array( 'weekday' => 'Saturday', 'link' => Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&tgp_weekday=Saturday&action=season' ) );
		}
	}
	
	private function setDates()
	{
		$this->mSeason[ 'start_date' ] 	= date( 'm/d/Y', strtotime( $this->mSeason[ 'start_date' ] ) );
		$this->mSeason[ 'end_date' ] 	= date( 'm/d/Y', strtotime( $this->mSeason[ 'end_date' ]) );
	}
	
	/*
	This function grabs all the classes for a season, if the weekday is set it will only grab the classes for that specific weekday for that season
	
	*/
	private function setObject()
	{
		if( isset( $this->mTitleID ) )
		{
			$classes = seasonModel::getTitleClasses( array( ':tID' => $this->mTitleID, ':sID' => $this->mSeasonID ) );
			
			if( isset( $this->mWeekday ) )
				$classes = seasonModel::getWeekdayTitleClasses( array( ':tID' => $this->mTitleID, ':sID' => $this->mSeasonID, ':weekday' => $this->mWeekday ) );
		}
		else if( !isset( $this->mWeekday ) )
			$classes = seasonModel::getClasses( $this->mSeasonID );
		else
			$classes = seasonModel::getWeekdayClasses( array( ':weekday' => $this->mWeekday, ':sID' => $this->mSeasonID ) );
		
		$size = sizeof( $classes );
		
		for( $i = 0; $i < $size; $i++ )
		{
			list( $hour, $min, $sec ) = explode( ':', $classes[ $i ][ 'start_time' ] );
			
			if( $min == '00' )
				$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => substr( $classes[ $i ][ 'weekday' ], 0, 3 ).' '.date( 'ga', strtotime( $classes[ $i ][ 'start_time' ] ) ).' <br/> '.$classes[ $i ][ 'title' ], 'link' => Link::Build( 'program-'.$classes[ $i ][ 'tgp_program_id' ].'/category-'.$classes[ $i ][ 'category_id' ].'/class-group-'.$classes[ $i ][ 'title_id' ].'/class-info/'.$classes[ $i ][ 'class_id' ] ), 'hexColor' => $classes[ $i ][ 'hexColor' ] );
			else
				$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => substr( $classes[ $i ][ 'weekday' ], 0, 3 ).' '.date( 'g:ia', strtotime( $classes[ $i ][ 'start_time' ] ) ).' <br/> '.$classes[ $i ][ 'title' ], 'link' => Link::Build( 'program-'.$classes[ $i ][ 'tgp_program_id' ].'/category-'.$classes[ $i ][ 'category_id' ].'/class-group-'.$classes[ $i ][ 'title_id' ].'/class-info/'.$classes[ $i ][ 'class_id' ] ), 'hexColor' => $classes[ $i ][ 'hexColor' ] );
				
			if( !$this->titleInArray( $classes[ $i ][ 'title_id' ] ) )
			{
				$tSize = sizeof( $this->mTitles );
					
				$this->mTitles[ $tSize ] = array( 'id' => $classes[ $i ][ 'title_id' ], 'title' => $classes[ $i ][ 'title' ], 'link' => Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&tgp_title_id='.$classes[ $i ][ 'title_id' ].'&action=season' ) ); 
					
				if( isset( $this->mWeekday ) )
					$this->mTitles[ $tSize ][ 'link' ] = Link::Build( 'index.php?tgp_season_id='.$this->mSeasonID.'&tgp_title_id='.$classes[ $i ][ 'title_id' ].'&tgp_weekday='.$this->mWeekday.'&action=season' );
				
			}
			
		}
	}
	
	private function titleInArray( $tID )
	{
		foreach( $this->mTitles AS $Title )
			if( in_array( $tID, $Title ) )
				return true;
				
		return false;
	}
	
	public function __destruct()
	{
	
	}
}
?>