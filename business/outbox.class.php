<?php
class outbox
{
	private function __construct()
	{
	
	}
	
	public static function add( $mP )
	{
		if( !self::exist( array( ':email' => $mP[ ':to' ], ':subject' => $mP[ ':subject' ], ':message' => $mP[ ':message' ], ':sID' => $mP[ ':sID' ] ) ) )
			return procedureHandler::Execute( 'tgp_add_email_in_outbox', $mP );
	
	}
	
	public static function exist( $mP )
	{
		$sql = 'SELECT COUNT( * )
				FROM tgp_email_outbox
				WHERE email_to = :email AND subject = :subject AND message = :message AND participant_id = :sID';
			
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
				
		return false;
	}
	
	public static function send()
	{
		$Emails = outbox::get();
		$size  = sizeof( $Emails );
		
		for( $i = 0; $i < $size; $i++ )
		{
			
		}
	}
}
?>