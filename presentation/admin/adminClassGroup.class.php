<?php
class adminClassGroup
{	
	public $mP = array( ':ctID' => '', ':title' => '', ':ageGroup' => '', ':tTime' => '', ':price' => 0.0, ':9weekPrice' => 0.0 );
	public $mErrors = array( ':ctID' => false, ':title' => false, ':ageGroup' => false, ':tTime' => false, ':price' => false, ':9weekPrice' => false );
	
	public $mClassTitle;
	public $mWeek;
	public $mIsAdmin = false;
	public $mEdit = false;

	public $mLinks = array();
		
	private $mClassGroupID;
	private $mProgramID;
	private $mCategoryID;
	
	private $mClassesSchedule;
	private $_mRequired = array( ':ctID' => true, ':title' => true, ':ageGroup' => true, ':tTime' => true, ':price' => true, ':9weekPrice' => true );
	
	public function __construct()
	{
		$this->mClassesSchedule = array();
		
		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->mClassGroupID = sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );
	
		
	
		if( $this->mClassGroupID < 1 || !user::isAdmin() )
		{
			header( 'Location:'.Link::Build( '' ) );
			exit;
		}
				
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' ) );
				
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = intval( sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' ) );

		if( isset( $_POST[ 'tgp_class_group_edit_cancel' ] ) )
		{
			header( 'Location:'.Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group/'.$this->mClassGroupID ) );
			exit;
		}
			
		
		if( isset( $_POST[ 'tgp_class_group_register' ] ) ) //The program will go here if someone is trying to buy packages for a class group
			$this->classGroupRegister();

		if( isset( $_POST[ 'tgp_class_group_delete' ] ) )
			$this->deleteClassGroup();
			
		if( isset( $_POST[ 'tgp_class_group_edit_save' ] ) )
			$this->updateClassGroup();
		
		if( isset( $_POST[ 'tgp_class_group_edit' ] ) )
			$this->mEdit = true;

		if( isset( $_POST[ 'tgp_class_group_send_email' ] ) )
		{
			header( 'Location:'.Link::Build( 'index.php?tgp_program_id='.$this->mProgramID.'&tgp_category_id='.$this->mCategoryID.'&tgp_class_group_id='.$this->mClassGroupID.'&action=email' ) );
			exit;
		}
		
		$this->setWeek();
	}
	
	public function init()
	{						
		$season = seasonModel::getCurrent();
		
		if( !$season )
			$season = seasonModel::getNext();
		
		$this->mClassTitle 					= catalog::getClassGroup( $this->mClassGroupID );
		$this->mClassesSchedule 			= classTitleModel::getSeasonClasses( array( ':ctID' => $this->mClassGroupID, ':sID' => $season[ 'id' ] ) );	
		
		$this->setTimeFormat();

		$this->mClassPackagesIndividual 	= catalog::getClassPackages( $this->mClassGroupID, 'Individual' );
		$this->mClassPackagesFamily 		= catalog::getClassPackages( $this->mClassGroupID, 'Family' );

		$this->sortClasses();
			
		$this->mLinkToAddClass= Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/add-class' );
		
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin' ), 'title' => 'Admin' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin/programs' ), 'title' => 'Programs' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'program-info/'.$this->mProgramID ), 'title' => 'Program' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'program-'.$this->mProgramID.'/category-info/'.$this->mCategoryID ), 'title' => 'Category' );
	}

	private function setWeek()
	{
		$this->mWeek = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();
		$this->mWeek[ sizeof( $this->mWeek ) ] = array();				
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
	
	private function deleteClassGroup()
	{
		if( !isset( $_POST[ 'tgp_class_group_delete' ] ) )
			return;
			
		$result = administrator::deleteClassGroup( $this->mClassGroupID );
		
		if( $result == 1 )
		{
			header( 'Location:'.Link::Build( 'program-'.$this->mProgramID.'/category-info/'.$this->mCategoryID ) );
			exit;
		}
		else
			echo '<div class=error><h1>Cannot Delete Class Group:</h1><p>The Class Group you are trying to delete cannot be deleted because it has classes in it</p>
				<p> To delete this Class Group you have to first delete all its classes</p>
				<h1><a href="'.Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group/'.$this->mClassGroupID ).'">Ok</a></h1>				
				</div>';
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
	/*
		Save the changes made to the class group
	*/
	private function updateClassGroup()
	{	
		if( !isset( $_POST[ 'tgp_class_group_edit_save' ] ) )
			return;
		$this->mP[ ':ctID' ] = $this->mClassGroupID;
		$this->mP[ ':title' ]  = sanitize::sani( $_POST[ 'tgp_class_group_title' ], 'STRING' );
		$this->mP[ ':ageGroup' ] = sanitize::sani( $_POST[ 'tgp_class_group_ageGroup' ], 'STRING' );
		$this->mP[ ':tTime' ] = sanitize::sani( $_POST[ 'tgp_class_group_totalTime' ], 'STRING' );
		$this->mP[ ':price' ] = sanitize::sani( $_POST[ 'tgp_class_group_price' ], 'DOUBLE' );
		$this->mP[ ':9weekPrice' ] = sanitize::sani( $_POST[ 'tgp_class_group_9week_price' ], 'DOUBLE' );
		
		if( $this->hasErrors() )
		{
			print_r( $this->mErrors );
			print_r( $this->mP );
			return;
		}
		classTitleModel::update( $this->mP );
		
		header( 'Location:'.Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group/'.$this->mClassGroupID ) );
		exit;
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
			if( $this->_mRequired[ $field ] && empty( $value ) )
				$this->mErrors[ $field ] = true;
		
		if( in_array( true, $this->mErrors ) )
			return true;
		
		return false;
	}
}
?>