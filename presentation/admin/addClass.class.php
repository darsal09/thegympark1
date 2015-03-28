<?php
class addClass
{
	public $mErrors 	= array( ':tID' => false, ':year' => false, ':sTime' => false, ':eTime' => false, ':wDay' => false, ':sDate' => false, ':eDate' => false, ':sID' => false, ':cID' => false, ':pID' => false, ':Price' => false , ':pFeatured' => false, ':cFeatured' => false, ':Type' => false, ':Season' => false );
	public $mP 			= array( ':tID' => '', ':year' => '', ':sTime' => '', ':eTime' => '', ':wDay' => '', ':sDate' => '', ':eDate' => '', ':sID' => '', ':cID' => '', ':pID' => '', ':Price' => '' , ':pFeatured' => 'N', ':cFeatured' => 'N', ':Type' => '' );
	private $_mRequired = array( ':tID' => true, ':year' => true, ':sTime' => true, ':eTime' => true, ':wDay' => true, ':sDate' => true, ':eDate' => true, ':sID' => true, ':cID' => true, ':pID' => true, ':Price' => true , ':pFeatured' => true, ':cFeatured' => true, ':Type' => true );
	
	public $mProgramTitle;
	public $mCategoryTitle;
	public $mClassTitles;
	public $mCurrentSeasonClasses;
	public $mNextSeasonClasses;
	
	public $mLinkToCategory;
	
	public $mProgramID 		= 0;
	public $mCategoryID 	= 0;
	public $mClassGroupID 	= 0;
	
	public $mWeekdays;
	public $mFeatures;

	private $mClassID;
	
	public function __construct()
	{		
		if( !$this->setParameters() )
		{
			header( 'Location:'.Link::Build( '' ) );
			exit;
		}
			
		if( isset( $_POST[ 'tgp_class_add' ] ) )
			$this->saveClass();			
			
		$this->setLinks();
		
		
		$this->mWeekdays = array( 'Monday' => 'Monday', 'Tuesday' => 'Tuesday', 'Wednesday' => 'Wednesday', 'Thursday' => 'Thursday', 'Friday' => 'Friday', 'Saturday' => 'Saturday', 'Sunday' => 'Sunday' );
		$this->mSeasons = array( 'Fall' => 'Fall', 'Fall-Winter' => 'Fall-Winter', 'Winter' => 'Winter', 'Winter-Spring' => 'Winter-Spring', 'Spring' => 'Spring', 'Summer' => 'Summer' );
	
		$this->mErrorMessage = "Please fill out the yellow fields.";
				
	}
	
	public function init()
	{	
		$this->mProgramTitle 	= administrator::getProgramTitle( $this->mProgramID );
		$this->mCategoryTitle 	= administrator::getCategoryTitle( $this->mCategoryID );
		$this->mCSeason 		= seasonModel::getCurrent();
		$this->mNSeasons 		= seasonsModel::getNextSeasons();
		
		if( is_array( $this->mCSeason ) )
			$this->mCSeason[ 'title' ] = $this->mCSeason[ 'season' ].' '.$this->mCSeason[ 'year' ];
			
		$this->setTitle();
		
		$this->mClassTitle = catalog::getClassGroup( $this->mClassGroupID );	
	}
	
	private function setParameters()
	{
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' );

		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->mClassGroupID = sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );

		if( $this->mClassGroupID < 1 || $this->mProgramID < 1 || $this->mCategoryID < 1 )
			return false;
			
