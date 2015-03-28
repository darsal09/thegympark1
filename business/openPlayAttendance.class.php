<?php
class openPlayAttendance extends orm
{
	protected $mTableName = 'openplay_attendance';
	
	protected $mReq = array( 'openPlayID' => false, 
								'classID' => false, 
								'studentID' => true, 
								'date' => true, 
								'packageID' => true,
								'openPlayStudentID' => true );
								
	protected $mErrors = array( 'openPlayID' => false, 
								'classID' => false, 
								'studentID' => false, 
								'date' => false, 
								'packageID' => false,
								'openPlayStudentID' => false );
								
	protected $mFields	= array( 'openplay_id' 	=> ':openPlayID', 
								'class_id' 		=> ':classID',
								'student_id' 	=> ':studentID',
								'dates' 		=> ':date',
								'package_id' 	=> ':packageID',
								'openPlayStudentID' => ':opStudentID' );
	public $mOpenPlayID;
	public $mOpenPlayStudentID;
	
	public $mClassID;
	public $mStudentID;
	public $mDate;
	public $mPackageID;
	
	
	public function __construct( $mP = array() )
	{	
		if( isset( $mP[ 'openPlayID' ] ) )
			$this->mOpenPlayID = $mP[ 'openPlayID' ];
		else
			$this->mOpenPlayID = 0;
			
		if( isset( $mP[ 'classID' ] ) )
			$this->mClassID = $mP[ 'classID' ];
		else
			$this->mClassID = 0;
			
		if( isset( $mP[ 'studentID' ] ) )
			$this->mStudentID = $mP[ 'studentID' ];

		if( isset( $mP[ 'date' ] ) )
			$this->mDate = $mP[ 'date' ];
		else
			$this->setDate();
			
		if( isset( $mP[ 'packageID' ] ) )
			$this->mPackageID = $mP[ 'packageID' ];

		if( isset( $mP[ 'openPlayStudentID' ] ) )
			$this->mOpenPlayStudentID = $mP[ 'openPlayStudentID' ];

		$this->setStatements();
		$this->checkErrors();
	}
	
	public function setDate()
	{
		$op = openPlayModel::getCurrent();
		$session = openPlayModel::getNextSession( $op[ 'id' ] );
		
		
	}
	
	public function getOpenPlayStudentID()
	{
		return $this->mOpenPlayStudentID;
	}

	public function getStudentID()
	{
		return $this->mStudentID;
	}
	
	public function getOpenplayID()
	{
		return $this->mOpenPlayID;
	}
	
	public function getClassID()
	{
		return $this->mClassID;
	}

	public function getPackageID()
	{
		return $this->mPackageID;
	}

	public function getDate()
	{
		return $this->mDate;
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
		
		$sql = 'SELECT SUM( os.amount ) AS amount, COALESCE( pu.used, 0 ) AS used, os.student_id, os.package_id
				FROM openplay_students os
				LEFT JOIN ( SELECT COUNT( * ) AS used, student_id, package_id
							FROM openplay_attendance
							WHERE student_id = :sID AND package_id = :pID GROUP BY student_id, package_id ) pu ON pu.package_id = os.package_id
				WHERE os.student_id = :sID AND os.package_id = :pID AND os.end >= CURDATE()
				GROUP BY os.package_id';
		
																	
		$r = databaseHandler::getRow( $sql, array( ':sID' => $this->getStudentID(), 
													':pID' => $this->getPackageID() ) );		
		if( empty( $r ) )
			return false;
			
		if( $r[ 'amount' ] < 0 ) //if it has an unlimited package
			return true;
		
		if( $r[ 'amount' ] <= $r[ 'used' ] ) //if the amount used is equal to or more than amount bought
			return false;
		
		return true;
	}
	
	public function exist()
	{		
	
		$sql = 'SELECT id
				FROM openplay_attendance
				WHERE openplay_id = :opID AND student_id = :sID AND dates = :dates';
			
		$result = databaseHandler::getOne( $sql, array( ':opID' => $this->getOpenPlayID(), 
																':sID' => $this->getStudentID(), 
																':dates' => $this->getDate() ));
		
		
		if( $result < 1 )
			return false;
			
		$this->mID  = $result;
		return true;
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
				
		$result = databaseHandler::Execute( $sql, array( ':opID' => $this->getOpenPlayID(), 
																':cID' => $this->getClassID(), 
																':sID' => $this->getStudentID(), 
																':date' => $this->getDate(),
																':packageID' => $this->getPackageID(),
																':opStudentID' => $this->getOpenPlayStudentID() ) );
		if( $result < 1 )				
			return json_encode( array( 'id' => 0, 'message' => 'Could not take attendance' ) );		
			
		$id = databaseHandler::getLastID();
		return json_encode( array( 'id' => $id, 'date' => openPlayModel::getAttendanceDate( array( ':id' => $id )  ), 'message' => 'attendance was taken'  ) );
	}
}
?>