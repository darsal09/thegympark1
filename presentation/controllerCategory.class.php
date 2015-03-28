<?php
class controllerCategory
{	
	public $mContent;
		
	public function __construct()
	{
		switch( user::whatType() )
		{
			case 'A':
				$this->mContent = "adminCategory.tpl";
				break;
			
			case 'E':
				$this->mContent = "employeeCategory.tpl";
				break;
				
			case 'I':
				$this->mContent = "instructorCategory.tpl";
				break;
			
			default:
				$this->mContent = "category.tpl";
				break;
		}		
	}
	
}
?>