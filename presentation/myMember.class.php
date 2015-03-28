<?php
class myMember
{
	public $mMember;
	public $mClasses;
	public $mOpenPlays;
	
	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_my_member_id' ] ) )
			return;
		
		$this->mMemberID = sanitize::sani( $_GET[ 'tgp_my_member_id' ], 'INTIGER' );		
	}
	
	
	public function init()
	{
		$this->mMember = family::getMember( array( ':mID' => $this->mMemberID ) );
		$this->mType = array( 'Myself', 'Wife', 'Husband', 'Wife', 'Son', 'Daughter' );
		$this->mLinkToEdit = Link::Build( 'my-members/'.$this->mMemberID.'/edit' );
		$this->mLinkToMyAccount = Link::Build( 'logged-in' );
		
		$this->mClasses = myMemberModel::getClasses( array( ':sID' => $this->mMemberID ) );
		$this->mOpenPlays = myMemberModel::getOpenPlays( array( ':mID' => $this->mMemberID ) );
	}	
}
?>