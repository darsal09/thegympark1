<?php
class myMemberEdit
{
	public $mEdit = false;
	public $mP = array( ':first' => '', ':last' => '', ':gender' => '', ':dob' => '', ':type' => '' );
	public $mReq = array( ':first' => true, ':last' => true, ':gender' => true, ':dob' => true, ':type' => true );
	public $mErrors = array( ':first' => false, ':last' => false, ':gender' => false, ':dob' => false, ':type' => false );
	
	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_my_member_id' ] ) )
			return;
		
		$this->mMemberID = sanitize::sani( $_GET[ 'tgp_my_member_id' ], 'INTIGER' );
		
		if( isset( $_POST[ 'cancel' ] ) )
			helper::redirect( 'my-members/'.$this->mMemberID );
		
		if( isset( $_POST[ 'edit_member_info' ] ) )
			$this->save();
		
	}
	
	
	public function init()
	{
		$this->mMember = family::getMember( array( ':mID' => $this->mMemberID ) );
		$this->mType = array( 'Myself', 'Wife', 'Husband', 'Wife', 'Son', 'Daughter' );
		$this->mLinkToEdit = Link::Build( 'my-members/'.$this->mMemberID.'/edit' );
	}
	
	private function save()
	{
		if( !isset( $_POST[ 'edit_member_info' ] ) )
			return;
			
		$this->mP = sanitize::filterInputs( 'POST', array( ':first' => FILTER_SANITIZE_STRING, ':last' => FILTER_SANITIZE_STRING, ':dob' => FILTER_SANITIZE_STRING, ':gender' => FILTER_SANITIZE_STRING, ':type' => FILTER_SANITIZE_STRING ) );
		
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		$this->mP[ ':mID' ] = $this->mMemberID;
		
		if( in_array( true, $this->mErrors ) )
			return;
			
		family::updateMember( $this->mP );
		
		helper::redirect( 'my-members/'.$this->mMemberID );
	}
}
?>