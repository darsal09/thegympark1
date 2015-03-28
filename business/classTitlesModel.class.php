<?php
class classTitlesModel
{

	private function __construct()
	{
	
	}
	
	public static function get()
	{
		
		$sql = "SELECT ct.*, tcc.hexColor
				FROM class_titles ct
				LEFT JOIN tgp_classes_categories tcc ON tcc.cc_id = ct.category_id
				GROUP BY ct.id
				ORDER BY title";
						
		return databaseHandler::getAll( $sql );
	}
	
	public static function getCurrentSeason()
	{
		$season = seasonModel::getCurrent();		
		
		if( empty( $season ) )
			$season = seasonModel::getNext();
			
		return self::getSeason( array( ':sID' => $season[ 'id' ] ) );
	}
	
	public static function getSeason( $mP )
	{	
		$sql = "SELECT ct.*, tcc.hexColor
				FROM class_titles ct
				INNER JOIN tgp_classes tc ON tc.title_id = ct.id AND tc.season_id = :sID
				LEFT JOIN tgp_classes_categories tcc ON tcc.cc_id = ct.category_id
				GROUP BY ct.id
				ORDER BY title";
						
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public function __destruct()
	{
	
	}
}
?>