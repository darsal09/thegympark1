<?php
class emails
{
	public $mObjects = array();
	public $mLinks = array();
	public function __construct()
	{
	
	}
	
	public function init()
	{
		$this->setEmailMenu();
		$this->setLinks();
	}
	
	private function setEmailMenu()
	{		
		$this->mObjects[ ] = array( 'title' => "Classes", 'link_title' => 'click to send an email to a hold class', 'link' => Link::Build( 'emailClass' ) );
		$this->mObjects[ ] = array( 'title' => "Students", 'link_title' => 'click to send an email to a student', 'link' => Link::Build( 'emailStudent' ) );
		$this->mObjects[ ] = array( 'title' => "Categories", 'link_title' => 'click to send an email to all classes in a category', 'link' => Link::Build( 'emailStudents' ) );
		$this->mObjects[ ] = array( 'title' => "Programs", 'link_title' => 'click to send an email to all classes in a program', 'link' => Link::Build( 'moveStudent' ) );
		$this->mObjects[ ] = array( 'title' => "Instructors", 'link_title' => 'click to send an email to all instructors', 'link' => Link::Build( 'studentAttendance' ) );						
	}

	public function setLinks()
	{
		$this->mLinks[] = array( 'title' => '&laquo;Admin', 'link' => Link::Build( 'admin' ) );
	}

}
?>