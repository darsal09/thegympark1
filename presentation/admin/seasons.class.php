<?php
class seasons
{
	public $mSeasons;
	
	public function __construct()
	{
	
	}
	
	public function init()
	{
		$this->mSeasons = seasonsModel::get();
		$this->setLinks();
	}
	
	public function setLinks()
	{
		$S = &$this->mSeasons;
		$size = sizeof( $S );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$S[ $i ][ 'link' ] = Link::Build( 'admin/seasons/'.$S[ $i ][ 'id' ] );
			$S[ $i ][ 'link_edit' ] = Link::Build( 'admin/seasons/'.$S[ $i ][ 'id' ].'/edit' );
			$S[ $i ][ 'link_remove' ] = Link::Build( 'admin/seasons/'.$S[ $i ][ 'id' ].'/remove' );
		}
		
		$this->mLinkToAddSeason = Link::Build( 'admin/seasons/add' );
	}
}
?>