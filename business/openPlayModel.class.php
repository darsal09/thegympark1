<?php
/*
	This singleton class is what helps us add, update, and retrieve the information about open plays
*/

class openPlayModel
{
	private function __construct()
	{
	
	}

	public static function get( $mP )
	{		
		$sql = 'SELECT tcs.*, op.id AS openplayID, op.title, tcs.id AS season_id
				FROM openplays op
				INNER JOIN tgp_class_season tcs ON tcs.id = op.season_id
				WHERE op.id = :opID';
		
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public static function getFromSeason( $mP )
	{
		$sql = 'SELECT *
				FROM openplays op
				INNER JOIN openplay_class_set opcs ON opcs.opoenplay_id = op.id
				WHERE op.season_id = :sID';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getCurrent( )
	{
		$season = seasonModel::getCurrent();

		$sql = 'SELECT op.*, op.id AS openplayID, tcs.season, tcs.year, tcs.start_date, tcs.end_date
				FROM openplays op
				LEFT JOIN tgp_class_season tcs ON tcs.id = op.season_id
				WHERE op.season_id = :sID';
		
		$params = array( ':sID' => $season[ 'id' ] );
		
		return databaseHandler::getRow( $sql, $params );
	}
	
	public static function getSeasonID( $mP )
	{
		$sql = 'SELECT season_id
				FROM openplays 
				WHERE id = :opID';
				
		return databaseHandler::getOne( $sql, $mP );
	}
	
	public static function exist( $mP )
	{
		$sql = 'SELECT id
				FROM openplays
				WHERE title = :title AND season_id = :sID';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $mP ) );
		
		if( $pdo->getOne() > 0 )
			return true;
			
		return false;
	}
	
	
	public static function add( $mP )
	{
		if( self::exist( $mP ) )
			return false;
			
		$sql = 'INSERT INTO 
				openplays( season_id, title )
				VALUES( :sID, :title )';
				
		databaseHandler::Execute( $sql, $mP );
		
		return databaseHandler::getLastID();		
	}

	public static function addClass( $mP )
	{
		$sql = 'INSERT INTO
				openplay_class_set( openplay_id, class_id )
				VALUES( :opID, :cID )';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function addStudent( $mP, $register_who = '' )
	{			
		if( !isset( $mP[ ':pID' ] ) )
			$mP[ ':pID' ] = null;
			
		if( !isset( $mP[ ':price' ] ) )
			$mP[ ':price' ] = null;
		
		if( !isset( $mP[ ':status' ] ) )
		{
			$mP[ ':status' ] = 'Register';
			
			if( $register_who != 'Parent/Legal Guardian' )
				$mP[ ':status' ] = 'Pending';	
		}
		
		$sql = 'INSERT INTO
				openplay_students( student_id, openplay_id, amount, package_id, price, status )
				VALUES( :sID, :opID, :Amount, :pID, :price, :status )';
		
		 databaseHandler::Execute( $sql, $mP );
		 
		 return databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );
	}	
	
	public static function getClasses( $mP )
	{
		$sql = 'SELECT tc.*
				FROM openplay_class_set ocs
				INNER JOIN tgp_classes tc ON tc.class_id = ocs.class_id
				WHERE ocs.openplay_id = :opID';
				
		return databaseHandler::getAll( $sql, $mP );
	}
	
	
	public static function getClassesNotIn( $mP )
	{
		$sql = 'SELECT class_id
				FROM tgp_classes
				WHERE types = :Type AND season_id = :sID AND class_id NOT IN( SELECT class_id FROM openplay_class_set WHERE openplay_id = :opID )';
				
		return databaseHandler::getAll( $sql, $mP );
	}	
	
	public static function addClassesNotIn( $mP )
	{
		$C = self::getClassesNotIn( array( ':opID' => $mP[ ':opID' ], ':Type' => 'Flexible', ':sID' => self::getSeasonID( $mP ) ) );
		
		foreach( $C AS $cID )
			self::addClass( array( ':cID' => $cID[ 'class_id' ], ':opID' => $mP[  ':opID' ] ) );
			
		return array( );
	}
	
	public static function getStudent( $mP )
	{
		$sql = 'SELECT SUM( os.amount ) AS amount, op.used
				FROM openplay_students os
				LEFT JOIN ( SELECT COUNT( * ) AS used, student_id 
							FROM openplay_attendance 
							WHERE student_id = :sID AND openplay_id = :opID GROUP BY student_id ) op ON op.student_id = :sID
				WHERE  os.student_id = :sID AND os.openplay_id = :opID';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $mP ) );
		
		return $pdo->getRow();
	}
	
	public static function getStudentHistory( $mP )
	{
		$sql = 'SELECT oa.*, tc.weekday, tc.start_time, tc.end_time
				FROM openplay_attendance oa
				INNER JOIN tgp_classes tc ON tc.class_id = oa.class_id
				WHERE student_id = :sID AND openplay_id = :opID';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getStudentsWithClassesLeft( $mP )
	{
		$sql = 'SELECT SUM( oa.amount ) AS amount, tf.id, tf.first, tf.last, op_used.used
				FROM openplay_students oa
				LEFT JOIN (SELECT student_id, COUNT( * ) AS used
						FROM openplay_attendance
						WHERE openplay_id = :opID
						GROUP BY student_id) op_used ON op_used.student_id = oa.student_id
				LEFT JOIN tgp_family tf ON tf.id = oa.student_id
				WHERE oa.openplay_id = :opID AND oa.amount > op_used.used';
				
		return databaseHandler::getAll( $sql, $mP );
	}

	public static function getStudentsWithLetter( $mP )
	{
		$mP[ ':letter' ] = $mP[ ':letter' ].'%';
		
		$sql = 'SELECT *, COALESCE(amount - used, 0 ) AS leftPackages
				FROM ( SELECT SUM( os.amount ) AS amount, COALESCE( sop.used, 0 ) AS used, tf.*, os.status
						FROM openplay_students os
						INNER JOIN tgp_family tf ON tf.id = os.student_id AND tf.first like :letter
						LEFT JOIN ( SELECT COUNT( * ) AS used, student_id, openplay_id 
								FROM openplay_attendance
								GROUP BY student_id ) sop ON sop.student_id = os.student_id
						) results 
				WHERE amount - used > 0';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $mP ) );
		
		return $pdo->getAll();
	}
	
	public static function getStudents( $sort = null )
	{
		if( !is_null( $sort ) )
			return self::getStudentsSort( $sort );
			
		$sql = 'SELECT *, COALESCE( amount - used, 0 ) AS leftPackages
				FROM ( SELECT os.student_id, os.id AS openPlayStudentID, os.package_id, SUM( os.amount ) AS amount, tf.id, tf.first, tf.last, COALESCE( pu.used, 0 ) AS used, os.status
				FROM openplay_students os
				INNER JOIN tgp_family tf ON tf.id = os.student_id 
				LEFT JOIN ( SELECT COUNT( * ) AS used, student_id, package_id, openplay_student_id
							FROM openplay_attendance 
							GROUP BY openplay_student_id ) pu ON pu.package_id = os.package_id AND pu.student_id = os.student_id AND pu.openplay_student_id = os.id
				WHERE os.status = :status AND os.end >= CURDATE()
				GROUP BY os.student_id, os.package_id ) results';
		
		return databaseHandler::getAll( $sql, array( ':status' => 'Register' ) );
		
	}	
	
	public static function getStudentsSort( $sort = null )
	{
		if( is_null( $sort ) )
			$sort = 'first';
			
		$sql = 'SELECT *, COALESCE( amount - used, 0 ) AS leftPackages
				FROM ( SELECT os.student_id, os.id AS openPlayStudentID, os.package_id, SUM( os.amount ) AS amount, tf.id, tf.first, tf.last, COALESCE( pu.used, 0 ) AS used, os.status
				FROM openplay_students os
				INNER JOIN tgp_family tf ON tf.id = os.student_id 
				LEFT JOIN ( SELECT COUNT( * ) AS used, student_id, package_id, openplay_student_id
							FROM openplay_attendance 
							GROUP BY openplay_student_id ) pu ON pu.package_id = os.package_id AND pu.student_id = os.student_id AND pu.openplay_student_id = os.id
				WHERE os.status = :status AND os.end >= CURDATE()
				GROUP BY os.student_id, os.package_id ) results
				ORDER BY results.'.$sort;
				
		return databaseHandler::getAll( $sql, array( ':status' => 'Register' ) );
	}
	
	/*
		returns the amount of sessions a student has attended.
	*/
	public static function getStudentUsed( $mP )
	{
		$sql = 'SELECT COUNT( * )
				FROM openplay_attendance
				WHERE student_id = :sID AND openplay_id = :opID';
		
		return databaseHandler::getOne( $sql, $mP );
	}
	
	public static function getPackage( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_class_packages
				WHERE id = :pID';
		
		return databasehandler::getRow( $sql, $mP );
	}
	
	public static function sendRegisteredEmail( $mP )
	{
		if( emailModel::send( $mP ) )
			return true;
			
		return false;	
	}
	
	public static function getSessions( $mP )
	{
		$sql = 'SELECT tc.weekday, ocs.class_id
				FROM openplay_class_set ocs
				LEFT JOIN tgp_classes tc ON tc.class_id = ocs.class_Id
				WHERE ocs.openplay_id = :opID
				GROUP BY ocs.class_id
				ORDER BY tc.weekday';
				
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getNextSession( $mP )
	{
		date_default_timezone_set('America/New_York');
		
		$r = self::getSessions( $mP );
				
		if( sizeof( $r ) < 1 )
			return array();
	
		$j = 0;
		$date = new date();
		$cweekday = $date->getCurrentWeekday();
		$cweekdayIndex = $small= week::getCurrentDayIndex();
		$size = sizeof( $r );
		
		for( $i = 0; $i < $size; $i++ )
		{			
			if( $r[ $i ][ 'weekday' ] == $cweekday )
				return $r[ $i ];
				
			$dayIndex = week::getDayIndex( $r[ $i ][ 'weekday' ] );
			
			if( $cweekdayIndex > $dayIndex )
			{
				$diff = $cweekdayIndex  - $dayIndex;
				
				if( $small > $diff )
				{
					$small = $diff;
					$j = $i;
				}
			}
		}

		
		return $r[ $j ];
	}

	public static function getCurrentSession( $mP )
	{
		date_default_timezone_set('America/New_York');
		
		
		$r = self::getSessions( $mP );

		if( sizeof( $r ) < 1 )
			return array();
	
		$j = 0;
		$date = new date();
		$cweekday = $date->getCurrentWeekday();
		$cweekdayIndex = 1; //week::getCurrentDayIndex();
		$small = 7;
		$size = sizeof( $r );
		$w = array();
		
		for( $i = 0; $i < $size; $i++ )
		{			
			if( $r[ $i ][ 'weekday' ] == $cweekday )
				return $r[ $i ];
				
			$dayIndex = week::getDayIndex( $r[ $i ][ 'weekday' ] );
			
			$diff = $cweekdayIndex  - $dayIndex;
				
			if( $diff < 0 )
				$diff *= -1;
				
			if( $small > $diff )
			{
				$small = $diff;
				$j = $i;
			}
		}
		
		return $r[ $j ];
	}

	
	public static function currentSessionDate( $mP = array() )
	{	
		date_default_timezone_set('America/New_York');
		
		$op = array();
		
		if( empty( $mP ) )
		{
			$op 		= self::getCurrent();
			$session 	= self::getCurrentSession( array( ':opID' => $op[ 'openplayID' ] ) );
			$op 		= classModel::getWeekday( array( ':cID' => $session[ 'class_id' ]  )  );
		}
		else
			$op = classModel::getWeekday( $mP );

		
		//session date information
		$sWeekday =  $op[ 'weekday' ];
		$swIndex = date( 'N', strtotime( $sWeekday ) );

		//current date information
		$cWeekday = date( 'l' );
		$cwIndex = date( 'N' );
		
		
		if( $cwIndex < $swIndex )
		{
			$days = '-'.( 7 - ($swIndex - $cwIndex ) ).' days';
			$date = date( 'Y-m-d', strtotime( $days, strtotime( date( 'Y-m-d' ) ) ) );
		}
		else if( $cwIndex > $swIndex )
		{
			$days = '-'.($swIndex - $cwIndex).' days';
			$date = date( 'Y-m-d', strtotime( $days, strtotime( date( 'Y-m-d' ) ) ) );
		}		
		else
			$date = date( 'Y-m-d' );		
		
		return $date;
	}
	
	
	public static function removeAttendance( $mP )
	{
		$sql = 'DELETE
				FROM openplay_attendance
				WHERE id = :id';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $mP ) );
		
		return $pdo->execute( );
	}
	
	public static function getAttendanceDate( $mP )
	{
		$sql = 'SELECT dates
				FROM openplay_attendance
				WHERE id = :id';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $mP ) );
		
		$result = $pdo->getOne();
		
		return date( 'l, M jS, Y', strtotime( $result ) );
	}
	
	public static function getStudentPackages( $mP )
	{
		$sql = 'SELECT os.*, tcp.title
				FROM openplay_students os
				LEFT JOIN tgp_class_packages tcp ON tcp.id = os.package_id
				WHERE os.student_id = :sID
				ORDER BY  addedOn DESC';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $mP ) );
		
		return $pdo->getAll();
	}
}

?>