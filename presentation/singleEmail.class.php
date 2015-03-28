<?php
class singleEmail
{
	public $mP = array( ':sID' => '', ':subject' => '', ':message' => '' );
	public $mErrors = array( ':sID' => false, ':subject' => false, ':message' => false );
	
	public $mLinkToParticipant;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_student_id' ] ) )
			$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );	
		
		if( isset( $_POST[ 'tgp_email_send' ] ) )
			$this->sendEmail();
	}
	
	public function init()
	{
		$this->mStudentInfo = student::getInfo( $this->mStudentID );
		
		$this->mLinkToParticipant = Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent' );
	}
	
	private function sendEmail()
	{
		if( !isset( $_POST[ 'tgp_email_send' ] ) )
			return;
			
		$sInfo = student::getInfo( $this->mStudentID );

		$this->mP[ ':sID' ] 	= $this->mStudentID;
		$this->mP[ ':name' ] 	= $sInfo[ 'first' ].' '.$sInfo[ 'last' ];
		
		$this->mP[ ':email' ] 	= $sInfo[ 'email' ];
		
		if( empty( $sInfo[ 'email' ] ) )
			$this->mP[ ':email' ] = $sInfo[ 'parent_email' ];		
		
		$this->mP[ ':subject' ] = sanitize::sani( $_POST[ 'tgp_email_subject' ], 'STRING' );
		$this->mP[ ':message' ] = sanitize::sani( $_POST[ 'tgp_email_message' ], 'STRING' );
				
		if( emails::sendSingle( $this->mP ) )
		{
			if( isset( $sInfo[ 'parent_email2' ] ) )
			{
				$this->mP[ ':email' ] = $sInfo[ 'parent_email2' ];
				
				emails::sendSingle( $this->mP );
				
			}
			
			header( 'Location:'.Link::Build( 'index.php?tgp_student_id='.$this->mStudentID.'&action=viewStudent' ) );
			exit;
		}
		

	}
	
	
	public function __destruct()
	{
	
	}
}
?>