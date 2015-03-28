<?php
class packageModel
{
	private function __construct()
	{
	
	}
	
	public static function get( $mP )
	{
		$sql = 'SELECT id, price, title, type, amount, valid, options
				FROM tgp_class_packages
				WHERE id = :pOPID';
		
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public static function getStudentAttendance( $mP )
	{		
		$sql = 'SELECT *
				FROM openplay_attendance
				WHERE student_id = :sID AND package_id = :pID AND openplay_student_id = :opStudentID';
			
		$pdo = new PDOHandler( array(  'sql' => $sql, 'parameter' => $mP ) );
		
		return $pdo->getAll();
	}
}
?>