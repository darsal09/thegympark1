<?php 
class openPlayStudentsModel
{
	private function __construct()
	{
	
	}
	
	
	
	public static function get( $mP )
	{
		$sql = 'SELECT tf.*
				FROM openplay_students ops
				INNER JOIN tgp_family tf ON tf.id = ops.student_id
				WHERE ops.openplay_id = :opID
				GROUP BY tf.id
				ORDER BY tf.first, tf.last';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getPackage( $mP )
	{
		$sql = 'SELECT ops.*, tcp.title
				FROM openplay_students ops
				LEFT JOIN tgp_class_packages tcp ON tcp.id = ops.package_id
				WHERE ops.id = :id';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $mP ) );
		
		return $pdo->getRow();
	}
	
	public static function getPackageID( $mP )
	{
		$sql = 'SELECT package_id
				FROM openplay_students
				WHERE id = :id';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $mP ) );
		
		return $pdo->getOne();
	}
	
	public static function getNotIn( $mP )
	{
		$sql = 'SELECT tf.*
				FROM tgp_class_students tcs
				INNER JOIN tgp_family tf ON tf.id = tcs.student_id
				WHERE tcs.student_id NOT IN( SELECT student_id FROM openplay_students WHERE openplay_id = :opID )
				GROUP BY tf.id';
		
		return databaseHandler::getAll( $sql, $mP );
	}	
	
	public static function getNotInWithLetter( $mP )
	{
		$mP[ ':letter' ] = $mP[ ':letter' ].'%';
		
		$sql = 'SELECT tf.*
				FROM tgp_class_students tcs
				INNER JOIN tgp_family tf ON tf.id = tcs.student_id
				WHERE first LIKE :letter AND tf.id NOT IN ( SELECT student_id FROM openplay_students WHERE openplay_id = :opID )
				GROUP BY tf.id
				ORDER BY tf.first, tf.last';
				
		return databaseHandler::getAll( $sql, $mP );		
	}
	
	public static function exist( $mP )
	{
		$sql = 'SELECT id 
				FROM openplay_students
				WHERE student_id = :sID AND openplay_id = :opID';
		
		return databaseHandler::getOne( $sql, $mP );
	}
}
?>