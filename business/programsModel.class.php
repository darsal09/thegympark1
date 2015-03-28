<?php
class programsModel
{
	private function __construct()
	{
	
	}
	
	public static function get()
	{
		$sql = 'SELECT * 
				FROM tgp_programs
				ORDER BY title';
		
		$pdo = new PDOHandler( array( 'sql' => $sql ) );
		
		return $pdo->getAll();
	}
}
?>