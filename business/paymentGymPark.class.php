<?php
class paymentGymPark
{
	public $mOpenPlayStudentID;
	public $mStudentID;
	public $mPrice;
	public $mDiscount;
	public $mTotalDue;
	public $mTotalPayment;
	public $mType;
	public $mReceipt;
	public $mNote;
	public $mReasonCode;
	public $mRegistrationType;

	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'openPlayStudentID' ] ) )
			$this->setOpenPlayStudentID( $mP[ 'openPlayStudentID' ] );
 
		if( isset( $mP[ 'studentID' ] ) )
			$this->setStudentID( $mP[ 'studentID' ] );
 
		if( isset( $mP[ 'price' ] ) )
			$this->setPrice( $mP[ 'price' ] );
 
		if( isset( $mP[ 'discount' ] ) )
			$this->setDiscount( $mP[ 'discount' ] );
 
		if( isset( $mP[ 'totalDue' ] ) )
			$this->setTotalDue( $mP[ 'totalDue' ] );
 
		if( isset( $mP[ 'totalPayment' ] ) )
			$this->setTotalPayment( $mP[ 'totalPayment' ] );

		if( isset( $mP[ 'type' ] ) )
			$this->setType( $mP[ 'type' ] );
			
		if( isset( $mP[ 'receipt' ] ) )
			$this->setReceipt( $mP[ 'receipt' ] );
 
		if( isset( $mP[ 'note' ] ) )
			$this->setNote( $mP[ 'note' ] );
 
		if( isset( $mP[ 'reasonCode' ] ) )
			$this->setReasonCode( $mP[ 'reasonCode' ] );
 
		if( isset( $mP[ 'registrationType' ] ) )
			$this->setRegistrationType( $mP[ 'registrationType' ] );
	}
 
	public function setOpenPlayStudentID( $openPlayStudentID )
	{
		$this->mOpenPlayStudentID = $openPlayStudentID;
	}
	
	public function setStudentID( $studentID )
	{
		$this->mStudentID = $studentID;
	}
 
	public function setPrice( $price )
	{
		$this->mPrice = $price;
	}
 
	public function setDiscount( $discount )
	{
		$this->mDiscount = $discount;
	}
 
	public function setTotalDue( $totalDue )
	{
		$this->mTotalDue = $totalDue;
	}
 
	public function setTotalPayment( $totalPayment )
	{
		$this->mTotalPayment = $totalPayment;
	}

	public function setType( $type )
	{
		$this->mType = $type;
	}
	
	public function setReceipt( $receipt )
	{
		$this->mReceipt = $receipt;
	}
 
	public function setNote( $note )
	{
		$this->mNote = $note;
	}
 
	public function setReasonCode( $reasonCode )
	{
		$this->mReasonCode = $reasonCode;
	}
 
	public function setRegistrationType( $rtype )
	{
		$this->mRegistrationType = $rtype;
	}
	
	public function getOpenPlayStudentID( )
	{
		return $this->mOpenPlayStudentID;
	}
	
	public function getStudentID( )
	{
		return $this->mStudentID;
	}
 
	public function getPrice( )
	{
		return $this->mPrice;
	}
 
	public function getDiscount( )
	{
		return $this->mDiscount;
	}
 
	public function getTotalDue( )
	{
		return $this->mTotalDue;
	}
 
	public function getTotalPayment( )
	{
		return $this->mTotalPayment;
	}

	public function getType( )
	{
		return $this->mType;
	}
	
	public function getReceipt( )
	{
		return $this->mReceipt;
	}
 
	public function getNote( )
	{
		return $this->mNote;
	}
 
	public function getReasonCode( )
	{
		return $this->mReasonCode;
	}

	public function getRegistrationType( )
	{
		return $this->mRegistrationType;
	}
	
	public function save()
	{
		$sql = 'INSERT INTO 
				payments( openplay_student_id, student_id, price, discount, total_due, total_payment, receipt,  note, reason_code, payment_type, registration_type )
				VALUES( :opStudentID, :sID, :price, :discount, :totalDue, :totalPayment, :receipt, :note, :reasonCode, :paymentType, :rType )';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => array( ':opStudentID' 	=> $this->getOpenPlayStudentID(), 
																			':sID'			=> $this->getStudentID(),
																			':price' 		=> $this->getPrice(), 
																			':discount' 	=> $this->getDiscount(),
																			':totalDue' 	=> $this->getTotalDue(),
																			':totalPayment' => $this->getTotalPayment(),
																			':receipt' 		=> $this->getReceipt(),
																			':note' 		=> $this->getNote(),
																			':reasonCode' 	=> $this->getReasonCode(),
																			':paymentType' 	=> $this->getType(),
																			':rType' 		=> $this->getRegistrationType() ) ) );
																			
		if( $pdo->execute() > 0 )
		{
			$this->mID = $pdo->getLastID();
			
			return array( 'payment' => true, 'status' => 'succes', 'id' => $this->getOpenPlayStudentID(), 'message' => 'Information was saved' );
		}
		
		return array( 'payment' => false, 'status' => 'error', 'id' => 0, 'message' => 'We could not save the information in the system' );
		
	}

}
?>