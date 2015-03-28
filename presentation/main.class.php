<?php
class main
{
	public $mMatches = false;
	public $mLeagues = true;
	public $mLeagueInfo;
	
	public function __construct()
	{
		if( isset( $_GET[ 'lms_league_id' ] ) )
			$this->mMatches = true;		
	}
	public function init()
	{
		if( isset( $_GET[ 'lms_league_id' ] ) )
		{
			$sql = 'CALL lms_get_league_info( :leagueID )';
			$params = array( ':leagueID' => intval( $_GET[ 'lms_league_id' ] ) );
			
			$this->mLeagueInfo = databaseHandler::getRow( $sql, $params );
		}
	}
}
?>