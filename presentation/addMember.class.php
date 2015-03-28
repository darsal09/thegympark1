<?php
require_once BUSINESS_DIR.'/listModel.class.php';

class addMember
{
	public $mP = array( ':name' => '', ':email' => '' );
	public $mLID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'list_id' ] ) )
			$this->mLID = sanitize::sani( $_GET[ 'list_id' ], 'STRING' );
			
		if( isset( $_POST[ 'add_member' ] ) )
			$this->addMember();
	}
	
	public function init()
	{
	
	}
	
	private function addMember()
	{
		if( !isset( $_POST[ 'add_member' ] ) )
			return;
			
		$this->mP = sanitize::filterInputs( 'POST', array( ':lID' => FILTER_SANITIZE_STRING, ':name' => FILTER_SANITIZE_STRING, ':email' => FILTER_SANITIZE_EMAIL ) );
		
		list( $first, $last ) = explode( ' ', $this->mP[ ':name' ] );
		
		listModel::subscribeMember( $this->mP[ ':lID' ], $this->mP[ ':email' ], array( 'FNAME' => $first, 'LNAME' => $last ) );
	}
}
?>