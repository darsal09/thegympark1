<?php

class studentsModel
{
	public function __construct()
	{
	
	}

	public function getAll()
	{
		return administrator::getStudents();
	}
	
	public static function get( $mP )
	{
		$sql = 'SELECT tf.*
				FROM tgp_class_students tcs
				INNER JOIN tgp_family tf ON tf.id = tcs.student_id
				WHERE id NOT IN( SELECT student_id FROM openplay_students WHERE openplay_id = :opID )
				ORDER BY first, last';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getStudentsNotInClass( $cID )
	{
		$sql = 'SELECT tf.*
				FROM tgp_family tf
				WHERE tf.id NOT IN ( SELECT student_id FROM tgp_class_students WHERE class_id = :cID )
				GROUP BY tf.id
				ORDER BY tf.first, tf.last';
				
		$params = array( ':cID' => $cID );
		
		return databaseHandler::getAll( $sql, $params );
	}
	
	public static function getStudentsStartingWithLetter( $mP )
	{
		$mP[ ':letter' ] = $mP[ ':letter' ].'%';
		
		$sql = 'SELECT tf.*
				FROM tgp_class_students tcs
				INNER JOIN tgp_family tf ON tf.id = tcs.student_id
				WHERE tf.first LIKE :letter AND tcs.id NOT IN ( SELECT student_id FROM tgp_class_students WHERE class_id = :cID )
				ORDER BY tf.first, tf.last';
				
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getOpenPlayStudentsWithLetter( $mP )
	{
		$mP[ ':letter' ] = $mP[ ':letter' ].'%';
		
		$sql = 'SELECT * 
				FROM tgp_students
				WHERE first LIKE :letter AND id NOT IN ( SELECT student_id FROM openplay_students WHERE openplay_id = :opID )
				ORDER BY first, last';
				
		return databaseHandler::getAll( $sql, $mP );
	}
}
?>