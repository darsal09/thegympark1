<?php
class paymentClass extends payment
{
	public $mClassID;	
	public $mOption;
	public $mClassInfo;
	public $_mRegisterID;
	
	public function __construct( $creditcard, $classID, $option, $register_who )
	{		
		$this->mClassID 	= $classID;
		$this->mClassInfo 	=  new classInfo( classModel::get( array( ':cID' => $classID ) ), $option );
		$this->mCreditcard 	= $creditcard;
		$this->mOption 		= $option;
		$this->mAmount 		= $this->mClassInfo->mAmount;
		
		$this->mDescription = $this->mClassInfo->mTitle.' on '.$this->mClassInfo->mWeekday.'s from '.date( 'g:ia', strtotime( $this->mClassInfo->mStartTime )  ).' to '.date( 'g:ia', strtotime( $this->mClassInfo->mEndTime ) ).' starting '.date( 'D. M. jS, Y', strtotime( $this->mClassInfo->mBegin ) ).' to '.date( 'D. M. jS, Y', strtotime( $this->mClassInfo->mEnd ) );		
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
		
		$this->send();
		
		$cID = $this->mClassInfo->add();

		
		$this->add( array( 'type' => 'Class', 'registerID' => $this->mClassID ) );
			
		return $cID;
	}
		
	public function hasErrors()
	{
		if( $this->creditCardErrors() || $this->classInfoErrors() || $this->mClassID < 1 || $this->mMemberID < 1 || $this->mUserID < 1 )
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
		$this->mClassInfo->setParameters( $mP );
	}
		
	public function classInfoErrors()
	{
		if( $this->mClassInfo->hasErrors() )
		{
			echo '<p class=error>Class Info Errors</p>';
			return true;
		}	
		return false;
	}
}
?>