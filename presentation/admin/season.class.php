<?php
class season
{
	public $mSeason;
	public $mClasses;
	
	protected $mSeasonID;
	
	public function __construct()
	{
		if( !user::isAdmin() )
			helper::redirect( '' );
			
		if( !isset( $_GET[ 'tgp_season_id' ] ) )
			helper::redirect( 'admin/seasons' );
			
		$this->mSeasonID = sanitize::sani( $_GET[ 'tgp_season_id' ], 'INTIGER' );
	}
	
	public function init()
	{
		$this->mSeason = seasonModel::get( $this->mSeasonID );
		$this->mClasses = seasonModel::getClasses( $this->mSeasonID );
	}
}
?>