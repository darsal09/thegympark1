<?php

/*
	This class is original class that gets extended to do the payments

*/


abstract class payment
{
	public $mCreditcard;	
	public $mMemberID;
	public $mUserID;
	public $mResult;
	public $mRequest;
	
	protected $_mID;
	
	
	
	public function add( $mP )
	{
		if( !isset( $this->mResult ) || empty( $this->mResult ) )
			return false;
			
		$payment = 'Pending';
		
		if( $this->mResult == 1 )
			$payment = 'Paid';
			
		$this->_mID = paymentModel::add( array( ':uID' => $this->mUserID, ':mID' => $this->mMemberID, ':payment' => $payment, ':amount' => $this->mAmount, ':registerID' => $mP[ 'registerID' ], ':result' => $this->mRequest->getResultString(), ':cardID' => $this->mCreditcard->getId(), ':type' => $mP[ 'type' ] ) );
	}
		
	public function update()
	{
		if( $this->_mID < 1 )
			return false;
			
		paymentModel::update( $this->getArray() );
	}
	
	abstract public function getArray();
	
	public function delete()
	{
		
	}

	/*
	* public function 
	* this function sends the charge to be made for a participant registering to the gym park
	* It returns the result 
	*/
	public function send()
	{
		$mP = $this->mCreditcard->getArray();
		
		list( $first_name, $last_name ) = explode( " ", $mP[ ':name' ] );
			
		$this->mRequest = new authorizeModel( array( 'x_invoice_num' => 'CL-'.date( 'Ymd' ).'-'.$this->_mRegisterID,
										'x_amount' 			=> $this->mAmount,
										"x_description"		=> $this->mDescription, 
										"x_card_num"		=> $mP[ ':number' ],
										"x_exp_date"		=> $mP[ ':expire_date' ],
										"x_card_code"		=> $mP[ ':card_code' ],
										"x_first_name"		=> $first_name,
										"x_last_name"		=> $last_name,
										"x_address"			=> $mP[ ':street' ],
										"x_city" 			=> $mP[ ':city' ],
										"x_state"			=> $mP[ ':state' ],
										"x_zip"				=> $mP[ ':zip' ]
									) );
									
		$this->mResult = $this->mRequest->getResult();
		
		return $this->mResult;
	}
		
	public function creditCardErrors()
	{
		if( empty( $this->mCreditcard->mName ) || empty( $this->mCreditcard->mNumber ) || empty( $this->mCreditcard->mType ) || empty( $this->mCreditcard->mExpire ) || empty( $this->mCreditcard->mCode ) || $this->mCreditcard->mAddress->hasErrors() )
			return true;
			
		return false;
	}
	
	public function getID()
	{
		return $this->_mID;
	}
}
?>