<?php

class programModel
{
	private function __construct()
	{
	
	}
	
	public static function add( $params )
	{
		$pID = self::exist( array( ':pTitle' => $params[ ':pTitle' ] ) );
		
		if( $pID > 0 )
			return -1;
			
		return procedureHandler::Execute( 'tgp_add_program', $params );
	}
	
	public static function exist( $params )
	{
		if( empty( $params[ ':pTitle' ] ) )
			return -1;
			
		$sql = "SELECT program_id 
				FROM tgp_programs
				WHERE title = :pTitle";
		
		return databaseHandler::getOne( $sql, $params );
	}
	
	public static function get( $params )
	{
		return procedureHandler::getRow( 'tgp_get_program', $params );
	}

	public static function getTitle( $mP )
	{
		$sql = 'SELECT title
				FROM tgp_programs
				WHERE program_id = :pID';
		
		return databaseHandler::getOne( $sql, $mP );
	}
	
	public static function update( $params )
	{
		return procedureHandler::Execute( 'tgp_update_program', $params );
	}
	
	public static function delete( $params )
	{
		if( $params[ ':pID' ] < 1 || self::hasCategories( $params ) || self::hasClassTitles( $params ) || self::hasClasses( $params ) )
			return false;
				
		$sql = "DELETE FROM tgp_programs
				WHERE program_id = :pID";
		
		if( databaseHandler::Execute( $sql, $params ) > 0 )
			return true;
			
		return false;
	}
	
	public static function hasCategories( $params )
	{
		$sql = "SELECT COUNT( * )
				FROM tgp_classes_categories
				WHERE program_id = :pID";
		
		if( databaseHandler::getOne( $sql, $params ) > 0 )
			return true;
			
		return false;
	}
	
	public static function hasClassTitles( $params )
	{
		$sql = "SELECT COUNT( * )
				FROM class_titles
				WHERE program_id = :pID";
		
		if( databaseHandler::getOne( $sql, $params ) > 0 )
			return true;
			
		return false;
	}
	
	public static function hasClasses( $params )
	{
		$sql = "SELECT COUNT( * )
				FROM tgp_classes
				WHERE tgp_program_id = :pID";
		
		if( databaseHandler::getOne( $sql, $params ) > 0 )
			return true;
		
		return false;
	}
	
	public static function getSeasonClasses( $mP )
	{
		$sql = 'SELECT c.*, ct.title AS title, p.title AS program_title, cc.title AS category_title
				FROM tgp_classes c
				INNER JOIN class_titles ct ON ct.id = c.title_id
				INNER JOIN tgp_programs p ON p.program_id = :pID
				INNER JOIN tgp_classes_categories cc ON cc.cc_id = c.tgp_class_category_id
				WHERE c.tgp_program_id = :pID AND season_id = :sID
				ORDER BY c.weekday, c.start_time, ct.title';
				
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getSeasonStudents( $mP )
	{
		$sql = 'SELECT ts.*, tsci.email, tp.email AS parent_email
				FROM tgp_classes tc
				LEFT JOIN tgp_class_students tcs ON tcs.class_id = tc.class_id
				INNER JOIN tgp_students ts ON ts.id = tcs.student_id
				LEFT JOIN tgp_student_contact_info tsci ON tsci.student_id = ts.id
				LEFT JOIN tgp_parents tp ON tp.student_id = ts.id
				WHERE tc.tgp_program_id = :pID AND tc.season_id = :sID';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getCurrentSeasonStudents( $mP )
	{
		$s = seasonModel::getCurrent();
		
		$mP[ ':sID' ] = $s[ 'id' ];
		
		return self::getSeasonStudents( $mP );
	}
	
	public static function getPreviousSeasonStudents( $mP )
	{
		$s = seasonModel::getPrevious();
		
		$mP[ ':sID' ] = $s[ 'id' ];
		
		return self::getSeasonStudents( $mP );
	}
	
	public static function getAllSeasonStudents( $mP )
	{
		$sql = 'SELECT ts.*, tsci.email, tp.email AS parent_email
				FROM tgp_classes tc
				LEFT JOIN tgp_class_students tcs ON tcs.class_id = tc.class_id
				INNER JOIN tgp_students ts ON ts.id = tcs.student_id
				LEFT JOIN tgp_student_contact_info tsci ON tsci.student_id = ts.id
				LEFT JOIN tgp_parents tp ON tp.student_id = ts.id
				WHERE tc.tgp_program_id = :pID';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getStudents( $mP, $season )
	{
		switch( $season )
		{
			case 'Current':
				return self::getCurrentSeasonStudents( $mP );
				
			case 'Last':
				return self::getLastSeasonStudents( $mP );
				
			default:
				return self::getAllSeasonStudents( $mP );
		}
	}
}

?>