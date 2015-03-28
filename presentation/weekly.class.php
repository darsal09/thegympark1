<?php
class weeklyClass
{
	public $mTitle;
	public $mAgeGroup;
	public $mID;
	public $mType;
	public $mWeekdays;
	public $mLinkToClass;
	public $mLinkToAddPackageToClass;
	public $mColor;
	
	public function __construct( $class )
	{		
		$this->mWeekdays 	= array();
		$this->mTitle 		= $class[ 'title' ];
		$this->mType 		= $class[ 'type' ];
		$this->mID 			= $class[ 'title_id' ];
		$this->mAgeGroup 	= $class[ 'age_group' ];
		$this->mColor 		= $class[ 'hexColor' ];
		
		for( $i = 0; $i <= 7; $i++ )
			$this->mWeekdays[ $i ] = array();
		
		$this->addTime( $class[ 'class_id' ], $class[ 'title_id' ], $class[ 'weekday' ], $class[ 'start_time' ], $class[ 'tgp_program_id' ], $class[ 'category_id' ], $class[ 'type' ] ); 
		$this->mLinkToClass = Link::Build( 'program-'.$class[ 'tgp_program_id' ].'/category-'.$class[ 'category_id' ].'/class-group/'.$this->mID );
		
		$this->mLinkToAddPackageToClass = Link::Build( 'program-'.$class[ 'tgp_program_id' ].'/category-'.$class[ 'category_id' ].'/class-group-'.$this->mID.'/addClassPackage' );
	}
	
	public function addTime( $id, $groupTitleID, $day, $time, $programID, $categoryID, $classType )
	{
		$index = $this->getIndex( $day );
		
		if( $index > 0 )
			$this->mWeekdays[ $index ][ sizeof( $this->mWeekdays[ $index ] ) ] = new classTime( $id, $groupTitleID, $time, $categoryID, $programID, $classType );
	}
	
	public function getIndex( $day )
	{
		$weekdays = array( '', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' );		
		
		for( $i = 0; $i < sizeof( $weekdays ); $i++ )
			if( $weekdays[ $i ] == $day )
				return $i;
		
		return -1;
	}
}

class classTime
{
	public $mID;
	public $mTime;
	public $mLinkToClass;
	
	public function __construct( $id, $groupTitleID, $time, $categoryID, $programID, $classType )
	{
		$this->mID = $id;
		$this->mTime = $time;
		
		if( $classType == "Flexible" )
			$this->mLinkToClass = Link::Build( 'program-'.$programID.'/category-'.$categoryID.'/class-group/'.$groupTitleID );		
		else
			$this->mLinkToClass = Link::Build( 'program-'.$programID.'/category-'.$categoryID.'/class-group-'.$groupTitleID.'/class-info/'.$this->mID );
	}
}

class weekly
{
	public $classes;
	public $mClasses;
	public $mIsAdmin;
	
	public function __construct()
	{
		$this->classes 	= array();
		$this->mIsAdmin = user::isAdmin();
	}
	public function init()
	{
		$this->mSeason = seasonModel::getCurrent();
//		print_r( $this->mSeason );

		if( isset( $this->mSeason[ 'id' ] ) )
			$this->mClasses = classes::getSeason( array( ':sID' => $this->mSeason[ 'id' ] ) );
		else
		{
			
			$this->mSeason = seasonModel::getNext( );
			
			if( isset( $this->mSeason[ 'id' ] ) )
				$this->mClasses = classes::getNextSeason( array( ':sID' => $this->mSeason[ 'id' ] ) );
			else
			{
				$this->mSeason = seasonModel::getPrevious();
				$this->mClasses = classes::getPreviousSeason( array( ':sID' => $this->mSeason[ 'id' ] ) );
			}
		}
		
		$this->setUpClasses();
		$this->setUpSeason();
	}
	private function setTime()
	{
		for( $i = 0; $i < sizeof( $this->mClasses ); $i++ )
		{
			list( $hour, $minute, $second ) = explode(':', $this->mClasses[ $i ][ 'start_time' ] );
			
			if( intval( $minute ) == 0 )
				$this->mClasses[ $i ][ 'start_time' ] = date( 'ga', strtotime( $this->mClasses[ $i ][ 'start_time' ] ) );
			else
				$this->mClasses[ $i ][ 'start_time' ] = date( 'g:ia', strtotime( $this->mClasses[ $i ][ 'start_time' ] ) );
				
			$this->mClasses[ $i ][ 'hexColor' ] = categoryModel::getColor( $this->mClasses[ $i ][ 'category_id' ] );
		}
	}
	private function setUpClasses()
	{
		$this->setTime();
		
		for( $i = 0; $i < sizeof( $this->mClasses ); $i++ )
		{	
			$class = $this->mClasses[ $i ];
			//this checks to see if the class title already exist in the array or if it needs to start a new index in the array
			$index = $this->getIndex( $class[ 'title_id' ]  );
			
			if( $index >= 0 ) //exist in the array
				$this->classes[ $index ]->addTime( $class[ 'class_id' ], $class[ 'title_id' ], $class[ 'weekday' ], $class[ 'start_time' ], $class[ 'tgp_program_id' ], $class[ 'category_id' ], $class[ 'type' ] );
			else //create a new index in the array
				$this->classes[ sizeof( $this->classes ) ] = new weeklyClass( $class );
		}
	}
	
	private function setUpSeason()
	{
		$this->mSeason[ 'start_date'] 	= date( 'D M. jS, Y', strtotime( $this->mSeason[ 'start_date' ] ) );
		$this->mSeason[ 'end_date' ] 	= date( 'D M. jS, Y', strtotime( $this->mSeason[  'end_date' ] ) );
	}
	
	private function getIndex( $id )
	{
		for( $i = 0; $i < sizeof( $this->classes ); $i++ )
			if( $this->classes[ $i ]->mID == $id )
				return $i;
		
		return -1;		
	}
}
?>