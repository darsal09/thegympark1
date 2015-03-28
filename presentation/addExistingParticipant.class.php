<?php
class addExistingParticipant
{
	public $mLinks = array();
	public $mFilters = array();
	public $mLetter = '';
	public $mParticipants = array();
	
	public $mCategoryID, $mProgramID, $mClassID, $mClassGroupID;
	public $mLinkToAll = '';
	public $mLinkBackToClass = '';
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = $_GET[ 'tgp_program_id' ];
		
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = $_GET[ 'tgp_category_id' ];
			
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
		
		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->mClassGroupID = sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );

		if( isset( $_GET[  'type' ] ) )
			$this->mLetter = sanitize::sani( $_GET[ 'type' ], 'STRING' );
			
		if( isset( $_POST[ 'tgp_class_add_existing_participants' ] ) )
			$this->addExistingParticipants();
	}
	
	public function init()
	{
		if( isset( $_GET[ 'type' ] ) )
			$this->mParticipants = studentsModel::getStudentsStartingWithLetter( array( ':cID' => $this->mClassID, ':letter' => $this->mLetter ) );
		else
			$this->mParticipants = studentsModel::getStudentsNotInClass( $this->mClassID  );
			
		$this->setInfo();
		$this->setFilters();
	
		$this->mLinkToAll = Link::Build( 'index.php?tgp_program_id='.$this->mProgramID.'&tgp_category_id='.$this->mCategoryID.'&tgp_class_group_id='.$this->mClassGroupID.'&tgp_class_id='.$this->mClassID.'&action=addExistingParticipant' );
		$this->mLinkBackToClass = Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/class-info/'.$this->mClassID );
	}
	
	private function setInfo()
	{
		$P = &$this->mParticipants;
		
		$size = sizeof( $P );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$P[ $i ][ 'name' ] = $P[ $i ][ 'first' ].' '.$P[ $i ][ 'last' ];
			$P[ $i ][ 'link' ] = Link::Build( 'index.php?tgp_student_id='.$P[ $i ][ 'id' ].'&action=viewStudent' );
		}
	}
	
	private function setFilters()
	{
		$P = studentsModel::getStudentsNotInClass( $this->mClassID  );
		$size = sizeof( $P );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$index = sizeof( $this->mFilters );
			$letter = substr( $P[ $i ][ 'first' ], 0, 1 );
				

			if( !$this->inFilter( $letter ) )
				$this->mFilters[ $index ] = array( 'letter' => $letter, 'link' => Link::Build( 'index.php?tgp_program_id='.$this->mProgramID.'&tgp_category_id='.$this->mCategoryID.'&tgp_class_group_id='.$this->mClassGroupID.'&tgp_class_id='.$this->mClassID.'&type='.$letter.'&action=addExistingParticipant' ));
		}
	}
	
	private function inFilter( $letter )
	{
		$size = sizeof( $this->mFilters );
		
		for( $i = 0; $i < $size; $i++ )
			if( in_array( $letter, $this->mFilters[ $i ] ) )
				return true;

		return false;
	}
	
	
	private function addExistingParticipants()
	{
		if( !isset( $_POST[ 'tgp_class_add_existing_participants' ] ) )
			return;
			
		if( !is_array(  $_POST[ 'tgp_existing_participants' ] )  )
			return;
				
		foreach( $_POST[ 'tgp_existing_participants' ] AS $ID )
		{
			$ID = sanitize::sani( $ID, 'INTIGER' );
			
			if( !empty( $ID ) && $ID > 0 )
			{
				student::addToClass( $ID, $this->mClassID );
			}
		}
		
		header( 'Location:'.Link::Build( 'program-'.$this->mProgramID.'/category-'.$this->mCategoryID.'/class-group-'.$this->mClassGroupID.'/class-info/'.$this->mClassID ) );
	}
	
	public function __destruct()
	{
	
	}
}
?>