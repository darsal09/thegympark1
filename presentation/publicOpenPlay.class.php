<?php
class publicOpenPlay
{	
	public $mClassTitle;
	public $mWeek;
	
	public $mLinkToProgram;
	public $mLinkToCategory;
	public $mOpenPlays;
	
	private $mClassGroupID;
	private $mProgramID;
	private $mCategoryID;
	private $mClassesSchedule;
	private $mOpenPlayID;
	
	public function __construct()
	{
		$this->mClassesSchedule = array();
		
		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->mOpenPlayID = sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' ) );
				
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = intval( sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' ) );


		if( isset( $_POST[ 'tgp_class_group_register' ] ) ) //The program will go here if someone is trying to buy packages for a class group
			$this->classGroupRegister();
	}
	
	public function init()
	{						
		$this->mClassTitle 	= catalog::getClassGroup( $this->mOpenPlayID );
		
		if( $this->mClassTitle[ 'type' ] == "Fixed" )
		{
			header( 'Location:'.Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group/'.$this->mClassGroupID ) );
			exit;
		}
		
		$this->mOpenPlays = openPlayModel::getCurrent();
						
		$this->mClassesSchedule = openPlayModel::getClasses( array( ':opID' => $this->mOpenPlays[ 'id' ] ) );//catalog::getClassesInClassGroup( $this->mOpenPlayID );	
		
		$this->setWeek();
		$this->setTimeFormat();
		
		$op = new openPlay( array( ':opID' => $this->mOpenPlays[ 'id' ] ) );
		
		$this->mClassPackagesIndividual 	= $op->getIndividualPackages();
		$this->mClassPackagesFamily 		= $op->getGroupPackages();

		$this->setIndividualPackages();
		$this->setFamilyPackages();
		
		$this->sortClasses();
		
		$this->mLinkToProgram 	= Link::Build( 'program-info/'.$this->mProgramID );
		$this->mLinkToCategory 	= Link::Build( 'program-'.$this->mProgramID.'/category-info/'.$this->mCategoryID );	
		$this->mLinkToAddClass	= Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/add-class' );
	}

	private function setIndividualPackages()
	{
		$I = &$this->mClassPackagesIndividual;

		$size = sizeof( $I );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$packageID = $I[ $i ]->getID();
			$I[ $i ]->setLink( Link::Build( 'openplay-'.$this->mOpenPlays[ 'id' ].'/register/package-'.$packageID.'/season-'.$this->mOpenPlays[ 'season_id' ] ) );
		}
	}
	
	private function setFamilyPackages()
	{
		$I = &$this->mClassPackagesFamily;

		$size = sizeof( $I );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$packageID = $I[ $i ]->getID();
			$I[ $i ]->setLink( Link::Build( 'openplay-'.$this->mOpenPlays[ 'id' ].'/register/package-'.$packageID.'/season-'.$this->mOpenPlays[ 'season_id' ] ) );
		}
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
			
			$this->mClassesSchedule[ $i ][ 'link_to_class' ] = Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mOpenPlayID.'/class-info/'.$this->mClassesSchedule[ $i ][ 'class_id' ] );
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
}
?>