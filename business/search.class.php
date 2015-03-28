<?php
class search
{
	public $mFirst;
	public $mLast;

	public function __construct( $mP = array() )
	{ 
		if( isset( $mP[ 'first' ] ) )
			$this->setFirst( $mP[ 'first' ] );
 
		if( isset( $mP[ 'last' ] ) )
			$this->setLast( $mP[ 'last' ] );
 
		if( isset( $mP[ 'openplay_id' ] ) )
			$this->setOpenPlayID( $mP[ 'openplay_id' ] );
	}
  
	public function setFirst( $first )
	{
		$this->mFirst = $first;
	}
 
	public function setLast( $last )
	{
		$this->mLast = $last;
	}
 
	public function setOpenPlayID( $id )
	{
		$this->mOpenPlayID = $id;
	}
 
	public function getTableName( )
	{
		return $this->mTableName;
	}
 
	public function getFirst( )
	{
		return $this->mFirst;
	}
 
	public function getLast( )
	{
		return $this->mLast;
	}
 
	public function getOpenPlayID()
	{
		return $this->mOpenPlayID;
	}
	
	public function participants()
	{
		
		$sql = 'SELECT kids.*, ops.amount, COALESCE( ops_used.used, 0 ) AS used, COALESCE( amount - used, 0 ) AS leftPackages
				FROM ( SELECT *
						FROM ( ( SELECT tf.*
								FROM openplay_students os
								LEFT JOIN tgp_family tf ON tf.id = os.student_id 
								WHERE end >= :cDate
								)
								UNION DISTINCT							
								( SELECT tf.*
									FROM tgp_class_students cs
									LEFT JOIN tgp_family tf ON tf.id = cs.student_id
								) 
								UNION DISTINCT
								(
									SELECT *
									FROM tgp_family
								)
								
							) participants
						WHERE first like :first AND last like :last
						GROUP BY id ) kids
				LEFT JOIN openplay_students ops ON ops.student_id = kids.id
				LEFT JOIN ( SELECT student_id, COUNT( * ) AS used
						FROM openplay_attendance
						WHERE openplay_id = :opID
						GROUP BY student_id ) ops_used ON ops_used.student_id = kids.id
				GROUP BY kids.id
				ORDER BY kids.first, kids.last, kids.dob';
				
		$date = new date();
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 
										'parameter' => array( ':first' => '%'.$this->getFirst().'%', 
																':last' => '%'.$this->getLast().'%', 
																':opID' => $this->getOpenPlayID(),
																':cDate' => $date->getCurrent() ) ) );
		return $pdo->getAll();
	}
	
	public function participantByFirstName()
	{
		$sql = 'SELECT kids.*, ops.amount, COALESCE( ops_used.used, 0 ) AS used, COALESCE( amount - used, 0 ) AS leftPackages
				FROM ( SELECT *
						FROM ( ( SELECT tf.*
								FROM openplay_students os
								LEFT JOIN tgp_family tf ON tf.id = os.student_id 
								)
								UNION DISTINCT							
								( SELECT tf.*
								FROM tgp_class_students cs
								LEFT JOIN tgp_family tf ON tf.id = cs.student_id
								) 
							) participants
						WHERE first like :first
						GROUP BY id ) kids
				LEFT JOIN openplay_students ops ON ops.student_id = kids.id
				LEFT JOIN ( SELECT student_id, COUNT( * ) AS used
						FROM openplay_attendance
						WHERE openplay_id = :opID
						GROUP BY student_id ) ops_used ON ops_used.student_id = kids.id
				GROUP BY kids.id
				ORDER BY kids.first, kids.last, kids.dob';
				
		return databaseHandler::getAll( $sql, array( ':first' => '%'.$this->getFirst().'%', ':opID' => $this->getOpenPlayID() ) );	
	}
	
	public function participantByLastName()
	{
	
	}
	
}
?>