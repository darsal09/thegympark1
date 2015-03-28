<?php
class openPlays
{
	public $mOpenPlays;
	public $mLinkToAddOpenPlay;
	public $mLinks = array();
	
	public function __construct()
	{
			
	}
	
	public function init()
	{
		$season = seasonModel::getCurrent();
		
		$this->mOpenPlays = openPlaysModel::getAll( );
		
		$this->setClasses();
		$this->mLinkToAddOpenPlay = Link::Build( 'admin/open-plays/add' );
		$this->mLinkToAddPackage = Link::Build( 'admin/open-plays/packages/add' );
		$this->setlinks();		
	}
	
	private function setLinks()
	{
		$this->mLinks[] = array( 'link' => Link::Build( 'admin' ), 'title' => '&laquo;Admin' );
	}
	
	private function setClasses()
	{
		$O = &$this->mOpenPlays;
		$size = sizeof( $O );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$O[ $i ][ 'classes' ] = openPlayModel::getClasses( array( ':opID' => $O[ $i ][ 'id' ] ) );	
			$O[ $i ][  'title' ] = $O[ $i ][ 'title' ].' '.$O[ $i ][ 'season' ].' '.$O[ $i ][ 'year' ];
			$O[ $i ][ 'link' ] = Link::Build( 'admin/open-plays/'.$O[ $i ][ 'id' ] );
			$O[ $i ][ 'link_attendance' ] = Link::Build( 'employee/open-plays/current/'.$O[ $i ][ 'id' ] );
			
			$c = &$O[ $i ][ 'classes' ];
			$j_size = sizeof( $c );
			
			for( $j = 0; $j < $j_size; $j++ )
				$c[ $j ][ 'link' ] = Link::Build( 'open-plays-'.$O[ $i ][ 'id' ].'/class-'.$c[ $j ][ 'class_id' ].'/attendance' );
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>