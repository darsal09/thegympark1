<?php
class currentClasses
{
	public $mLinkToGetClassInfo;
	public $mLinkToClassStudents;
	
	public $mSeason;
	public $mClasses;
	
	public function __construct()
	{
	
	}
	
	public function init()
	{
		$this->mSeason 	= seasonsModel::current();
		$this->mClasses = seasonModel::getClasses( $this->mSeason[ 'id' ] );		
		
		$this->mLinkToGetClassInfo = Link::Build( 'api/employee/classes/class/index.php' );
		$this->mLinkToGetClassStudents = Link::Build( 'api/employee/classes/class/students.php' );
		
		$this->setLinks();
	}
	
	private function setLinks()
	{
		$C = &$this->mClasses;
		$size = sizeof( $C );
		
		for( $i = 0 ; $i < $size; $i++ )
		{
			$C[ $i ][ 'link' ] = Link::Build( 'employee/classes/current/'.$C[ $i ][ 'class_id' ] );
		}
	}
	
}
?>