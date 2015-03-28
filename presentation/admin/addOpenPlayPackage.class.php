<?php
class addOpenPlayPackage
{
	public $mP = array( 'title' => '', 'price' => '', 'amount' => '', 'type' => '', 'valid' => 0, 'option' => '');
	public $mReq = array();
	public $mErrors = array();
	
	
	public function __construct()
	{
		if( isset( $_POST[ 'add_package' ] ) )
			$this->save();
	}
	
	public function init()
	{
		$this->mLinks[] = array( 'link' => Link::Build( 'admin/open-plays' ), 'title' => '&laquo;Open Plays' );
	}
	
	public function save()
	{
		print_r( $_POST );
	}
}
?>