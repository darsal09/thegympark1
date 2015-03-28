<?php
class programFeaturedClasses
{
	public $mFeaturedClasses;
	public $mWeek;
	
	private $mProgramID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( $_GET[ 'tgp_program_id' ] );
			
		$this->mWeek = array( );
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();		
	}
	public function init()
	{
		$season = seasonModel::getCurrent();
		
		if( !$season )
			$season = seasonModel::getNext();
		
		$this->mFeaturedClasses = programModel::getSeasonClasses( array( ':pID' => $this->mProgramID, ':sID' => $season[ 'id' ] ) ) ;
		$this->setLinks();
		$this->sortClasses();
		//print_r( $this->mWeek );
	}
	private function sortClasses()
	{				
		for( $i = 0; $i < sizeof( $this->mFeaturedClasses ); $i++ )
		{			
			$p_index = $this->getIndex( $this->mFeaturedClasses[ $i ][ 'weekday' ] );
			
			$this->mWeek[ $p_index ][ sizeof( $this->mWeek[ $p_index ] ) ] = $this->mFeaturedClasses[ $i ];
		}
	}
	private function getIndex( $day )
	{
		$weekdays = array( 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' );
		
		for( $i = 0; $i < sizeof( $weekdays ); $i++ )
			if( $weekdays[ $i ] == $day )
				return $i;
				
		return -1;
	}
	private function setLinks()
	{
		for( $i = 0; $i < sizeof( $this->mFeaturedClasses ); $i++ )
		{
			$this->mFeaturedClasses[ $i ][ 'class_link' ] = Link::Build( 'program-'.$this->mFeaturedClasses[ $i  ][ 'tgp_program_id' ].'/category-'.$this->mFeaturedClasses[ $i ][ 'tgp_class_category_id' ].'/class-group-'.$this->mFeaturedClasses[ $i ][ 'title_id' ].'/class-info/'.$this->mFeaturedClasses[ $i ][ 'class_id' ] );

			list( $hour, $minute, $second ) = explode(':', $this->mFeaturedClasses[ $i ][ 'start_time' ] );
			
			if( intval( $minute ) == 0 )
				$this->mFeaturedClasses[ $i ][ 'start_time' ] = date( 'ga', strtotime( $this->mFeaturedClasses[ $i ][ 'start_time' ] ) );
			else
				$this->mFeaturedClasses[ $i ][ 'start_time' ] = date( 'g:ia', strtotime( $this->mFeaturedClasses[ $i ][ 'start_time' ] ) );
			
			list( $hour, $minute, $second ) = explode(':', $this->mFeaturedClasses[ $i ][ 'end_time' ] );
			
			if( intval( $minute ) == 0 )
				$this->mFeaturedClasses[ $i ][ 'end_time' ] = date( 'ga', strtotime( $this->mFeaturedClasses[ $i ][ 'end_time' ] ) );
			else
				$this->mFeaturedClasses[ $i ][ 'end_time' ] = date( 'g:ia', strtotime( $this->mFeaturedClasses[ $i ][ 'end_time' ] ) );
		}		
	}
}
?>