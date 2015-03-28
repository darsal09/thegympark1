<?php
class classInfo
{
	public $mP = array( ':classID' => '', ':classTitleID' => '', ':classWeekday' => '', ':classStartTime' => '', ':classEndTime' => '', ':classStartDate' => '', ':classEndDate' => '', ':classPrice' => '' ); 
	
	public $mClassInfo;
	public $mClassTitles;
	
	public $mLinks = array();
	
	public $mLinkToClass;
	public $mLinkToRegister;
	public $mLinkToAddPackages;
	public $mLinkToClassGroup;
	
	public $mWeekdays;
	
	public $mIsAdmin = false;
	public $mIsEdit = false;
	
	public $mClassID;
	private $mProgramID;
	private $mCategoryID;
	private $mClassGroupID;
	
	public function __construct()
	{	
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' );

		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->mClassGroupID = sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );
		
			
		if( isset( $_POST[ 'tgp_class_edit' ] )  )
			$this->mIsEdit = true;
				
		if( isset( $_POST[ 'tgp_class_delete' ] ) )
		{
			$this->deleteClass();
		}
		
		if( isset( $_POST[ 'tgp_class_save' ] ) )
			$this->classSave();
					
		$this->setWeek();
	}
	
	public function init()
	{		
		$this->mWeekdays = array( 'Select a day', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' );
		
		$this->mClassInfo = catalog::getClass( $this->mClassID );
		
		$this->ifFlexible(); //redirect
			
		
		$this->mClassTitles = catalog::getClassTitles( $this->mProgramID, $this->mCategoryID );
		
		$season = seasonModel::getCurrent();

		$this->mHolidays = classModel::getHolidays( array( ':sdate' => $this->mClassInfo[ 'start_date' ], ':edate' => $this->mClassInfo[ 'end_date' ], ':weekday' => $this->mClassInfo[ 'weekday' ]	) );
		
		if( !$season )
			$season = seasonModel::getNext();
			
		$this->mClassTitleClasses = catalog::getClassTitleClasses( $this->mClassInfo[ 'title_id' ], $this->mClassInfo[ 'class_id' ], $season[ 'id' ] );
				
		if( $this->mClassInfo[ 'type' ] == "Flexible" )
			$this->mLinkToRegister = Link::Build( 'admin/programs/'.$this->mClassInfo[ 'tgp_program_id' ].'/categories/'.$this->mClassInfo[ 'category_id' ].'/class-groups/'.$this->mClassInfo[ 'title_id' ] );
		
		if( !$this->mIsEdit )
		{
			$this->setLink();
			$this->setTimeFormat();
		}
		else
		{
			$this->mClassInfo[ 'start_date' ] = date( 'm-d-Y', strtotime( $this->mClassInfo[ 'start_date' ] ) );
			$this->mClassInfo[ 'end_date' ] = date( 'm-d-Y', strtotime( $this->mClassInfo[ 'end_date' ] ) );
		}
		
		$this->setClassTimes();
		$this->sortClasses();
		
		$this->mIsAdmin = user::isAdmin();		
		
		$this->setLinks();

	}
	
	private function setLinks()
	{
	
		$this->mLinkToRegister 		= Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID.'/classRegister' );		
		$this->mLinkToAddPackages 	= Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes'.$this->mClassID.'/addClassPackges' );
		
		$this->mLinks[ sizeof( $this->mLinks ) ]	= array( 'link' => Link::Build( 'admin'), 'title' => 'Admin' );
		$this->mLinks[ sizeof( $this->mLinks ) ]	= array( 'link' => Link::Build( 'admin/programs'), 'title' => 'Programs' );
		$this->mLinks[ sizeof( $this->mLinks ) ]	= array( 'link' => Link::Build( 'admin/categories'), 'title' => 'Categories' );
		$this->mLinks[ sizeof( $this->mLinks ) ]	= array( 'link' => Link::Build( 'admin/programs/'.$this->mProgramID ), 'title' => 'Program' );
		$this->mLinks[ sizeof( $this->mLinks ) ]	= array( 'link' => Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID ), 'title' => 'Category' );
		$this->mLinks[ sizeof( $this->mLinks ) ] 	= array( 'link' => Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID ), 'title' => 'Class Title' );
		
		$this->mLinkToEmailClass 	= Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID.'/email' );
		$this->mLinkToCancel 		= Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID );
		
		$this->mLinkToEdit 			= Link::Build( 'api/admin/classes/class/edit.php' );
		$this->mLinkToDelete		= Link::Build( 'api/admin/classes/class/delete.php' );
		$this->mLinkToSendEmail		= Link::Build( 'api/employee/classes/class/sendEmail.php' );
	}
	
	private function setWeek()
	{
		$this->mWeek = array();
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek  ) ] = array();	
	}
	
	private function setLink()
	{
		$this->mLinkToClass = Link::Build( 'admin/programs/'.$this->mClassInfo[ 'tgp_program_id' ].'/categories/'.$this->mClassInfo[ 'category_id' ].'/classes/'.$this->mClassInfo[ 'class_id' ] );
	}
	
	private function setTimeFormat()
	{
		list( $hour, $minute, $second ) = explode(':', $this->mClassInfo[ 'start_time' ] );
		
		if( intval( $minute ) == 0 )
			$this->mClassInfo[ 'start_time' ] = date( 'g a', strtotime( $this->mClassInfo[ 'start_time' ] ) );
		else
			$this->mClassInfo[ 'start_time' ] = date( 'g:i a', strtotime( $this->mClassInfo[ 'start_time' ] ) );
				
		list( $hour, $minute, $second ) = explode( ':', $this->mClassInfo[ 'end_time' ] );
			
		if( intval( $minute ) == 0 )
			$this->mClassInfo[ 'end_time' ] = date( 'g a', strtotime( $this->mClassInfo[ 'end_time' ] ) );			
		else
			$this->mClassInfo[ 'end_time' ] = date( 'g:i a', strtotime( $this->mClassInfo[ 'end_time' ] ) );
				
		$this->mClassInfo[ 'start_date' ] = date( 'F jS, Y', strtotime( $this->mClassInfo[ 'start_date' ] ) );
		$this->mClassInfo[ 'end_date' ] = date( 'F jS, Y', strtotime( $this->mClassInfo[ 'end_date' ] ) );
	}
	
	private function sortClasses()
	{
		$ct 	= &$this->mClassTitleClasses;
		$size 	= sizeof( $ct );

		for( $i = 0; $i < $size; $i++ )
		{
			$index  = $this->getIndex( $ct[ $i ][ 'weekday' ] );
			
			$this->mWeek[ $index ][ sizeof( $this->mWeek[ $index ] ) ] = $ct[ $i ];
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
			
			$ct[ $i ][ 'link_to_class' ] = Link::Build( 'program-'.$ct[ $i ][ 'tgp_program_id' ].'/category-'.$ct[ $i ][ 'category_id' ].'/class-group-'.$ct[ $i ][ 'title_id' ].'/class-info/'.$ct[ $i ][ 'class_id' ] );
		}
	}
	
	private function classSave()
	{
		if( !isset( $_POST[ 'tgp_class_save' ] ) )
			return;
		$ct = catalog::getClassGroup( $this->mClassGroupID );	
		
		$this->mP[ ':classID' ] 			= sanitize::sani( $_POST[ 'tgp_class_id' ], 'INTIGER' );
		$this->mP[ ':classTitleID' ] 		= sanitize::sani( $_POST[ 'tgp_class_title' ], 'INTIGER' );
		$this->mP[ ':classWeekday' ] 		= sanitize::sani( $_POST[ 'tgp_class_weekday' ], 'STRING' );
		
		$this->mP[ ':classStartTime' ] 		= sanitize::time( $_POST[ 'tgp_class_start_time' ] );
		$this->mP[ ':classEndTime' ]		= date( 'H:i:s', strtotime( '+'.$ct[ 'total_time' ].' minutes', strtotime( $this->mP[ ':classStartTime' ] ) ) );
		
		$this->mP[ ':classStartDate' ] 		= date( 'Y-m-d', strtotime( sanitize::date( $_POST[ 'tgp_class_start_date' ] ) ) );
		$this->mP[ ':classEndDate' ] 		= date( 'Y-m-d', strtotime( sanitize::date( $_POST[ 'tgp_class_end_date' ] ) ) );
		
		
		$this->mP[ ':classPrice' ] 			= sanitize::sani( $_POST[ 'tgp_class_price' ], 'INTIGER' );		

		if( !sanitize::matchWeekdayWithDate( $this->mP[ ':classWeekday' ], $this->mP[ ':classStartDate' ] ) || !sanitize::matchWeekdayWithDate( $this->mP[ ':classWeekday' ], $this->mP[ ':classEndDate' ] ) )
		{
			$weekday = '';
			echo "<p class=attention>Weekday and Starting Date or End Date do not match</p>";
			return;
		}
			
		if( !sanitize::checkForEmptyVariables( $this->mP ) )	
		{
			classModel::update( $this->mP );
			
			header( 'Location:'.Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID ) );
			exit;
		}
		else
			echo '<p class=error>Could not update class<br/></p>';
	}	
	
	private function deleteClass()
	{
		if( !isset( $_POST[ 'tgp_class_delete' ] ) )
			return;
			
		$cID = sanitize::sani( $_POST[ 'tgp_class_delete' ], 'INTIGER' );
		
		classModel::delete( array( ':cID' =>  $this->mClassID ) );
		
		header( 'Location:'.Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID ) );
		exit;
	}
	
	private function ifFlexible()
	{
		if( $this->mClassInfo[ 'type' ] == 'Flexible' )
		{
			header( 'Location:'.Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID ) );
			exit;
		}
	}
}
?>