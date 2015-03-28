<?php

class parentConsent
{
	public $mStudentID;
	public $mRegisteredID;
	
	public $mType = 'Class';
	public $mStatus = 'Pending';
	
	
	public function __construct( $mP )
	{
		$this->mID = 0;
		
		$this->mStudentID = $mP[ 'student_id' ];
		$this->mRegisteredID = $mP[ 'registered_id' ];
		
		if( isset( $mP[ 'status' ] ) )
			$this->mStatus = $mP[ 'status' ];
			
		if( isset( $mP[ 'type' ] ) )
			$this->mType = $mP[ 'type' ];
			
		
	}
	
	public function add()
	{
		return $this->mID = ParentConsentModel::add( array( ':sID' => $this->mStudentID, ':rID' => $this->mRegisteredID, ':status' => $this->mStatus, ':type' => $this->mType ) );
	}
	
	public function sendEmail()
	{
		if( $this->mID > 0 && $this->mStatus = 'Pending' && helper::studentExist( array( ':sID' => $this->mStudentID ) ) )
		{
			$mP[ ':sID' ] = $this->mStudentID;
			$mP[ ':uID' ] = $this->mUserID;
			$mP[ ':email' ] = $email;
			$mP[ ':name' ] = $parent_name;
			$mP[ ':subject' ] = 'Parent Consent Needed for '.$name.'\'s participation';
			
			$mP[ ':message' ] = '<p>
							Dear Parent(s),<br/>
							Your child was recently enrolled in on our classes at the Gym Park. 
						</p>
						<p>
							In order for him/her to participate we need the parent consent, since s/he was registered by someone else beside 
							a parent or legal guardian.
						</p>
						<p>
							To give your consent of your child\'s registration. You can either log-in to our system to your account.
							Check your notices on the top of your account page and click on the parent consent link.
						</p>
						';
			
			emailModel::send( $mP );
		}
	}
	
}
?>