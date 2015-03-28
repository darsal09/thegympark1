<?php
class employeesModel
{
	public function __construct()
	{
	
	}
	
	public static function get( )
	{
		$sql = 'SELECT tu.uEmail, tu.id, tf.first, tf.last
				FROM tgp_users tu
				LEFT JOIN tgp_family tf ON tf.user_id = tu.id
				WHERE tu.type = :type
				GROUP BY tu.id';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => array( ':type' => 'E' ) ) );
		
		return $pdo->getAll();
	}
}
?>