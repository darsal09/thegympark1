<?php
class categoryFeaturedClasses
{
	public $mFeaturedClasses;
	public $mWeek;
	
	private $_mCategoryID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->_mCategoryID = intval( $_GET[ 'tgp_category_id' ] );
			
		$this->setWeek();		
	}
	
	
	public function init()
	{	
		$season = seasonModel::getCurrent();
		
		if( !$season )
			$season = seasonModel::getNext();
			
		$this->mFeaturedClasses =  categoryModel::getCategoryFeaturedClasses( $this->_mCategoryID, $season[ 'id' ] );

		$this->setLinks();
		$this->sortClasses();
	}

	private function setWeek()
	{
		$this->mWeek = array();
		
		$index = sizeof( $this->mWeek );
		$this->mWeek[ $index ] = array();
		$this->mWeek[ $index ][ 'weekdays' ] = 'Monday';
		
		$index = sizeof( $this->mWeek );
		$this->mWeek[ $index ] = array();
		$this->mWeek[ $index ][ 'weekdays' ] = 'Tuesday';
		
		$index = sizeof( $this->mWeek );
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();
		$this->mWeek[ $index ][ 'weekdays' ] = 'Wednesday';
		
		$index = sizeof( $this->mWeek );
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();
		$this->mWeek[ $index ][ 'weekdays' ] = 'Thursday';
		
		$index = sizeof( $this->mWeek );
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();
		$this->mWeek[ $index ][ 'weekdays' ] = 'Friday';

		$index = sizeof( $this->mWeek );
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();
		$this->mWeek[ $index ][ 'weekdays' ] = 'Saturday';

		$index = sizeof( $this->mWeek );
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();	
		$this->mWeek[ $index ][ 'weekdays' ] = 'Sunday';		
	}
	
	
	private function sortClasses()
	{		
		$size = sizeof( $this->mFeaturedClasses );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$index = $this->getIndex( $this->mFeaturedClasses[ $i][ 'weekday' ] );
		
			$this->mWeek[ $index ][ sizeof( $this->mWeek[ $index ] ) ] = $this->mFeaturedClasses[ $i ];		
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
	public function setLinks()
	{
		$size = sizeof( $this->mFeaturedClasses );
		for( $i = 0; $i < $size; $i++ )
		{
			$this->mFeaturedClasses[ $i ][ 'class_link' ] = Link::Build( 'program-'.$this->mFeaturedClasses[ $i  ][ 'tgp_program_id' ].'/category-'.$this->mFeaturedClasses[ $i ][ 'tgp_class_category_id' ].'/class-group-'.$this->mFeaturedClasses[ $i ][ 'title_id'].'/class-info/'.$this->mFeaturedClasses[ $i ][ 'class_id' ] );

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