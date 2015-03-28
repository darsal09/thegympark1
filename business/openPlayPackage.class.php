<?php
class openPlayPackage
{
	public $mPackageID;
	public $mOpenPlayID;
	public $mStudentID;
	public $mAmount;
	public $mPrice;
	public $mStatus;
	public $mStartDate;
	public $mEndDate;
	
	private $mID = 0;
	
	public $mErrors = array( 'packageID' => false, 'openPlayID' => false, 'studentID' => false, 'amount' => false, 'price' => false, 'status' => false );

	public function __construct( $mP = array() )
	{		
		if( isset( $mP[ 'id' ] ) )
			$this->mID = $mP[ 'id' ];
			
		if( isset( $mP[ 'startDate' ] ) )
			$this->mStartDate = $mP[ 'startDate' ];
		else
			$this->mStartDate = date( 'Y-m-d' );
			
		if( isset( $mP[ 'endDate' ] ) )
			$this->mEndDate = $mP[ 'endDate' ];

		if( isset( $mP[ 'packageID' ] ) )
			$this->setPackageID( $mP[ 'packageID' ] );
 
		if( isset( $mP[ 'openPlayID' ] ) )
			$this->setOpenPlayID( $mP[ 'openPlayID' ] );
 
		if( isset( $mP[ 'studentID' ] ) )
			$this->setStudentID( $mP[ 'studentID' ] );

		if( isset( $mP[ 'amount' ] ) )
			$this->setAmount( $mP[ 'amount' ] );
 
		if( isset( $mP[ 'price' ] ) )
			$this->setPrice( $mP[ 'price' ] );			
			
		if( isset( $mP[ 'status' ] ) )
			$this->setStatus( $mP[ 'status' ] );			
	}
 
	public function setPackageID( $packageID )
	{
		$this->mPackageID = $packageID;
	}
 
	public function setOpenPlayID( $openPlayID )
	{
		$this->mOpenPlayID = $openPlayID;
	}
 
	public function setStudentID( $studentID )
	{
		$this->mStudentID = $studentID;
	}

	public function setAmount( $amount )
	{
		$this->mAmount = $amount;
	}
 
	public function setPrice( $price )
	{
		$this->mPrice = $price;
	}

	public function setStatus( $status )
	{
		$this->mStatus = $status;
	}

	public function setID( $id )
	{
		$this->mID = $id;
	}
	
	public function getPackageID( )
	{
		return $this->mPackageID;
	}
 
	public function getOpenPlayID( )
	{
		return $this->mOpenPlayID;
	}
 
	public function getStudentID( )
	{
		return $this->mStudentID;
	}

	public function getAmount( )
	{
		return $this->mAmount;
	}
 
	public function getPrice( )
	{
		return $this->mPrice;
	}

	public function getStatus( )
	{
		return $this->mStatus;
	}
	
	public function getID()
	{
		return $this->mID;
	}
	
	public function getStartDate()
	{
		return $this->mStartDate;
	}

	public function getEndDate()
	{
		return $this->mEndDate;
	}
	
	public function getErrors()
	{
		return $this->mErrors;
	}
	
	public function hasErrors()
	{
		if( empty( $this->mPackageID ) )
			$this->mErrors[ 'packageID' ] = true;
			
		if( empty( $this->mStudentID ) )
			$this->mErrors[ 'studentID' ] = true;

		if( empty( $this->mAmount ) )
			$this->mErrors[ 'amount' ] = true;
			
		if( empty( $this->mPrice ) )
			$this->mErrors[ 'price' ] = true;

			
		return in_array( true, $this->mErrors );
	}
 
	public function addToStudent()
	{
		if( $this->hasErrors() )
			return array( 'status' => 'error', 'message' => 'There are errors' );
			
		$package = new Package( array( ':pOPID' => $this->getPackageID() ) );
		$option = $package->getOptions();
		$valid = $package->getValid();
		
		if( empty( $this->mEndDate ) )
			$this->mEndDate = date( 'Y-m-d', strtotime( "+$valid $option", strtotime( $this->mStartDate ) ) );
		
		$sql ='INSERT INTO
				openplay_students( student_id, openplay_id, package_id, amount, price, status, start, end )
				VALUES( :sID, :opID, :pID, :amount, :price, :status, :sdate, :edate )';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => array( ':sID' => $this->getStudentID(), 
																			':pID' => $this->getPackageID(), 
																			':opID' => $this->getOpenPlayID(), 
																			':amount' => $this->getAmount(), 
																			':price' => $this->getPrice(), 
																			':status' => $this->getStatus(),
																			':sdate' => $this->getStartDate(),
																			':edate' => $this->getEndDate() ) ) );
		
		$result = $pdo->execute();
		
		if( $result < 1 )
			return array( 'status' => 'error', 'message' => 'We could not save the package to the student' );
		
		return $this->mID = $pdo->getLastID();
	}
	
	public function updateStatus()
	{
		if( $this->getID() < 1 )
			return false;
			
		$sql = 'UPDATE openplay_students
				SET status = :status
				WHERE id = :id';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => array( ':id' => $this->getID(), ':status' => 'Register' ) ) );
		
		if( $pdo->execute() > 0 )
			return true;
			
		return false;
	}
}
?>