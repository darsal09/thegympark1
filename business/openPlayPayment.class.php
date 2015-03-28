<?php
class openPlayPayment extends payment
{	
	public $mOpenPlayID;	
	public $mPackageID;
	public $_mRegisterID;
		
	public function __construct( $mP )
	{		
		$op 					= $mP[ 'openPlay' ];
		$p						= $mP[ 'package' ];
		
		$this->mCreditcard 		= $mP[ 'creditCard' ];
		
		$this->mMemberID 		= $mP[ 'memberID' ];
		$this->mUserID			= $mP[ 'userID' ];
		
		$this->mOpenPlayID 		= $op->getID();
		$this->_mRegisterID 	= $this->mOpenPlayID;
		
		$this->mPackageID 		= $p->getID();
		$this->mAmount 			= $p->getPrice();
		$season 				= $op->getSeason();
		
		$this->mDescription 	= $op->getTitle().' on '.$season->getTitle().' starting '.$season->getFormattedStartDate().' to '.$season->getFormattedEndDate();	
	}
		
	public function save()
	{
		if( $this->hasErrors() )
		{
			echo '<p class=error>Payment information has errors.</p>';
			return false;
		}
		
		//send payment to the authorize.net
		$this->send();
		
		//add payment to the system
		$this->add( array( 'type' => 'Open Play', 'registerID' => $this->mOpenPlayID ) );
		
		return $this->_mID;
	}
		
	public function hasErrors()
	{
		if(  $this->mMemberID < 1 || $this->mUserID < 1 )
			return true;
			
		return false;
	}
	
	public function delete()
	{
		
	}
	
	public function getArray()
	{
		return  $this->mCreditcard->getArray();
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