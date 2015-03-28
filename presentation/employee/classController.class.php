<?php
class classController
{
	public $mClassID;
	public $mStudents;
	public $mClass;
	
	public $mLinkToTakeClassAttendance;
	
	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_class_id' ] ) )
			helper::redirect( 'employee/classes/current' );
			
		$this->mClassID = sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
		
		
	}
	
	public function init()
	{
		$this->mClass = classModel::get( array( ':cID' => $this->mClassID ) );
		$this->mStudents = classModel::getStudents( array( ':cID' => $this->mClassID ) );
		
		$this->mLinkToTakeClassAttendance = Link::Build( 'api/employee/classes/class/takeAttendance.php' );
		
		$this->mWeeklyAttendance = classModel::getWeeklyAttendance( $this->mClass[ 'start_date' ], $this->mClass[ 'end_date' ] );		
		$this->setAttendance();
	}
	
	private function setAttendance()
	{
		$S = &$this->mStudents;
		$size = sizeof( $S );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$S[ $i ][ 'attendance' ] = array();
			
			foreach( $this->mWeeklyAttendance AS $date )
				$S[ $i ][ 'attendance' ][] = array( 'date' => $date[ 'date' ], 'attended' => helper::studentAttendedClass( array( ':sID' => $S[ $i ][ 'id' ], ':cID' => $this->mClassID, ':date' => $date[ 'date' ] ) ) ); 
		}
	}
}
?>