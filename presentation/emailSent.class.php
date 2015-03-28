<?php
class emailSent
{
	public $mEmail = array();
	
	public $mStudentID;
	public $mEmailID;
	
	public $mLinkToParticipant;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_email_id' ] ) )
			$this->mEmailID = sanitize::sani( $_GET[ 'tgp_email_id' ], 'INTIGER' );
			
		if( isset( $_POST[ 'tgp_resend_email' ] ) )
			$this->reSendEmail();
	}
	
	public function init()
	{
		$this->mEmail = emails::getEmail( array( ':eID' => $this->mEmailID ) );
		$this->mSent = emails::sent( array( ':sID' => $this->mStudentID, ':eID' => $this->mEmailID ) );
		$this->mParticipant = student::getInfo( $this->mStudentID );
		
		$this->setDates();
		$this->mLinkToParticipant = Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent' );
	}
	
	private function reSendEmail()
	{
		if( !isset( $_POST[ 'tgp_resend_email' ] ) )
			return;
			
		emails::reSendEmail( array( ':sID' => $this->mStudentID, ':eID' => $this->mEmailID ) );
		
		header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&tgp_email_id='.$this->mEmailID.'&action=emailSent' ) );
		exit;
	}
	
	private function setDates()
	{
		$S = &$this->mSent;
		$size = sizeof( $S );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$S[ $i ][ 'sentOn' ] = date( 'M. jS, Y g:ia', strtotime( $S[ $i ][ 'sentOn' ] ) );
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>