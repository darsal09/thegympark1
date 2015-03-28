<?php

class categoryModel
{
	private function __construct()
	{
	
	}
	
	public static function add( $params )
	{	
		$cID = self::exist( array( ':cTitle' => $params[ ':title' ] ) );
		
		if( $cID > 0 )
			return $cID;
			
		procedureHandler::Execute( 'tgp_add_category', $params );
		
		return self::exist( array( ':cTitle' => $params[ ':title' ] ) );
	}
	
	public static function exist( $params )
	{
		if( empty( $params[ ':cTitle' ] ) )
			return -1;
			
		$sql = "SELECT cc_id
				FROM tgp_classes_categories
				WHERE title = :cTitle";
		
		return databaseHandler::getOne( $sql, $params );
	}
	
	public static function get( $params )
	{		
		if( $params[ ':cID' ] < 1 )
			return -1;
			
		return procedureHandler::getRow( 'tgp_get_category', $params );
	}
	
	public static function getTitle( $mP )
	{
		$sql = 'SELECT title
				FROM tgp_classes_categories
				WHERE cc_id = :cID';
		
		return databaseHandler::getOne( $sql, $mP );
	}
	
	public static function getCategoryFeaturedClasses( $cID, $seasonID )
	{
		$sql = "SELECT tc.*, ct.title
				FROM tgp_classes tc
				LEFT JOIN class_titles ct ON ct.id = tc.title_id
				WHERE tc.category_id = :cID AND season_id = :sID
				ORDER BY tc.weekday, ct.title, tc.start_time, tc.end_time";
		
		$params = array( ':cID' => $cID, ':sID' => $seasonID );
		
		return databaseHandler::getAll( $sql, $params );
	}
	
	public static function getColor( $cID )
	{
		$sql = "SELECT hexColor
				FROM tgp_classes_categories
				WHERE cc_id = :cID";
		
		$params = array( ':cID' => $cID );
		
		return databaseHandler::getOne( $sql, $params );
	}
	
	public static function update( $params )
	{		
		if( $params[ ':cID' ] < 1 || $params[ ':pID' ] < 1 )
			return false;
		//print_r( $params );
		$r = procedureHandler::Execute( "tgp_update_category", $params );;
		
		if( $r > 0 )
			return true;
			
		return false;
	}
	
	public static function delete( $params )
	{
		if( $params[ ':cID' ] < 1 || self::hasClassTitles( $params ) || self::hasClasses( $params ) )
			return false;

		$sql = "DELETE FROM tgp_classes_categories
				WHERE cc_id = :cID";
		
		return databaseHandler::Execute( $sql, $params );
	}
	
	public static function hasClassTitles( $params )
	{
		$sql = "SELECT COUNT( * )
				FROM class_titles
				WHERE category_id = :cID";
		
		if( databaseHandler::getOne( $sql, $params ) > 0 )
			return true;
			
		return false;
	}
	
	public static function hasClasses( $params )
	{
		$sql = "SELECT COUNT( * )
				FROM tgp_classes
				WHERE category_id = :cID";
		
		if( databaseHandler::getOne( $sql, $params ) > 0 )
			return true;
			
		return false;
	}
	
	public static function getCurrentStudents( $mP )
	{
		$s = seasonModel::getCurrent();
		
		$mP[ ':sID' ] = $s[ 'id' ];
		
		return self::getSeasonStudents( $mP );
	}
	
	public static function getLastSeasonStudents( $mP )
	{
		$s = seasonModel::getPrevious();
		
		$mP[ ':sID' ] = $s[ 'id' ];
		
		return self::getSeasonStudents( $mP );
	}
	
	public static function getAllStudents( $mP )
	{
		$sql = 'SELECT ts.*, tsci.email, tp.email AS parent_email
				FROM tgp_classes tc
				lEFT JOIN tgp_class_students tcs ON tcs.class_id = tc.id
				INNER JOIN tgp_students ts ON ts.id = tcs.student_id
				LEFT JOIN tgp_student_contact_info tsci ON tsci.student_id = tc.id
				LEFT JOIN tgp_parents tp ON tp.student_id = ts.id
				WHERE tc.tgp_class_category_id = :cID';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getSeasonStudents( $mP )
	{
		$sql = 'SELECT ts.*, tsci.email, tp.email AS parent_email
				FROM tgp_classes tc
				LEFT JOIN tgp_class_students tcs ON tcs.class_id = tc.id
				INNER JOIN tgp_students ts ON ts.id = tcs.student_id
				LEFT JOIN tgp_student_contact_info tsci ON tsci.student_id = tc.id
				LEFT JOIN tgp_parents tp ON tp.student_id = ts.id
				WHERE tc.tgp_class_category_id = :cID AND tc.season_id = :sID';
		
		return databaseHandler::getAll( $sql, $mP );
	
	}
	
	public static function getStudents( $mP, $season )
	{
		switch( $season )
		{
			case 'Current':
				return self::getCurrentSeasonStudents( $mP );
				
			case 'Last': 
				return self::getPreviousSeasonStudents( $mP );
			
			default:
				return self::getAllStudents( $mP );
		}
	}
}
?>