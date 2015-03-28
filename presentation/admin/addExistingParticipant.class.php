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
		$this->mClass = classModel::get( array( ':cID' => $this->mClassID ) );
		print_r( $this->mClass );
		if( isset( $_GET[ 'type' ] ) )
			$this->mParticipants = studentsModel::getStudentsStartingWithLetter( array( ':cID' => $this->mClassID, ':letter' => $this->mLetter ) );
		else
			$this->mParticipants = studentsModel::getStudentsNotInClass( $this->mClassID  );
			
		$this->setInfo();
		$this->setFilters();
	
		$this->mLinkToAll = Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID.'/addExistingParticipant' );
		$this->mLinkBackToClass = Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID );
	}
	
	private function setInfo()
	{
		$P = &$this->mParticipants;
		
		$size = sizeof( $P );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$P[ $i ][ 'name' ] = $P[ $i ][ 'first' ].' '.$P[ $i ][ 'last' ];
			$P[ $i ][ 'link' ] = Link::Build( 'admin/students/'.$P[ $i ][ 'id' ] );
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
				$this->mFilters[ $index ] = array( 'letter' => $letter, 'link' => Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID.'/addExistingParticipant/type/'.$letter ));
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
			
		if( !is_array( $_POST[ 'tgp_existing_participants' ] )  )
			return;
				
		$sDate = sanitize::sani( $_POST[ 'start_date' ], 'INTIGER' );
		$eDate = sanitize::sani( $_POST[ 'end_date' ], 'INTIGER' );
		$mP = array( ':cID' => $this->mClassID, ':sDate' => $sDate, ':eDate' => $eDate );
		
		foreach( $_POST[ 'tgp_existing_participants' ] AS $ID )
		{
			$ID = sanitize::sani( $ID, 'INTIGER' );
			
			if( !empty( $ID ) && $ID > 0 )
				student::addToClass( array_merge( array( ':sID' => $ID ), $mP ) );
		}
		
		header( 'Location:'.Link::Build( 'admin/programs/'.$this->mProgramID.'/categories/'.$this->mCategoryID.'/class-groups/'.$this->mClassGroupID.'/classes/'.$this->mClassID ) );
	}
	
	public function __destruct()
	{
	
	}
}
?>