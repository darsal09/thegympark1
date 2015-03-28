<?php

class addMyChild
{
	public $mP = array( 'first_name' => '', 'last_name' => '', 'type' => '', 'dob' => '' );
	public $mErrors = array( 'first_name' => false, 'last_name' => false, 'type' => false, 'dob' => false );
	public $mReq = array( 'first_name' => true, 'last_name' => true, 'type' => true, 'dob' => true );
	
	public function __construct()
	{
		if( isset( $_POST[ 'add_my_child' ] ) )
			$this->save();
	}
	
	private function save()
	{
		if( !isset( $_POST[ 'add_my_child' ] ) )
			return;
		
		$sex = array( 'son' => 'M', 'Father' => 'M', 'Husband' => 'M', 'Daughter' => 'F', 'Mother' => 'F', 'Wife' => 'F' );
		
		$this->mP = sanitize::filterInputs( 'POST', array( 'first_name' => FILTER_SANITIZE_STRING, 'last_name' => FILTER_SANITIZE_STRING, 'dob' => FILTER_SANITIZE_STRING, 'type' => FILTER_SANITIZE_STRING ) );
		
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		if( in_array( true, $this->mErrors ) )
			return;
				
		family::addMember( array( ':uID' => user::getId(), ':first' => $this->mP[ 'first_name' ], ':last' => $this->mP[ 'last_name' ], ':dob' => helper::DOB( $this->mP[ 'dob' ] ), ':gender' => $sex[ $this->mP[ 'type' ] ], ':type' => $this->mP[ 'type' ] )  );
		
		header( 'Location:'.Link::Build( 'logged-in' ) );
		exit;
		
	}
}

?>