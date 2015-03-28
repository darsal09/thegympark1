<?php
class index
{
	public function __construct()
	{
//		if( !user::isEmployee() )
//			helper::redirect( 'sign-in' );
			
		$this->mObjects = array();
		
		$this->setDefaultMenu();
		
	}
	
	public function init()
	{
	
	}
	
	
	private function setDefaultMenu()
	{
		if( !empty( $this->mOptions ) )
			return;
			
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Classes", 'link_title' => 'Go To Class Administering', 'link' => Link::Build( 'employee/classes' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Open Play", 'link_title' => 'Go To Open Plays Administering', 'link' => Link::Build( 'employee/open-plays/current' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Students", 'link_title' => 'Go To Students Administering', 'link' => Link::Build( 'employee/students' ) );
	}
	
}
?>