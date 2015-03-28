<?php
class programTable extends orm
{
	protected $mFields = array( 'title' => ':title',
								'description' => ':description' );
	protected $mIDParameter = array( 'id' => 'program_id');
	
	protected $mReq = array( 'title' => true );
	
	protected $mTableName = 'tgp_programs';
	
	public $mProgramID;
	public $mTitle;
	public $mDescription;

	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'programID' ] ) )
			$this->setID( $mP[ 'programID' ] );
 
		if( isset( $mP[ 'title' ] ) )
			$this->setTitle( $mP[ 'title' ] );
 
		if( isset( $mP[ 'description' ] ) )
			$this->setDescription( $mP[ 'description' ] );
 
	
		$this->setStatements();
		$this->checkErrors();
	}
  
	public function setTitle( $title )
	{
		$this->mTitle = $title;
	}
 
	public function setDescription( $description )
	{
		$this->mDescription = $description;
	}
 
	public function getProgramID( )
	{
		return $this->mProgramID;
	}
 
	public function getTitle( )
	{
		return $this->mTitle;
	}
 
	public function getDescription( )
	{
		return $this->mDescription;
	}
 

}