<?php

class classes
{
	public static function get()
	{		
		return databaseHandler::getAll( 'CALL tgp_get_classes()' );		
	}

	public static function getCurrentSeason()
	{
		$season = seasonModel::getCurrent();
		
		return self::getSeason( array( ':sID' => $season[ 'id' ] ) );
	}

	public static function getNextSeason()
	{
		$season = seasonModel::getNext();
		
		return self::getSeason( array( ':sID' => $season[ 'id' ] ) );
	}

	public static function getPreviousSeason( $mP )
	{
		$season = seasonModel::getPrevious();
		
		return self::getSeason( array( ':sID' => $season[ 'id' ] ) );
	}
	
	public static function getSeason( $mP )
	{
		$mP[ ':type' ] = 'Fixed';
		
		$sql = 'SELECT c.*, ct.type AS type, ct.title AS title, ct.age_group, p.title AS program_title, cc.title AS category_title, cc.description, cc.hexColor
				FROM tgp_classes c
				INNER JOIN class_titles ct ON ct.id = c.title_id
				INNER JOIN tgp_programs p ON p.program_id = c.tgp_program_id
				INNER JOIN tgp_classes_categories cc ON cc.cc_id = c.tgp_class_category_id
				WHERE season_id = :sID AND c.types = :type
				ORDER BY c.weekday, c.start_time, ct.category_id, ct.title, ct.age_group';
				
		return databaseHandler::getAll( $sql, $mP );	
	}
	
	public static function getSeasonDays( $mP )
	{
		$sql = 'SELECT weekday
				FROM tgp_classes
				WHERE season_id = :sID
				GROUP BY weekday
				ORDER BY weekday';
				
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getClass( $cID )
	{
		return procedureHandler::getAll( 'tgp_get_class', array( ':cID' => $cID ) );
	}
	
	public static function getStudents( $cID )
	{
		return procedureHandler::getAll( 'tgp_get_class_students', array( ':cID' => $cID ) );
	}
	
	public static function addAttendance( $cID, $students )
	{
		echo 'Adding students to class attendance<br/>';
		
		for( $i = 0; $i < sizeof( $students ); $i++ )
			student::addAttendance( $cID, $students[ $i ] );
	}
	
	public static function addStudents( $cID, $students )
	{
		echo 'Add Students to class <br/>';
		
		for( $i = 0; $i < sizeof( $students ); $i++ )
			student::addToClass( $cID, $students[ $i ] );			
	}
	
	public static function addExistingStudent( $cID, $kID )
	{		
		return databaseHandler::getOne( 'tgp_class_add_existing_student', array( ':cID' => $cID, ':kID' => $kID ) );
	}
	
	public static function addNewStudent( $cID, $sFName, $sLName, $sDOB, $sGender )
	{	
		$kID = databaseHandler::getOne( 'tgp_class_add_new_student', array( ':sFName' => $sFName, ':sLName' => $sLName, ':sDOB' => $sDOB, ':sGender' => $sGender ) );
		
		self::addExistingStudent( $cID, $kID );
		
		return $kID;
	}
		
	public static function removeStudentFromClass( $sID, $cID )
	{
		return databaseHandler::Execute( 'tgp_class_remove_student', array( ':sID' => $sID, ':cID' => $cID ) );
	}		
	
	public static function getClassesStudentNotIn( $mP )
	{
		$season = seasonModel::getCurrent();
		
		$mP[ ':seasonID' ] = $season[ 'id' ];
		$mP[ ':Type' ] = 'Fixed';

		$sql = 'SELECT tc.*, ct.title 
				FROM tgp_classes tc
				INNER JOIN class_titles ct ON ct.id = tc.title_id
				WHERE type = :Type AND season_id = :seasonID AND tc.class_id NOT IN( SELECT class_id FROM tgp_class_students WHERE student_id = :sID )
				ORDER BY ct.title, tc.weekday, tc.start_date, tc.start_time';
				
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getStudentNotInForTitle( $mP )
	{
		$season  = seasonModel::getCurrent();
		
		$mP[ ':seasonID' ] 	= $season[ 'id' ];
		$mP[ ':Type' ] 		= 'Fixed';
		
		$sql = 'SELECT *
				FROM tgp_classes tc 
				INNER JOIN class_titles ct ON ct.id = tc.title_id
				WHERE type = :Type AND season_id = :seasonID AND tc.title_id = :tID AND tc.class_id NOT IN ( SELECT class_id FROM tgp_class_students WHERE student_id = :sID )
				ORDER BY ct.title, tc.weekday, tc.start_date, tc.start_time';
				
		return databaseHandler::getAll( $sql, $mP );
	}
	
}

?>