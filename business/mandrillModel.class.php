<?php
class mandrillModel
{
	private function __construct()
	{
	
	}
	
	public static function getAPIKey( $title = '' )
	{
		if( empty( $title ) )
			return 'Ksr_1pHrhHho8HdBjJp5Zg';
			
		$sql = 'SELECT * 
				FROM api_keys
				WHERE title = :title';
		
		return databaseHandler::getRow( $sql, array( ':title' => $title ) );
	}
}
?>