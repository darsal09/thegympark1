<?php
class paymentCash
{
	public $mID;
	
	public $mAmount;
	public $mStudentID;
	public $mOpenPlayID;
	public $mOpenPlayStudentID;
	public $mType;
	public $mUserID;
	public $mErrors = array();

	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'amount' ] ) )
			$this->setAmount( $mP[ 'amount' ] );
 
		if( isset( $mP[ 'studentID' ] ) )
		{
			$this->setStudentID( $mP[ 'studentID' ] );
			
			if( isset( $mP[ 'userID' ] ) )
				$this->setUserID( $mP[ 'userID' ] );
			else
				$this->setUserID( user::getUserID( array( ':sID' => $this->getStudentID() ) ) );
		}
 
		if( isset( $mP[ 'openPlayID' ] ) )
			$this->setOpenPlayID( $mP[ 'openPlayID' ] );
 
		if( isset( $mP[ 'openPlayStudentID' ] ) )
			$this->setOpenPlayStudentID( $mP[ 'openPlayStudentID' ] );
 
		if( isset( $mP[ 'type' ] ) )
			$this->setType( $mP[ 'type' ] );
	
		
	}
 
	public function setAmount( $amount )
	{
		$this->mAmount = $amount;
	}
 
	public function setStudentID( $studentID )
	{
		$this->mStudentID = $studentID;
	}
 
	public function setOpenPlayID( $openPlayID )
	{
		$this->mOpenPlayID = $openPlayID;
	}
 
	public function setOpenPlayStudentID( $openPlayStudentID )
	{
		$this->mOpenPlayStudentID = $openPlayStudentID;
	}
 
	public function setType( $type )
	{
		$this->mType = $type;
	}
 
	public function setUserID( $userID )
	{
		$this->mUserID = $userID;
	}
 
	public function getAmount( )
	{
		return $this->mAmount;
	}
 
	public function getStudentID( )
	{
		return $this->mStudentID;
	}
 
	public function getOpenPlayID( )
	{
		return $this->mOpenPlayID;
	}
 
	public function getOpenPlayStudentID( )
	{
		return $this->mOpenPlayStudentID;
	}
 
	public function getType( )
	{
		return $this->mType;
	}
	
	public function getUserID()
	{
		return $this->mUserID;
	}
	
	public function hasErrors()
	{
		if( $this->mAmount < 1 )
			$this->mErrors[ 'amount' ] = true;
			
		if( empty( $this->mType ) )
			$this->mErrors[ 'type' ] = true;
			
		if( $this->mUserID < 1 )
			$this->mErrors[ 'userID' ] = true;
			
		if( $this->mStudentID < 1 )
			$this->mErrors[ 'studentID' ] = true;
			
		if( $this->mOpenPlayStudentID < 1 )
			$this->mErrors[ 'openPlayStudentID' ] = true;
			
		if( is_array( $this->mErrors ) && in_array( true, $this->mErrors ) )
			return true;
			
		return false;
	}
	public function getErrors()
	{
		return $this->mErrors;
	}
	
	public function exist()
	{
		$sql = 'SELECT COUNT( id )
				FROM tgp_class_payments
				WHERE student_id = :sID AND register_id = :rID AND type = :type';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 
										'parameter' => array( ':sID' => $this->getStudentID(),
																':rID' => $this->getOpenPlayStudentID(),
																':type' => $this->getType() ) ) );																
		$result =  intval( $pdo->getOne() );
		
		if( $result > 0 )
			return true;//it exist
			
		return false;
	}
	
	public function save()
	{
		if( $this->hasErrors() )
			return array( 'status' => 'errors', 'errors' => $this->getErrors(), 'message' => 'There were errors in the information you provided' );
			
		if( $this->exist() )
			return array( 'status' => 'exist', 'message' => 'payment already exist' );
			
		
		$sql = 'INSERT INTO
				tgp_class_payments( user_id, student_id, payment, register_id, amount, type )
				VALUES( :uID, :sID, :payment, :rID, :amount, :type )';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 
										'parameter' => array( ':uID' => $this->getUserID(), 
																':sID' => $this->getStudentID(), 
																':payment' => 'Cash', //is either cash, pending, declined, paid, the last three only apply to credit card
																':rID' => $this->getOpenPlayStudentID(), 
																':amount' => $this->getAmount(), 
																':type' => $this->getType() ) ) );
		
		if( $pdo->execute() > 0 )			
			return array( 'id' => $pdo->getLastID(), 'message' => 'payment was saved' );
		
		return array( 'id' => 0, 'message' => 'Could not save payment in the system' );
	}

}
?>