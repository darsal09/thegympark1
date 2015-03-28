<?php
class controllerProgram
{
	public $mContent;
	
	public function __construct()
	{
		switch( user::whatType() )
		{
			case 'A':
				$this->mContent = "adminProgram.tpl";
				break;
			
			case 'E':
				$this->mContent = "employeeProgram.tpl";
				break;
			
			case 'I':
				$this->mContent = "instructorProgram.tpl";
			default:
				$this->mContent = "program.tpl";
		}
	}
		
	public function __destruct()
	{
	
	}
}
?>