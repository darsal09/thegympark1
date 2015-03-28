<?php
class employee
{
	public $mEmployee;
	public $mEmployeeID;
	public $mLinks;
	
	
	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_employee_id' ] ) )
			helper::redirect( 'admin/employees' );
			
			$this->mEmployeeID = sanitize::sani( $_GET[ 'tgp_employee_id' ], 'INTIGER' );
	}
	
	public function init()
	{
		$this->mEmployee = employeeModel::get( array( ':id' => $this->mEmployeeID ) );
		$this->setLinks();
	}
	
	public function setLinks()
	{
		$this->mLinks[] = array( 'link' => Link::Build( 'admin/employees' ), 'title' => '&laquo;Employees' );
	}
}
?>