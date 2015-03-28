<?php
class controllerClassGroup
{	
	public $mContent;
	
	public function __construct()
	{
		switch( user::whatType() )
		{
			case 'A':
				$this->mContent = "viewAdminClass_group.tpl";
				break;
				
			case 'E':
				$this->mContent = "";
				break;
			
			case 'I':
				$this->mContent = "";
				break;
				
			default:
				$this->mContent = "class_group.tpl";
				break;
		}
	}
}
?>