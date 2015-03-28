<?php
class notices
{
	public $mNotices;
	public $mConsents;
	
	public function __construct()
	{
		
	}
	
	public function init()
	{
		$this->mNotices = noticesModel::get( array( ':uID' => user::getID() ) );
		$this->mConsents = parentConsentsModel::get( array( ':uID' => user::getID() ) );
	}
}
?>