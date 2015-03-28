<?php
class openPlayAttendance extends Model
{
	protected static $mTableName = 'openplay_attendance';
	protected $mReq = array( 'openplay_id' => true, 'class_id' => true, 'student_id' => true, 'dates' => true, 'package_id' => true );

	public function __construct( $mP )
	{
		$this->mInfo 			= $mP[ 'info' ];
		$this->mInfo[ 'dates' ] = $this->getSessionDate();	
	}

	public function hasSessionsLeft()
	{			
	/*
		$sql = 'SELECT SUM( os.amount ) AS amount, pu.used, os.student_id
				FROM openplay_students os
				LEFT JOIN ( SELECT COUNT( * ) AS used, student_id 
							FROM openplay_attendance
							WHERE student_id = :sID AND openplay_id = :opID GROUP BY student_id) pu ON pu.student_id = os.student_id
				WHERE os.student_id = :sID AND openplay_id = :opID
				GROUP BY os.student_id';
		*/
		
		$sql = 'SELECT os.amount, COALESCE( pu.used, 0 ) AS used, os.student_id, pu.package_id
				FROM openplay_students os
				LEFT JOIN ( SELECT COUNT( * ) AS used, student_id, package_id
							FROM openplay_attendance
							WHERE student_id = :sID AND package_id = :pID GROUP BY student_id, package_id ) pu ON pu.package_id = os.package_id AND pu.student_id = os.student_id
				WHERE os.student_id = :sID AND os.package_id = :pID AND os.end >= CURDATE()
				GROUP BY os.student_id, pu.package_id';
		
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 
									'parameter' => array( ':sID' => $this->mInfo[ 'student_id' ], 
															':pID' => $this->mInfo[ 'package_id' ] ) ) );
															
		$r = $pdo->getRow();
		if( empty( $r ) )
			return false;
			
		if( $r[ 'amount' ] < 0 )
			return true;
		
		if( $r[ 'amount' ] <= $r[ 'used' ] )
			return false;
		
		return true;
	}
	
	public function exist()
	{		
	
		$sql = 'SELECT id
				FROM openplay_attendance
				WHERE openplay_id = :opID AND student_id = :sID AND dates = :dates';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 
										'parameter' => array( ':opID' => $this->mInfo[ 'openplay_id' ], 
																':sID' => $this->mInfo[ 'student_id' ], 
																':dates' => $this->mInfo[ 'dates' ]  ) ) );
	
		$result = $pdo->getOne();
		
		if( $result > 0 )
		{
			$this->mID  = $result;
			return true;
		}
		
		return false;
	}
	
	private function getSessionDate()
	{		
		$class_day = $this->getSessionDay();
		
		$date = new date();	
		
		$today = $date->getCurrentWeekDay();
		
		$cd_index = week::getDayIndex( $class_day );
		$td_index = week::getCurrentDayIndex();
		
		$date = $date->getCurrent();
		
		if( $cd_index == $td_index )
			return $date;
		
		if( $cd_index > $td_index )
			return date( 'Y-m-d', strtotime( '-'.(7 - ( $cd_index - $td_index )).' days' ) );
		
		
		return date( 'Y-m-d', strtotime( '-'.($td_index - $cd_index).' days' ) );
	}

	private function getSessionDay()
	{		
		$sql = 'SELECT weekday
				FROM tgp_classes
				WHERE class_id = :cID';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 
										'parameter' => array( ':cID' => $this->mInfo[ 'class_id' ] ) ) );
		
		
		return $pdo->getOne();
	}
	
	public function save()
	{		
		if( !$this->hasSessionsLeft() ) //has no sessions left
			return json_encode( array( 'id' => -2, 'message' => 'No sessions left for this student' ) ); 
			
		if( $this->exist() ) //already exist
			return json_encode( array( 'id' => -1, 'message' => 'The attendance for this student in this open play already exist' ) );
				
		$sql = 'INSERT INTO
				openplay_attendance( openplay_id, class_id, student_id, dates, package_id, openplay_student_id )
				VALUES( :opID, :cID, :sID, :date, :packageID, :opStudentID )';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 
										'parameter' => array( ':opID' => $this->mInfo[ 'openplay_id' ], 
																':cID' => $this->mInfo[ 'class_id' ], 
																':sID' => $this->mInfo[ 'student_id' ], 
																':date' => $this->mInfo[ 'dates' ],
																':packageID' => $this->mInfo[ 'package_id' ],
																':opStudentID' => $this->mInfo[ 'registration_id' ] ) ) );	
		$result = $pdo->execute();
		
		if( $result > 0 )
		{
			$id = $pdo->getLastID();
			return json_encode( array( 'id' => $id, 'date' => openPlayModel::getAttendanceDate( array( ':id' => $id )  ), 'message' => 'attendance was taken'  ) );
		}
			
		return json_encode( array( 'id' => 0, 'message' => 'Could not take attendance' ) );
	}
}
?>