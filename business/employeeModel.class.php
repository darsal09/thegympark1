<?php
class employeeModel
{
	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'id' ] ) )
			$this->setParameters();
	}
	
	public static function get( $mP )
	{		
		$sql = 'SELECT *
				FROM tgp_users tu
				LEFT JOIN tgp_family tf ON tf.user_id = tu.id
				WHERE tu.id = :id
				GROUP BY tu.id';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $mP ) ); 
		
		return $pdo->getRow();
	}
	
	public function setParameters()
	{
	
	}
	
}
?>