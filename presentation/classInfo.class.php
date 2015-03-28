<?php
class classInfo
{
	public $mClassInfo;
	public $mClassTitles;
	public $mLinkToClass;
	public $mLinkToRegister;
	public $mLinkToSignUp;
	public $mLinkToAddPackages;
	public $mSimilarClasses;
	public $mWeekdays;
	
	public $mIsAdmin = false;
	public $mIsEdit = false;
	
	public $mClassID;
	private $mProgramID;
	private $mCategoryID;
	private $mClassGroupID;
	
	public function __construct()
	{	

		if( !isset( $_GET[ 'tgp_class_id' ] ) && !isset( $_GET[ 'tgp_program_id' ] ) && !isset( $_GET[ 'tgp_category_id' ] ) && !isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->redirectToClasses();
		
		$this->mClassID 		= sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
		$this->mClassGroupID 	= sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );
		$this->mCategoryID 		= sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' );
		$this->mProgramID 		= sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' );
	
		if( isset( $_POST[ 'tgp_class_edit' ] )  )
			$this->mIsEdit = true;
		
		if( isset( $_POST[ 'tgp_class_save' ] ) )
			$this->classSave();
			
		$this->setWeek();
	}
	
	public function init()
	{	
		$this->mSimilarClasses = 0;
		
		$this->mWeekdays = array( 'Select a day', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' );
		
		$this->mClassInfo = catalog::getClass( $this->mClassID );
		
		if( $this->mClassInfo[ 'type' ] == 'Flexible' )
			helper::redirect( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group/'.$this->mClassGroupID );
				
		$this->mClassTitles = catalog::getClassTitles( $this->mProgramID, $this->mCategoryID );
		$this->mClassTitleClasses = catalog::getClassTitleClasses( $this->mClassInfo[ 'title_id' ], $this->mClassInfo[ 'class_id' ] );
				
		if( $this->mClassInfo[ 'type' ] == "Flexible" )
			$this->mLinkToRegister = Link::Build( 'program-'.$this->mClassInfo[ 'tgp_program_id' ].'/category-'.$this->mClassInfo[ 'category_id' ].'/class-group/'.$this->mClassInfo[ 'title_id' ] );
		
		if( !$this->mIsEdit )
		{
			$this->setLink();
			$this->setTimeFormat();
		}
		
		//this function set the similar classes
		$this->setClassTimes();
		$this->sortClasses();
		
		$this->mIsAdmin 			= user::isAdmin();				
		$this->mLinkToRegister 		= Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-'.$this->mClassID.'/classRegister' );		
		$this->mLinkToAddPackages 	= Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-'.$this->mClassID.'/addClassPackges' );
		$this->mLinkToSignUp 		= Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/class-'.$this->mClassID.'/classSignUp/Full' );
		$this->mLinkToSignUpFirst 	= Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/class-'.$this->mClassID.'/classSignUp/First' );
		$this->mLinkToSignUpLast 	= Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/class-'.$this->mClassID.'/classSignUp/Last' );
		
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
	
	private function setLink()
	{
		$this->mLinkToClass = Link::Build( 'program-'.$this->mClassInfo[ 'tgp_program_id' ].'/category-'.$this->mClassInfo[ 'category_id' ].'/class-group-'.$this->mClassGroupID.'/class-info/'.$this->mClassInfo[ 'class_id' ] );
	}
	
	private function setTimeFormat()
	{
		list( $hour, $minute, $second ) = explode(':', $this->mClassInfo[ 'start_time' ] );
		
		if( intval( $minute ) == 0 )
			$this->mClassInfo[ 'start_time' ] = date( 'ga', strtotime( $this->mClassInfo[ 'start_time' ] ) );
		else
			$this->mClassInfo[ 'start_time' ] = date( 'g:ia', strtotime( $this->mClassInfo[ 'start_time' ] ) );
				
		list( $hour, $minute, $second ) = explode( ':', $this->mClassInfo[ 'end_time' ] );
			
		if( intval( $minute ) == 0 )
			$this->mClassInfo[ 'end_time' ] = date( 'ga', strtotime( $this->mClassInfo[ 'end_time' ] ) );			
		else
			$this->mClassInfo[ 'end_time' ] = date( 'g:ia', strtotime( $this->mClassInfo[ 'end_time' ] ) );
				
		$this->mClassInfo[ 'start_date' ] = date( 'F jS, Y', strtotime( $this->mClassInfo[ 'start_date' ] ) );
		$this->mClassInfo[ 'end_date' ] = date( 'F jS, Y', strtotime( $this->mClassInfo[ 'end_date' ] ) );
		
		$this->mFBegin = date( 'M jS, Y', strtotime( $this->mClassInfo[ 'start_date' ] ) );
		$this->mFEnd = date( 'M jS, Y', strtotime( '+8 Weeks', strtotime( $this->mClassInfo[ 'start_date' ] ) ) );
		$this->mLBegin = date( 'M jS, Y', strtotime( '+9 Weeks', strtotime( $this->mClassInfo[ 'start_date' ] ) ) );
		$this->mLEnd = date( 'M jS, Y', strtotime( $this->mClassInfo[ 'end_date' ] ) );
	}
	
	private function sortClasses()
	{
		
		$ct 	= &$this->mClassTitleClasses;
		$size 	= sizeof( $ct );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$index  = $this->getIndex( $ct[ $i ][ 'weekday' ] );			
			$this->mWeek[ $index ][ sizeof( $this->mWeek[ $index ] ) ] = $ct[ $i ];
			
			if( sizeof( $ct[ $i ] ) > 0 )
				$this->mSimilarClasses++;
		}
	}
	
	private function getIndex( $wday )
	{
		if( empty( $wday ) )
			return -1;
			
		$weekday = array( "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" );
		
		for( $i = 0; $i < 7; $i++ )
			if( $wday == $weekday[ $i ] ) 
				return $i;
		
		return -1;
	}
	
	private function setClassTimes()
	{
		$ct 	= &$this->mClassTitleClasses;
		$size 	= sizeof( $ct );

		for( $i = 0; $i < $size; $i++ )
		{
			list( $hour, $minute, $second ) = explode(':', $ct[ $i ][ 'start_time' ] );
			
			if( intval( $minute ) == 0 )
				$ct[ $i ][ 'start_time' ] = date( 'ga', strtotime( $ct[ $i ][ 'start_time' ] ) );
			else
				$ct[ $i ][ 'start_time' ] = date( 'g:ia', strtotime( $ct[ $i ][ 'start_time' ] ) );
			
			list( $hour, $minute, $second ) = explode(':', $ct[ $i ][ 'end_time' ] );
			
			if( intval( $minute ) == 0 )
				$ct[ $i ][ 'end_time' ] = date( 'ga', strtotime( $ct[ $i ][ 'end_time' ] ) );
			else
				$ct[ $i ][ 'end_time' ] = date( 'g:ia', strtotime( $ct[ $i ][ 'end_time' ] ) );
			
			$ct[ $i ][ 'link_to_class' ] = Link::Build( 'program-'.$ct[ $i ][ 'tgp_program_id' ].'/category-'.$ct[ $i ][ 'category_id' ].'/class-group-'.$this->mClassGroupID.'/class-info/'.$ct[ $i ][ 'class_id' ] );
		}
	}
	
	private function classSave()
	{
		if( !isset( $_POST[ 'tgp_class_save' ] ) )
			return;
			
		$classID 			= sanitize::sani( $_POST[ 'tgp_class_id' ], 'INTIGER' );
		$classTitleID 		= sanitize::sani( $_POST[ 'tgp_class_title' ], 'INTIGER' );
		$classWeekday 		= sanitize::sani( $_POST[ 'tgp_class_weekday' ], 'STRING' );
		
		$classStartTime 	= sanitize::time( $_POST[ 'tgp_class_start_time' ] );
		$classEndTime		= sanitize::time( $_POST[ 'tgp_class_end_time'  ] );
		$classStartDate 	= sanitize::date( $_POST[ 'tgp_class_start_date' ] );
		$classEndDate 		= sanitize::date( $_POST[ 'tgp_class_end_date' ] );
		$classPrice 		= sanitize::sani( $_POST[ 'tgp_class_price' ], 'INTIGER' );		
		
		if( !sanitize::matchWeekdayWithDate( $classWeekday, $classStartDate ) || !sanitize::matchWeekdayWithDate( $classWeekday, $classEndDate ) )
		{
			$weekday = '';
			echo "<p>Weekday and Starting Date or End Date do not match</p>";
			return;
		}
		
		
		$procedure = 'tgp_update_class'; //the procedure that needs to be called
		
		$params = array( ':classID' => $classID, ':classTitleID' => $classTitleID, ':classWeekday' => $classWeekday, 
						':classStartTime' => $classStartTime, ':classEndTime' => $classEndTime, ':classStartDate' => $classStartDate, 
						':classEndDate' => $classEndDate, ':classPrice' => $classPrice ); //the parameters for the procedure
			
		if( !sanitize::checkForEmptyVariables( $params ) )	
			administrator::prepareAndExecute( $procedure, $params, 'Add' );
		else
			echo 'Could not update class<br/>';
	}
	
	private function redirect()
	{
		header( 'Location:'.Link::Build( 'index.php?action=weekly' ) );
		exit;
	}
	
}
?>