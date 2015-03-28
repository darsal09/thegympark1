<?php
class classGroupModel
{
	private function __construct()
	{
	
	}
	
	public static function getClasses( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_classes
				WHERE title_id = :cgID';
		
		return databaseHandler::getAll( $sql, array( ':cgID' => $classGroupID ) );
	}
	
	public static function getCurrentClasses( $mP )
	{
		$season = seasonModel::getCurrent();
		
		$mP[ ':sID' ] = $season[ 'id' ];
		
		$sql = 'SELECT *
				FROM tgp_classes
				WHERE title_id = :cgID AND season_id = :sID';
		
		return databaseHandler::getAll( $sql, $mP );
	}
}
?>