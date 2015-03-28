<?php

/*
 This class helps doing transactions for authorize.net
*/

class authorizeModel
{
	private $_mUrl;
	private $_mRequest;
	private $_mResults;
	private $_mResultArray;
	
	public function __construct( $r )
	{
		$this->_mUrl = AUTHORIZE_DOT_NET_URL;
		
		$this->setRequest( $r );
		
		$this->getResponse();
	}
	
	public function setRequest( $r )
	{
		$this->_mRequest = '';
		
		$request_init = array( 'x_login' 			=> AUTHORIZE_DOT_NET_LOGIN_ID,
								'x_tran_key' 		=> AUTHORIZE_DOT_NET_TRANSACTION_KEY,
								'x_version' 		=> '3.1',
								'x_test_request' 	=> AUTHORIZE_DOT_NET_TEST_REQUEST,
								'x_delim_data' 		=> 'TRUE',
								'x_delim_char' 		=> '|',
								'x_type'			=> 'AUTH_CAPTURE',
								'x_method'			=> 'CC',								
								'x_relay_response' => 'FALSE' );
								
		$request = array_merge( $request_init, $r );
		
		foreach( $request AS $key => $value )
			$this->_mRequest .= $key.'='.urlencode( $value ).'&';
			
		$this->_mRequest = rtrim( $this->_mRequest, '& ' );
	}
	
	public function getResponse()
	{
		if( empty( $this->_mRequest ) )
		{
			echo '<p class=error>You need to send a request</p>';
			return array();
		}
		
		$ch = curl_init();
		
		//use http post request
		curl_setopt( $ch, CURLOPT_POST, 1 );
		
		//set the posts parameters to be sent
		curl_setopt( $ch, CURLOPT_POSTFIELDS, $this->_mRequest );
		
		//set the address where we want to send it to
		curl_setopt( $ch, CURLOPT_URL, $this->_mUrl );
		
		//don't verify the host
		curl_setopt( $ch, CURLOPT_SSL_VERIFYHOST, 0 );
		
		//don't verify the peers certificate either
		curl_setopt( $ch, CURLOPT_SSL_VERIFYPEER, 0 );
		
		//return a transfer instead of printing it
		curl_setopt( $ch, CURLOPT_RETURNTRANSFER, 1 );
		
		$this->_mResults = curl_exec( $ch );
		$this->_mResultArray = explode( '|', $this->_mResults );
		curl_close( $ch );		
	}
	
	public function isApproved()
	{
		if( empty( $this->_mResults ) )
			$this->getResponse();
			
		if( $this->mResultArray[ 0 ] == 1 )
			return true;
			
		return false;
	}
	
	public function isDeclined()
	{			
		if( $this->_mResultArray[ 0 ] == 2 )
			return true;
		
		return false;
	}
	
	public function whyDeclined()
	{
		if( !$this->isDeclined() )
			return;
		
		if( $this->_mResultArray[ 2 ] != 4 )
			return;
			
		return 'The card used needs to be picked up.';
	}
	
	
	public function hasErrors( )
	{
		if( $this->_mResultArray[ 0 ] == 3 )
			return true;
			
		return false;
	}
	
	public function showErrors()
	{
		if( !$this->hasErrors() )
			return;
			
		$eOptions = array( 5 => 'A valid amount is required.', 6 => 'The credit card number is invalid.', 7 => 'The credit card expiration date is invalid.', 
							8 => 'The credit card has expired.', 9 => 'The ABA code is invalid.', 10 => 'The account number is invalid.', 11 => 'A duplicate transaction has been submitted.', 
							12 => 'An authorization code is required but not present.', 13 => 'The merchant API Login ID is invalid or the account is inactive.', 
							14 => 'The Referrer or Relay Response URL is invalid', 15 => 'The transaction ID is invalid.', 16 => 'The transaction was not found.', 
							17 => 'The merchant does not accept this type of credit card.', 18 => 'ACH transactions are not accepted by this merchant. The merchant does not accept electronic checks.', 
							19 => 'An error occurred during processing. Please try again in 5 minutes.', 20 => 'An error occurred during processing. Please try again in 5 minutes.', 
							21 => 'An error occurred during processing. Please try again in 5 minutes.', 22 => 'An error occurred during processing. Please try again in 5 minutes.', 
							23 => 'An error occurred during processing. Please try again in 5 minutes.', 24 => ' The Nova Bank Number or Terminal ID is incorrect. Call Merchant Service Provider',
							25 => 'An error occurred during processing. Please try again in 5 minutes.', 26 => 'An error occurred during processing. Please try again in 5 minutes.',
							27 => '');
	}
	
	public function getResultString()
	{			
		return $this->_mResults;
	}
	
	public function getResult()
	{
		return $this->_mResultArray[ 0 ];
	}
	
	public function getResultArray()
	{
		return $this->_mResultArray;
	}
	
	/*
		This function the address verification part of the credit card.
		The array is the possible responses you can get. The response we want is Y
	*/
	public function AVSResults()
	{			
		$pResults = array( 'A' => 'Address (Street) matches, ZIP does not',
						'B' => 'Address information not provided for AVS check',
						'E' => 'AVS error',
						'G' => 'Non-U.S. Card Issuing Bank',
						'N' => 'No Match on Address (Street) or ZIP',
						'P' => 'AVS not applicable for this transaction',
						'R' => 'Retry—System unavailable or timed out',
						'S' => 'Service not supported by issuer',
						'U' => 'Address information is unavailable',
						'W' => 'Nine digit ZIP matches, Address (Street) does not',
						'X' => 'Address (Street) and nine digit ZIP match',
						'Y' => 'Address (Street) and five digit ZIP match',
						'Z' => 'Five digit ZIP matches, Address (Street) does not' );
						
		return $pResults[ $this->_mResultArray[ 5 ] ];
	}
	
	public function getAuthorizationCode()
	{
		return $this->_mResultArray[ 4 ];
	}
}
?>