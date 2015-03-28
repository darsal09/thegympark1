<?php
class notice
{
	public $mID;
	public $mNotices;
	
	public function __construct( $mP )
	{
		$this->mID = $mP[ 'id' ];
		$this->set();
	}
	
	public function get()
	{
		return $this->mNotices;
	}
	
	public function set()
	{
		$this->mNotices = noticesModel::get( array( ':uID' => $this->mID ) );
	}
}
?>