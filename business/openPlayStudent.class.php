<?php
class openPlayStudent
{
	public $mStudentID;
	public $mOpenPlayID;
	public $mAmount;
	public $mPrice;
	public $mStatus;
	
	private $mID;
	
	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'id' ] ) )
			$this->setID( $mP[ 'id' ] );
		else
		{
			$this->mErrors = array( 'student_id' => false, 'open_play_id' => false );
			
			if( isset( $mP[ ':sID' ] ) )
				$this->setStudent( $mP[ ':sID' ] );
				
			if( isset( $mP[ ':opID' ] ) )
				$this->setOpenPlay( $mP[ ':opID' ] );
		}
	}
	
	public function setID( $id )
	{
		$this->mID = $id;
	}
	
	public function setStudent( $sID )
	{
		$this->mStudentID = $sID;
	}
	
	public function setOpenPlay( $opID )
	{
		$this->mOpenPlayID = $opID;
	}
	
	private function hasErrors()
	{
		
		if( !studentModel::exist( array( ':sID' => $this->mStudentID ) ) )
			$this->mErrors[ 'student_id' ] = true;
			
		if( !openPlayModel::exist( array( ':opID' => $this->mOpenPlayID ) ) )
			$this->mErrors[ 'open_play_id' ] = true;
		
		return in_array( true, $this->mErrors );
	}
	
	public function save()
	{
		if( $this->hasErrors() )
			return false;
			
		try
		{
			$result = openPlayStudentModel( array( ':sID' => $this->mStudentID, ':opID' => $this->mOpenPlayID ) );
		}
		catch( Exception $e )
		{
			echo 'Could not save'.$e->getMessage().'<br>';
		}
		
		return true;
	}
	
	public function exist()
	{
		$opsID = openPlayStudentsModel::exist( array( ':opID' => $this->mOpenPlayID, ':sID' => $this->mStudentID ) );
		
		if( $opsID > 0 )
			return true;
			
		return false;
	}
	
	public function remove()
	{
		if( $this->mID < 1 )
			return false;
			
		$sql = 'DELETE FROM
				openplay_students
				WHERE id = :id';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => array( ':id' => $this->mID ) ) );
		
		if( $pdo->execute() > 0 )
			return true;
			
		return false;
	}
}
?>