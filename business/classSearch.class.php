<?php
class classSearch
{
	private function __construct()
	{
	
	}
	/*
		It receives the following parameters:
		:first => full or part of the student's first name you are searching for
		:last => full or part of the student's last you are searching for
		:cID => class id of the class you are trying to find out participants for
		returns all the people in the system except the ones already enrolled in the class with first or last name provided
	*/
	public static function byName( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_family
				WHERE first like :first OR last like :last AND id NOT IN ( SELECT student_id FROM tgp_class_students WHERE class_id = :cID )
				GROUP BY id
				ORDER BY first, last';
				
		return databaseHandler::getAll( $sql, $mP );
	}
	/*
		it receives the following parameters:
			:first => full or part of the student's first name you are searching for
			:cID => class id of the class you are trying to find participants for
		returns all the students search by first name except the ones already enrolled in the class
	*/
	public static function byFirst( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_family
				WHERE first like :first AND id NOT IN ( SELECT student_id FROM tgp_class_students WHERE class_id = :cID )
				GROUP BY id
				ORDER BY first, last';
				
		return databaseHandler::getAll( $sql, $mP );
	}
}
?>