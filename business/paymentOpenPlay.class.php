<?php
class paymentOpenPlay extends payment
{
	public $mOpenPlayID;	
	public $mPackageID;
	public $mOpenPlay;
	public $mRegisterID;
	public $_mRegisterWho;
	
	public function __construct( $creditcard, $openPlayID, $packageID, $register_who )
	{		
		$this->mOpenPlayID 	= $openPlayID;
		$this->_mRegisterID = $this->mOpenPlayID;
		$this->mOpenPlay 	=  new OpenPlay( openPlayModel::get( array( ':opID' => $this->mOpenPlayID ) ) );
		$this->mPackage		= new Package( array( ':pOPID' => $packageID ) );
		$this->mCreditcard 	= $creditcard;
		$this->mAmount 		= $this->mPackage->getPrice();
		$this->mRegisterWho = $register_who;
		
		$season = $this->mOpenPlay->getSeason();
		
		$this->mDescription = $this->mOpenPlay->getTitle().' on '.$season->getTitle().' starting '.$season->getFormattedStartDate().' to '.$season->getFormattedEndDate();		
	}
		
	public function save()
	{
		if( $this->hasErrors() )
		{
			echo '<p class=error>Payment information has errors.<br/>';
			print_r( $this->getArray() );
			echo '</p>';
			return false;
		}
		
		//send payment to the authorize.net
		$this->send();
		
		//the registeredID needed to set  the parent consent, to know what the student is registered to
		$opcID = $this->mOpenPlay->addStudent( array( 'student_id' => $this->mMemberID, 'package_id' => $this->mPackage->getID(), 'register_who' => $this->mRegisterWho ) );
		
		if( $opcID < 1 )
			return 0;
		
		//add payment to the system
		$this->add( array( 'type' => 'Open Play', 'registerID' => $this->mOpenPlay->getID() ) );
		
		return $opcID;
	}
		
	public function hasErrors()
	{
		if( $this->creditCardErrors() || $this->mMemberID < 1 || $this->mUserID < 1 )
			return true;
			
		return false;
	}
	
	public function delete()
	{
		
	}
	
	public function getArray()
	{
		return array_merge( $this->mCreditcard->getArray(), $this->mClassInfo->getArray() );
	}
	
	public function setParameters( $mP )
	{			
		foreach( $mP AS $field => $value )
		{
			$name = 'm'.substr( $field, 1, strlen( $field ) );
			$this->{$name} = $value;
		}		
		
		$this->mCreditcard->setParameters( $mP );
	}		
}
?>