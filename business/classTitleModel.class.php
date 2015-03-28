<?php

class classTitleModel
{
	private function __construct()
	{
	
	}
	
	public static function add( $params )
	{		
		return procedureHandler::getOne( 'tgp_add_class_title', $params );		
	}
	
	public static function exist( $params )
	{			
		$sql = "SELECT id 
				FROM class_titles
				WHERE title = :Title";
		
		return databaseHandler::getOne( $sql, $params );		
	}
	
	public static function delete( $params )
	{
		if( $params[ ':ctID' ] < 1 )
			return -1;
			
		return procedureHandler::Execute( 'tgp_delete_classTitle', $params );
	}
	
	public static function get( $params )
	{
		if( $params[ ':ctID' ] < 1 )
			return -1;

		$sql = "SELECT *
				FROM class_titles
				WHERE id = :ctID
				ORDER BY category_id";
				
		return databaseHandler::getRow( $sql, $params );
	}
		
	public static function getType( $mP )
	{
		$sql = 'SELECT type
				FROM class_titles
				WHERE id = :cgID';
		
		return databaseHandler::getOne( $sql, $mP );
	}
	
	/*
		This function is only for flexible class: open play.
		It takes an array as parameter with the following indexes:
		:sID => season id
	*/
	public static function getOpenPlayID( $mP )
	{			
		$sql = 'SELECT id
				FROM openplays
				WHERE season_id = :sID';
				
		return databaseHandler::getOne( $sql, $mP );
	}
	
	public static function isClassIn( $mP )
	{
		
	}
	
	public static function getClasses( $ctID )
	{
		$sql = 'SELECT *
				FROM tgp_classes
				WHERE title_id = :ctID
				ORDER BY weekday, start_time, end_time';
				
		return databaseHandler::getAll( $sql, array( ':ctID' => $ctID ) );
	}

	public static function getCurrentClasses( $mP )
	{
		$mP[ ':sID' ] = seasonModel::getCurrentID();

		$sql = 'SELECT tc.*
				FROM tgp_classes tc
				WHERE title_id = :tID AND season_id = :sID AND class_id NOT IN(SELECT class_id FROM tgp_class_students WHERE student_id = :mID )
				ORDER BY tc.weekday';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getSeasonClasses( $mP )
	{
		$sql = "SELECT *
				FROM tgp_classes
				WHERE title_id = :ctID AND season_id = :sID
				ORDER BY weekday, start_time, end_time";
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getSeasonClassesStudentNotIn( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_classes
				WHERE title_id = :ctID AND season_id = :sID AND class_id NOT IN( SELECT class_id FROM tgp_class_students WHERE student_id = :mID )';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getDayClasses( $ctID, $weekday )
	{
		$sql = "SELECT tc.*, ct.title
				FROM tgp_classes tc
				LEFT JOIN class_titles ct ON ct.id = tc.title_id
				WHERE weekday = :weekday AND title_id = :ctID
				ORDER BY ct.title, tc.start_time, tc.end_time";
				
		return databaseHandler::getAll( $sql, array( ':weekday' => $weekday, ':ctID' => $ctID ) );
	}
	
	public static function update( $mP )
	{
		$sql = 'UPDATE class_titles
				SET title = :title, age_group = :ageGroup, total_time = :tTime, price = :price, 9weekPrice = :9weekPrice
				WHERE id = :ctID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function getCurrentSeasonStudents( $mP )
	{
		$s = seasonModel::getCurrent();
		$mP[ ':sID' ] = $s[ 'id' ];
		
		return self::getSeasonStudents( $mP );
	}
	
	public static function getPreviousSeason( $mP )
	{
		$s = seasonModel::getPrevious();
		
		$mP[ ':sID' ] = $s[ 'id' ];
		
		return self::getSeasonStudents( $mP );
	}
	
	public static function getSeasonStudents( $mP )
	{		
		$sql = 'SELECT ts.*, tsci.email, tp.email AS parent_email
				FROM tgp_classes tc 
				LEFT JOIN tgp_class_students tcs ON tcs.class_id = tc.class_id
				INNER JOIN tgp_students ts ON ts.id = tcs.student_id
				LEFT JOIN tgp_student_contact_info tsci ON tsci.student_id = ts.id
				LEFT JOIN tgp_parents tp ON tp.student_id = ts.id
				WHERE tc.title_id = :ctID AND tc.season_id = :sID';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getAllStudents( $mP )
	{		
		$sql = 'SELECT ts.*, tsci.email, tp.email AS parent_email
				FROM tgp_classes tc 
				LEFT JOIN tgp_class_students tcs ON tcs.class_id = tc.class_id
				INNER JOIN tgp_students ts ON ts.id = tcs.student_id
				LEFT JOIN tgp_student_contact_info tsci ON tsci.student_id = ts.id
				LEFT JOIN tgp_parents tp ON tp.student_id = ts.id
				WHERE tc.title_id = :ctID';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getStudents( $mP, $season )
	{
			switch( $season ) 
			{
				case 'Current':
					return self::getCurrentStudents( $mP );
				
				case 'Last':			
				return self::getPreviousStudents( $mP );
			
				default:
					return self::getAllStudents( $mP );
			}
	}
}

?>