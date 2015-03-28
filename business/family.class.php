<?php
class family
{
	private function __construct()
	{
	
	}
	
	public static function addMember( $mP )
	{
		$mID = self::memberExist( array( ':first' => $mP[ ':first' ], ':last' => $mP[ ':last' ], ':dob' => $mP[ ':dob' ], ':gender' => $mP[ ':gender' ], ':uID' => $mP[ ':uID' ] ) );
		
		if( $mID > 0 )
			return $mID;
			
		$sql = 'INSERT INTO
				tgp_family( user_id, first, last, dob, gender, type )
				VALUES( :uID, :first, :last, :dob, :gender, :type )';
		
		databaseHandler::Execute( $sql, $mP );
		
		return databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );
	}
	
	public static function addContact( $mP )
	{
		$sql = 'INSERT INTO 
				tgp_student_contact_info( student_id, cellPhone, homePhone, workPhone, email )
				VALUES( :sID, :cPhone, :hPhone, :wPhone, :email )';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function addEmergencyContact( $mP )
	{
		if( self::emergencyContactExist( array( ':uID' => $mP[ ':uID' ], ':sID' => $mP[ ':sID' ], ':relation' => $mP[ ':relation' ], ':name' => $mP[ ':name' ] ) ) )
			return;
			
		$sql = 'INSERT INTO
				tgp_emergency_contact( user_id, student_id, relation, name, cellPhone, modefied )
				VALUES( :uID, :sID, :relation, :name, :cellPhone, NOW() )';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function emergencyContactExist( $mP )
	{
		$sql = 'SELECT id
				FROM tgp_emergency_contact
				WHERE user_id = :uID AND student_id = :sID AND relation = :relation AND name = :name';
		
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
			
		return false;
	}
	
	public static function memberExist( $mP )
	{
		$sql = 'SELECT id 
				FROM tgp_family
				WHERE first = :first AND last = :last AND dob = :dob AND gender = :gender AND user_id = :uID';
		
		return databaseHandler::getOne( $sql, $mP );
	}
	
	public static function addMemberToClass( $mP )
	{
		if( classModel::hasStudent( array( ':cID' => $mP[ ':cID' ], ':sID' => $mP[ ':sID' ] ) ) )
			return;
			
		return classModel::addStudent( $mP );		
	}
	
	public static function addPayment( $mP )
	{		
		$sql = 'INSERT INTO
				tgp_class_payments ( user_id, student_id, class_id, card_id, payment, amount, authorize_results )
				VALUES( :uID, :sID, :classID, :cardID, :payment, :amount, :authorize_results )';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function getMember( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_family
				WHERE id = :mID';
		
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public static function getMembers()
	{
		$sql = 'SELECT *
				FROM tgp_family
				WHERE user_id = :uID';
		
		return databaseHandler::getAll( $sql, array( ':uID' => user::getId() ) );
	}
	
	public static function updateMember( $mP )
	{
		$sql = 'UPDATE tgp_family
				SET first = :first, last = :last, gender = :gender, dob = :dob, type = :type
				WHERE id = :mID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function registeredMembers()
	{		
		$sql = 'SELECT tf.*, tf.type AS relation, tc.*, ct.*, tcs.type AS types
				FROM tgp_family tf
				INNER JOIN tgp_class_students tcs ON tcs.student_id = tf.id
				INNER JOIN tgp_classes tc ON tc.class_id = tcs.class_id AND tc.season_id = :sID
				INNER JOIN class_titles ct ON ct.id = tc.title_id
				WHERE tf.user_id = :uID';
		
		return databaseHandler::getAll( $sql, array( ':uID' => user::getId(), ':sID' => seasonModel::getCurrentID() ) );
	}
}
?>