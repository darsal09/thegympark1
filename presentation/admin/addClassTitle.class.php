<?php

class addClassTitle
{
	public $mErrors = array( ':type' => false, ':Title' => false, ':ageGroup' => false, ':pID' => false, ':cID' => false, ':totalTime' => false, ':price' => false, ':9weekPrice' => false );
	public $mP = array( ':type' => '', ':Title' => '', ':ageGroup' => '', ':pID' => '', ':cID' => '', ':totalTime' => '', ':price' => '', ':9weekPrice' => '' );
	
	public $mLinkToProgram;
	public $mLinkToCategory;
	public $mErrorMessage = '';
	
	public $mProgramID;
	public $mCategoryID;
	public $mLinks;
	
	private $_mRequired = array( ':type' => true, ':Title' => true, ':ageGroup' => true, ':pID' => true, ':cID' => true, ':totalTime' => true, ':price' => true, ':9weekPrice' => true );
	
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' );
				
		if( !user::isAdmin() )
		{
			header( 'Location:'.Link::Build( '' ) );
			exit;
		}
			
		if( isset( $_POST[ 'tgp_add_class_title' ] ) )
			$this->saveClassTitle();
	}
	
	public function init()
	{
		$this->mProgramTitle = administrator::getProgramTitle( $this->mProgramID );
		$this->mCategoryTitle = administrator::getCategoryTitle( $this->mCategoryID );
				
		$this->setLinks();
	}
	
	private function setLinks()
	{
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'types' => 'program', 'link' => Link::Build( 'program-info/'.$this->mProgramID ), 'title' => programModel::getTitle( array( ':pID' => $this->mProgramID ) ) );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'types' => 'category', 'link' => Link::Build( 'program-'.$this->mProgramID.'/category-info/'.$this->mCategoryID ), 'title' => categoryModel::getTitle( array( ':cID' => $this->mCategoryID ) ) );
	}
	
	private function saveClassTitle()
	{
		if( !isset( $_POST[ 'tgp_add_class_title' ] ) )
			return;

		$this->mP[ ':type' ] 			= sanitize::sani( $_POST[ 'tgp_classTitle_type' ], 'STRING' );	
		$this->mP[ ':Title' ] 			= sanitize::sani( $_POST[ 'tgp_classTitle_title' ], 'STRING' );
		$this->mP[ ':ageGroup' ] 		= sanitize::sani( $_POST[ 'tgp_classTitle_age' ], 'STRING' );
		$this->mP[ ':totalTime']  		= sanitize::sani( $_POST[ 'tgp_classTitle_totalTime' ], 'INTIGER' );
		$this->mP[ ':pID' ] 			= $this->mProgramID;
		$this->mP[ ':cID' ] 			= $this->mCategoryID;
			
			
		if( $this->mP[ ':type' ] == 'Fixed' )
		{
			$this->mP[ ':price' ] 			= sanitize::sani( $_POST[ 'tgp_classTitle_price' ], 'DOUBLE' );
			$this->mP[ ':9weekPrice' ] 		= sanitize::sani( $_POST[ 'tgp_classTitle_9week_price' ], 'DOUBLE' );	
		}
		
		 $this->hasErrors();
		
		if( $this->mP[ ':type' ] == 'Flexible' )
			$this->hasFlexibleErrors();
		
		 if( in_array( true, $this->mErrors  ) )
		{
			print_r( $this->mErrors );
			return;
		}
			
		$ctID = catalog::addClassTitle( $this->mP );
		
		/* 
			Here you will need add something that explains why you couldn't add the class or that the class was not added it
		*/
	
		if( $ctID < 1 )
		{
			$this->mErrorMessage = '<b>Erros!</b><br/>The class title already exist';
			return;
		}
		
		helper::redirect( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$ctID );
	}
	
	private function hasErrors()
	{			
		foreach( $this->mP AS $field => $value )
			if( $this->_mRequired[ $field ] && empty( $value ) )
					$this->mErrors[ $field ] = true;

		return in_array( true, $this->mErrors );
	}
	
	public function hasFlexibleErrors()
	{
			if( $this->mErrors[ ':price' ] || $this->mErrors[ ':9WeekPrice' ] )
			{
				$this->mErrors[ ':price' ] = false;
				$this->mErrors[ ':9weekPrice' ] = false;
			}
		
		return in_array( true, $this->mErrors );		
	}
}
?>