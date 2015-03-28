<?php
class controllerClassInfo
{
	public $mContent;
	
	public function __construct()
	{
		switch( user::whatType() )
		{
			case 'A':
				//$this->mContent = adminClass.tpl";
				helper::redirect( 'admin/classes/'.$_GET[ 'tgp_class_id' ] );
				break;
			
			case 'E':
				helper::redirect( 'employee/classes/'.$_GET[ 'tgp_class_id' ] );
				break;
				
			case 'I':
				$this->mContent = "intstructorClass.tpl";
				break;
				
			default:
				$this->mContent = "class.tpl";
				break;
		}
	}	
}
?>