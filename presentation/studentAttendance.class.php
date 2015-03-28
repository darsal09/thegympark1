<?php
class studentAttendance
{
	public $mAttendance;
	public $mStudentID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
	}
	
	public function init()
	{
		$this->mClasses = student::getClasses( array( ':sID' => $this->mStudentID ) );
		
		$this->setClassAttendance();
	}
	
	private function setClassAttendance()
	{
		$C = &$this->mClasses;
		$size = sizeof( $C );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$this->mAttendance[ $i ][ 'title' ] = classModel::getTitle( array( ':cID' => $C[ $i ][ 'class_id' ] ) );
			
			$classSchedule = classModel::getSchedule( array( ':cID' => $C[ $i ][ 'class_id' ] ) );
			$studentAttendance = student::getClassAttendance( array( ':sID' => $this->mStudentID, ':cID' => $C[  $i ][ 'class_id' ] ) );
		
			$this->mAttendance[ $i ][ 'dates' ] = array();
			$A = &$this->mAttendance[ $i ][ 'dates' ];			
		
			$j_size = sizeof( $classSchedule );
			
			for( $j = 0; $j < $j_size; $j++ )
			{
				$A[ $j ][ 'date' ] 		= date( 'M. d/\'y', strtotime( $classSchedule[ $j ] ) );
				$A[ $j ][ 'attended' ] 	= '<input type=checkbox name="">';
				
				if( classModel::setCurrentDateSchedule( $classSchedule[ $j ] ) )
				{
					if( in_array( $classSchedule[ $j ], $studentAttendance ) )
						$A[ $j ][ 'attended' ] = '<input type=checkbox name="" disabled checked>';
					else
						$A[ $j ][ 'attended' ] = '<input type=checkbox name="" disabled>';
				}
			}
		}
	}
	
	
	public function __destruct()
	{
	
	}
}
?>