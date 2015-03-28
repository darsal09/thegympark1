<?php
class familyMember
{
	private function __construct()
	{
	
	}
	
	public static function addAdultContactInfo( $mP )
	{
		
		$sql = 'INSERT INTO
				tgp_student_contact_info( homePhone, workPhone, cellPhone, email, student_id)
				VALUES( :homePhone, :workPhone, :cellPhone, :email, :mID )';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function changeEmergencyContactInfo( $mP )
	{
		$sql = 'UPDATE tgp_emergency_contact
				SET type = :type
				WHERE student_id = :mID AND id = :eID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function addEmergencyContactInfo( $mP )
	{
		$eID = self::exist( $mP );
		
		if( $eID > 0 )
			return $eID;
		
		$sql = 'INSERT INTO
				tgp_emergency_contact( name, relation, cellPhone, student_id, user_id )
				VALUES( :emergency_name, :emergency_relation, :emergency_phone, :mID, :uID )';
		
		return databaseHandler::Execute( $sql, $mP );
	}

	public static function exist( $mP )
	{
		$sql = 'SELECT id 
				FROM tgp_emergency_contact
				WHERE name = :emergency_name AND relation = :emergency_relation AND cellPhone = :emergency_phone AND student_id = :mID AND user_id = :uID';
		
		return databaseHandler::getOne( $sql, $mP );
	}
	
	public static function get( $mP )
	{
		
	}
	
	public static function getContactInfo(  $mP )
	{
		$sql = 'SELECT *
				FROM tgp_student_contact_info
				WHERE student_id = :mID';
		
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public static function getEmergencyInfo( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_emergency_contact
				WHERE student_id = :mID';
				
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function updateAdultContactInfo( $mP )
	{
//		$R = helper::getFields( $mP );
		
		$sql = 'UPDATE tgp_student_contact_info
				SET cellPhone = :cellPhone, workPhone = :workPhone, homePhone = :homePhone, email = :email
				WHERE student_id = :mID AND id = :contact_info_id';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function addCaregiver( $mP )
	{
		return caregiverModel::add( $mP );
	}	
}
?>