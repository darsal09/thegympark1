<?php

class classModel
{
	private function __construct()
	{
	
	}
	
	public static function add( $P )
	{
		$cID = self::exist( array( ':wDay' => $P[ ':wDay' ], ':sTime' => $P[ ':sTime' ], ':eTime' => $P[ ':eTime' ], ':sDate' => $P[ ':sDate' ], ':eDate' => $P[ ':eDate' ], ':tID' => $P[ ':tID' ] ) );
		
		if( $cID > 0 )
			return array( 'cID' => $cID, 'action' => 'E' );
			
		$r = procedureHandler::Execute( 'tgp_add_class', $P );
		
		if( $r < 1 )
			return array( 'cID' => 0, 'action' => '' );
			
		return array( 'cID' => self::exist( array( ':wDay' => $P[ ':wDay' ], ':sTime' => $P[ ':sTime' ], ':eTime' => $P[ ':eTime' ], ':sDate' => $P[ ':sDate' ], ':eDate' => $P[ ':eDate' ], ':tID' => $P[ ':tID' ] ) ), 'action' => 'N' );
	}
	
	public static function addStudent( $mP )
	{
		$sql = 'INSERT INTO
				tgp_class_students( class_id, student_id, type, start, end )
				VALUES( :cID, :sID, :type, :start, :end )';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function exist( $params )
	{
		$sql = "SELECT * 
				FROM tgp_classes
				WHERE weekday = :wDay AND start_time = :sTime AND end_time = :eTime AND start_date = :sDate AND end_date = :eDate AND title_id = :tID";
		
		return databaseHandler::getOne( $sql, $params );
	}
	
	public static function update( $params )
	{
		return procedureHandler::Execute( 'tgp_update_class', $params );
	}
	
	public static function delete( $mP )
	{
		if( self::hasParticipants( $mP ) )
			return 0;
		
		$sql = 'DELETE
				FROM tgp_classes
				WHERE class_id = :cID';
		
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function get( $mP )
	{		
		$sql = 'SELECT c.*, ct.title, ct.9WeekPrice, ct.type, ct.age_group, p.title AS program_title, cc.title AS category_title, cc.description, tcs.season, tcs.year
				FROM tgp_classes c
				LEFT JOIN class_titles ct ON ct.id = c.title_id
				LEFT JOIN tgp_programs p ON p.program_id = c.tgp_program_id
				LEFT JOIN tgp_classes_categories cc ON cc.cc_id = c.tgp_class_category_id
				LEFT JOIN tgp_class_season tcs ON tcs.id = c.season_id
				WHERE c.class_id = :cID';
		
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public static function getHolidays( $mP )
	{
		$sql = 'SELECT *
				FROM holidayCalendar
				WHERE weekday = :weekday AND hdate BETWEEN :sdate AND :edate';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getSchedule( $mP )
	{
		if( !is_array( $mP ) )
			return;
		
		$C = self::get( $mP );
				
		$time = strtotime( $C[ 'start_date' ] );
		$endTime = strtotime( $C[ 'end_date' ] );
		
		$cSchedule = array();
		$i = 0; 
		
		while( $time <= $endTime )
		{			
			$cSchedule[ $i++ ] = date( 'y-m-d', $time );
			$time = strtotime( '+7 days', $time );
		}
		
		return $cSchedule;
	}
	
	public static function getTitle( $mP )
	{
		if( !is_array( $mP ) )
			return;
					
		$C = self::get( $mP );
		
		return $C[ 'title' ].'  '.$C[ 'age_group' ].'  '.$C[ 'weekday' ].'  '.date( 'g:ia', strtotime( $C[ 'start_time' ] ) );
	}
	
	public static function hasStudent( $mP )
	{
		$sql = 'SELECT id
				FROM tgp_class_students
				WHERE student_id = :sID AND class_id = :cID';
		
		$ID = databaseHandler::getOne( $sql, $mP );
		
		if( $ID > 0 )
			return true;
			
		return false;
	}
	
	public static function hasParticipants( $mP )
	{
		$sql = 'SELECT COUNT( * )
				FROM tgp_class_students
				WHERE class_id = :cID';
		
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
		
		return false;
	}

	/*
		It actually deletes the student from the class instead of dropped in it.
	*/
	
	public static function removeParticipant( $mP )
	{
		$sql = 'DELETE 
				FROM tgp_class_students 
				WHERE class_id = :cID AND student_id = :sID';
		
		$result = databaseHandler::Execute( $sql, $mP );
		
		if( $result > 0 )
			return true;
		
		return false;
	}
	
	/*
		Drops the student from class
		parameters:
			:cID => classID
			:sID => studentID
			
		
	*/
	
	public static function dropParticipant( $mP )
	{
		$mP[ ':status' ] 			= 'Dropped';
		$mP[ ':returnedAmount' ] 	= 0;
		
		$sql = 'UPDATE tgp_class_students
				SET status = :status, modefied = NOW(), returnedAmount = :returnedAmount
				WHERE class_id = :cID AND student_id = :sID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function setCurrentDateSchedule( $date )
	{
		$cDate = date( 'y-m-d' );
		
		$time = strtotime( $date );
		$cTime = strtotime( $cDate );

		if( $time <= $cTime )
			return true;
			
		return false;
	}
	
	//this function helps to set up the date for a specific class start date given the beginning of the season and the weekday the class should start
	public static function setDate( $wDay, $date )
	{
		$wDays = array( 'Monday' => 0, 'Tuesday' => 1, 'Wednesday' => 2, 'Thursday' => 3, 'Friday' => 4, 'Saturday' => 5, 'Sunday' => 6 );
		
		$sWDay = date( 'l', strtotime( $date ) );
		
		
		$sDay =  $wDays[ $sWDay ]; //the day index the season starts
		$aDay = $wDays[ $wDay ]; //the day index that the class will start
		
		if( $sDay == $aDay )
			return $date;
			
		if( $sDay > $aDay )
			return date( 'Y-m-d', strtotime( '+'.( 7 - $aDay ).' days', strtotime( $date ) )  );
		
		return date( 'Y-m-d', strtotime( '+'.( $aDay - $sDay ).' days', strtotime( $date ) ) );
	}

	//this function helps to set up the date for a specific class end date given the beginning of the season and the weekday the class should start
	public static function setEndDate( $wDay, $date )
	{
		$wDays = array( 'Monday' => 0, 'Tuesday' => 1, 'Wednesday' => 2, 'Thursday' => 3, 'Friday' => 4, 'Saturday' => 5, 'Sunday' => 6 );
		
		$sWDay = date( 'l', strtotime( $date ) );
		
		
		$sDay =  $wDays[ $sWDay ]; //the day index the season ends
		$aDay = $wDays[ $wDay ]; //the day index that the class will end
		
		if( $sDay == $aDay )
			return $date;
			
		if( $sDay < $aDay )
			return date( 'Y-m-d', strtotime( '-'.( 7 - ( $aDay - $sDay ) ).' days', strtotime( $date ) )  );
		
		return date( 'Y-m-d', strtotime( '-'.( $sDay - $aDay ).' days', strtotime( $date ) ) );
	}
		
	public static function getStudents( $mP )
	{
			$sql = "SELECT tf.*, tcs.start, tcs.end, tcs.price, tcs.type AS classType, tcs.id AS classStudentID, tcs.status
					FROM tgp_class_students tcs
					INNER JOIN tgp_family tf ON tf.id = tcs.student_id
					WHERE tcs.class_id = :cID
					ORDER BY tf.last, tf.first";
				
			return databaseHandler::getAll( $sql, $mP );		
	}
	
	public static function getPayment( $mP )
	{
		$sql = 'SELECT tcp.*, tcc.*
				FROM tgp_class_payments tcp
				LEFT JOIN tgp_credit_cards tcc ON tcc.id = tcp.card_id
				WHERE register_id = :cID AND student_id = :sID';
		
		$row = databaseHandler::getRow( $sql, $mP );
		
		$row[ 'card' ] = cardModel::decryptInfo( $row[ 'info' ] );
		
		return $row;
	}
	
	public static function sendRegisteredEmail( $mP )
	{
		//email, name, message
		if( emailModel::send( $mP ) )
			return true;
			
		return false;
		
	}
	
	public static function getRegisteredEmail( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_emails';
		
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public static function getWeeklyAttendance( $sDate, $eDate )
	{
		$weeks = helper::getTotalWeeks( $sDate, $eDate );
		$dates = array();
		$date = $sDate;
		
		for( $i = 0; $i <= $weeks; $i++ )
		{
			$dates[ $i ] = array( 'date' => date( 'Y-m-d', strtotime( $date ) ) );
			
			$date = date( 'Y-m-d', strtotime( '+7 days', strtotime( $date ) ) );
		}
		
		return $dates;
	}
	
	public static function getWeekday( $mP )
	{
		$sql = 'SELECT weekday, start_date, end_date
				FROM tgp_classes
				WHERE class_id = :cID';
		
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public static function getOtherStudents( $mP )
	{
		$sql = '';
		
		return databaseHandler::getAll( $sqlm, $mP );
	}
}

?>