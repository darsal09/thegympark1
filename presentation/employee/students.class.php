<?php
class students
{
	public $mLetters = array();
	
	public function __construct()
	{
	
	}
	
	public function init()
	{
		$students = new studentsModel();
		
		$this->mStudents = $students->getAll();		
		$this->mLetters = helper::setFilters( $this->mStudents );
	}
}
?>