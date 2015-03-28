<?php
class controllerStudent
{
	public $mContent;
	
	public function __construct()
	{
		switch( user::whatType() )
		{
			case 'A':
				$this->mContent = "adminStudent.tpl";
				break;
				
			case 'E':
				$this->mContent = "";
				break;
			
			case 'I':
				$this->mContent = "";
				break;
				
			default:
				$this->mContent = "student.tpl";
		}
	}
}
?>