<?php
class employees
{
	public function __construct()
	{
	
	}
	
	public function init()
	{
		$this->mEmployees = employeesModel::get();
		$this->setLinks();
	}
	
	public function setLinks()
	{
		$E = &$this->mEmployees;
		
		$size = sizeof( $E );
		
		for( $i = 0; $i < $size; $i++ )
			$E[ $i ][ 'link' ] = Link::Build( 'admin/employees/'.$E[ $i ][ 'id' ] );
	}
}
?>