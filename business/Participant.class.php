<?php
include_once 'address.class.php';
include_once 'payment.class.php';

class Participant
{
	public $mName, $mDOB, $mGender;
	public $mAddress, $mPayment, $mRegistering;
	
	public function __construct( $mP )
	{
		if( is_array( $mP ) && !empty( $mP ) )
		{
			$this->setName( $mP[ 'name' ] );
			$this->setDOB( $mP[ 'dob' ] );
			$this->setGender( $mP[ 'gender' ]  ) ;
			$this->setAddress( $mP[ 'address' ] );
	//		$this->setPayment( $mP[ 'payment' ] );
	//		$this->setRegistering( $mP[ 'registering' ] );
		}
	}
	
	public function setName( $name )
	{
		$this->mName = $name;
	}
	
	public function setDOB( $dob )
	{
		$this->mDOB = $dob;
	}
	
	public function setGender( $gender )
	{
		$this->mGender = $gender;
	}
	
	public function setAddress( $address )
	{
		$this->mAddress = new address( $address );
	}
	
	public function setPayment( $payment )
	{
		$this->mPayment = new Payment( $payment );
	}
	
	public function setRegistering( $register )
	{
		$this->mRegistering = new Registering( $register );
	}
	
	public function save()
	{
		echo 'I am saving';
	}	
}
?>