		return true;
	}
	
	private function setLinks()
	{
		$this->mLinkToAddClassTitle = Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/addClassTitle' );
		$this->mLinkToCategory = Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID );
		$this->mLinkToProgram = Link::Build( 'admin/programs/'.$this->mProgramID );
		$this->mLinkToClassGroup = Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID );	
	}
	
	private function setTitle()
	{
		$S = &$this->mNSeasons;
		$size = sizeof( $S );
		
		for( $i = 0; $i < $size; $i++ )
			$S[ $i ][ 'title' ] = $S[ $i ][ 'season'  ].' '.$S[ $i ][ 'year' ];
			
	}
	
	private function saveClass()
	{
		if( !isset( $_POST[ 'tgp_class_add' ] ) )
			return;
					
		$ct = catalog::getClassGroup( $this->mClassGroupID );	
				
		$this->mP[ ':tID' ] 		= $this->mClassGroupID;
		$this->mP[ ':Price' ] 		= $ct[ 'price' ];
				
		$this->mP[ ':sTime' ] 		= date( 'H:i:s', strtotime( sanitize::sani( $_POST[ 'tgp_class_starttime' ], 'STRING' ) ) );			
		$this->mP[ ':eTime' ] 		= date( 'H:i:s', strtotime( '+'.$ct[ 'total_time' ].' minutes', strtotime( $this->mP[ ':sTime' ] ) ) ); 
			
		$this->mP[ ':wDay' ] 		= sanitize::sani( $_POST[ 'tgp_class_wDay' ], 'STRING' );
			
		$this->mP[ ':pID' ]			= $this->mProgramID;
		$this->mP[ ':cID' ] 		= $this->mCategoryID;
								
		$this->mP[ ':Type' ] 		= $ct[ 'type' ];
		
		if( $this->mP[ ':Type' ] == 'Flexible' )
			$this->_mRequired[ ':Price' ] = false;
		
		if( isset( $_POST[ 'tgp_class_programFeatured' ] ) )		
			$this->mP[ ':pFeatured' ] 	= sanitize::sani( $_POST[ 'tgp_class_programFeatured' ], 'STRING' );
			
		if( isset( $_POST[ 'tgp_class_categoryFeatured' ] ) )
			$this->mP[ ':cFeatured' ]	= sanitize::sani( $_POST[ 'tgp_class_categoryFeatured' ], 'STRING' );
		
		//if one of the season provided is chosen:
		if( isset( $_POST[ 'tgp_class_season' ] ) )
		{
			$sIDs =  $_POST[ 'tgp_class_season' ];
			
			foreach( $sIDs AS $sID )
			{
				$s = seasonModel::get( $sID );
							
				$this->mP[ ':sDate' ] 		= classModel::setDate( $this->mP[ ':wDay' ], $s[ 'start_date' ] );
				$this->mP[ ':eDate' ] 		= classModel::setEndDate( $this->mP[ ':wDay' ], $s[ 'end_date' ] );

				$this->mP[ ':year' ] 		= date( 'Y', strtotime( $this->mP[ ':sDate' ] ) );
								
				$this->mP[ ':sID' ] = $sID;				
			
				if( $this->hasErrors() )
				{
					echo '<p class=attention>Errors!</p>';
					print_r( $this->mErrors );
					return;
				}		
			
				catalog::addClass( $this->mP );
			}
		}
		else //if a new season is added through this page
		{
			$season = array( ':season' => '', ':year' => '', ':start_date' => '', ':end_date' => '' );
			
			$season[ ':start_date' ] = sanitize::sani( $_POST[ 'tgp_class_startDate' ], 'STRING' );
			$season[ ':end_date' ] = sanitize::sani( $_POST[ 'tgp_class_endDate' ], 'STRING' );
			$season[ ':season' ] = sanitize::sani( $_POST[ 'tgp_class_seasons' ], 'STRING' );
			$season[ ':year' ] = date( 'Y', strtotime( $season[ ':start_date' ] ) );
			$errors = '';
			
			foreach( $season AS $field => $value )
				if( empty( $value ) )
					$errors .= '<p class=error>Field '.$field.' has errors</p>';
		
			if( !empty( $errors ) )
			{
				echo '<p class=attention><b>There are errors!</b><br/> See below for the errors</p>';
				echo $errors;
				echo '<p class=attention>When adding a new season. Please make sure you fill out both fields.</p><p>&nbsp;</p>';
				
				return;
			}	
			
			
			$sID = seasonModel::add( $season );
			
			$s = seasonModel::get( $sID );
							
			$this->mP[ ':sDate' ] 		= classModel::setDate( $this->mP[ ':wDay' ], $s[ 'start_date' ] );
			$this->mP[ ':eDate' ] 		= classModel::setEndDate( $this->mP[ ':wDay' ], $s[ 'end_date' ] );

			$this->mP[ ':year' ] 		= date( 'Y', strtotime( $this->mP[ ':sDate' ] ) );
								
			$this->mP[ ':sID' ] = $sID;				
			
			$this->mErrors = sanitize::hasErrors( $this->mP, $this->_mRequired, $this->mErrors );
			
			if( in_array( true, $this->mErrors ) )
			{
				echo '<p class=attention>There are errors!</p>';
				return;
			}			
			
			catalog::addClass( $this->mP );
		}
		
		helper::redirect( 'admin/programs/'.$this->mP[ ':pID' ].'/categories/'.$this->mP[ ':cID' ].'/class-groups/'.$this->mP[ ':tID' ] );
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