<?php
class classGroup
{	
	public $mClassTitle;
	public $mWeek;
	
	public $mLinkToProgram;
	public $mLinkToCategory;
	
	private $mClassGroupID;
	private $mProgramID;
	private $mCategoryID;
	private $mClassesSchedule;
	
	public function __construct()
	{
		$this->mClassesSchedule = array();
		
		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->mClassGroupID = sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );
	
		
	
		if( $this->mClassGroupID < 1)
		{
			header( 'Location:'.Link::Build( '' ) );
			exit;
		}
		
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' ) );
				
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = intval( sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' ) );


		if( isset( $_POST[ 'tgp_class_group_register' ] ) ) //The program will go here if someone is trying to buy packages for a class group
			$this->classGroupRegister();			
	}
	
	public function init()
	{						
		$this->mClassTitle 					= catalog::getClassGroup( $this->mClassGroupID );
		
		if( $this->mClassTitle[ 'type' ] == "Flexible" )
		{
			header( 'Location:'.Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/open-play/'.$this->mClassGroupID ) );
			exit;
		}
		
		$this->mClassesSchedule 			= catalog::getClassesInClassGroup( $this->mClassGroupID );	
		
		$this->setWeek();
		$this->setTimeFormat();
		
		$this->mClassPackagesIndividual 	= catalog::getClassPackages( $this->mClassGroupID, 'Individual' );
		$this->mClassPackagesFamily 		= catalog::getClassPackages( $this->mClassGroupID, 'Family' );

		$this->sortClasses();
		
		$this->mLinkToProgram 	= Link::Build( 'program-info/'.$this->mProgramID );
		$this->mLinkToCategory 	= Link::Build( 'program-'.$this->mProgramID.'/category-info/'.$this->mCategoryID );	
		$this->mLinkToAddClass	= Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/add-class' );
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
	
	private function setTimeFormat()
	{
		for( $i = 0; $i < sizeof( $this->mClassesSchedule ); $i++ )
		{			
			$this->mClassesSchedule[ $i ][ 'start_time' ] = catalog::setTimeFormat( $this->mClassesSchedule[ $i ][ 'start_time' ] );
			$this->mClassesSchedule[ $i ][ 'end_time' ] = catalog::setTimeFormat( $this->mClassesSchedule[ $i ][ 'end_time' ] );
			
			$this->mClassesSchedule[ $i ][ 'link_to_class' ] = Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/class-info/'.$this->mClassesSchedule[ $i ][ 'class_id' ] );
		}
	}
	
	private function sortClasses()
	{
		$ct = &$this->mClassesSchedule;
		$size = sizeof( $ct );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$index = $this->getIndex( $ct[ $i ][ 'weekday' ] );
			
			$this->mWeek[ $index ][ sizeof( $this->mWeek[ $index ] ) ] = $ct[ $i ];
		}
	}
	
	private function getIndex( $wday )
	{
		if( empty( $wday) )
			return -1;
			
		$weekday = array( "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" );
		
		for( $i = 0; $i < 7; $i++ )
			if( $wday == $weekday[ $i ] )
				return $i;
			
		return -1;
	}
	
	private function getClassDays()
	{
		$weekdays = array();
		$classes = &$this->mClassesSchedule;
		$size = sizeof( $classes );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$weekdays[ $i ] = substr( $classes[ $i ][ 'weekday' ], 0, 3 ).'__'.$classes[ $i ][ 'start_time' ];
		}
		
		return $weekdays;
	}
		
	private function classGroupRegister()
	{
		if( !isset( $_POST[ 'tgp_class_group_register' ]  )  )
			return;
				
		$packages = $_POST[ 'tgp_class_group_package' ]; //holds the packages selected by the user
		
		//get weekdays from the database
		$weekdays = implode( '/', $this->getClassDays() );
		
		foreach( $packages AS $p )
		{
			$p = sanitize::sani( $p, 'STRING' );

			list( $type, $price, $package ) = explode( "__",  $p );
			
			$price = sanitize::sani( $price, 'INTIGER' );
			
			$result = shoppingCart::addClassToCart( 0, $this->mClassGroupID, $this->mClassTitle[ 'title' ], $weekdays, $this->mClassTitle[ 'type' ], $price, $p);
		}
		
		if( $result )
		{
			header( 'Location:'.Link::Build( '' ) );
			exit;
		}
	}
}
?>