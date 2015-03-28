<?php

class student
{
	public static function addCaregiver( $mP )
	{	
		if( !is_array( $mP ) )
			return 0;
			
		return procedureHandler::Execute( 'tgp_student_add_caregiver', $mP );
	}
	
	public static function addSchool( $mP )
	{		
		if( !is_array( $mP ) )
			return 0;
					
		return procedureHandler::Execute( 'tgp_student_add_school', $mP );
	}
	
	public static function addContactInfo( $mP )
	{		
		if( !is_array( $mP ) )
			return 0;
			
		return procedureHandler::Execute( 'tgp_student_add_contact_info', $mP );
	}

	public static function addAddress( $mP )
	{
		if( !is_array( $mP ) )
			return -1;
		
		$sql = 'INSERT INTO 
				tgp_address( student_id, street, city, state, zip )
				VALUES( :sID, :street, :city, :state, :zip )';
						
		return databaseHandler::Execute( $sql, $mP );
	}

	public static function addEmergencyInfo( $mP )
	{
		if( !is_array( $mP ) )
		{
			echo '<p class=error>This function needs an array as a parameter</p>';
			return -1;
		}
			
		$sql = 'INSERT INTO 
				tgp_emergency_contact( student_id, name, relation, homePhone, cellPhone, workPhone )
				VALUES( :sID, :eName, :eRelation, :ehPhone, :ecPhone, :ewPhone )';
						
		return databaseHandler::Execute( $sql, $mP );
	}

	public static function addParent( $mP )
	{
		if( !is_array( $mP ) )
		{
			echo '<p class=error>You need to pass an array format variable!</p>';			
			return -1;
		}
			
		return procedureHandler::Execute( 'tgp_student_add_parent', $mP );
	}
	
	public static function exist( $mP )
	{
		$result = self::get( $mP );
		
		if( is_array( $result ) && !empty( $result ) )
			return true;
			
		return false;
	}
	
	public static function get( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_family
				WHERE id = :sID';
		
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public static function getID( $mP )
	{
		if( !is_array( $mP ) )
			return;
			
		$sql = 'SELECT ts.id
				FROM tgp_students ts
				INNER JOIN tgp_student_contact_info tsci ON tsci.student_id = ts.id
				WHERE ts.first = :first AND ts.last = :last AND tsci.email = :email';
		
		return databaseHandler::getOne( $sql, $mP );
	}
	
	public static function getInfo( $sID )
	{
		if( intval( $sID ) < 1 )
			return 0;
			
		$info = procedureHandler::getAll( 'tgp_student_get_info', array( ':sID' => $sID ) );
		
		if( sizeof( $info ) == 1 )
			return array( 'id' => $info[ 0 ][ 'id' ], 'first' =>  $info[ 0 ][ 'first' ], 'M' => $info[ 0 ][ 'M' ], 'last' => $info[ 0 ][ 'last' ], 'email' => $info[ 0 ][ 'email' ], 'parent_email' => $info[ 0 ][ 'parent_email' ] );
		else if( sizeof( $info ) == 2 )
		{
			$p = array( 'id' => $info[ 0 ][ 'id' ], 'first' => $info[ 0 ][ 'first' ], 'M' => $info[ 0 ][ 'M' ], 'last' => $info[ 0 ][ 'last' ], 'email' => $info[ 0 ][ 'email' ] );
			
			if( !empty( $info[ 0 ][ 'parent_email' ] ) )
			{
				$p[ 'parent_email' ] = $info[ 0 ][ 'parent_email' ];
				$p[ 'parent_email2' ] = $info[ 1 ][ 'parent_email' ];
			}
			else
				$p[ 'parent_email' ] = $info[ 1 ][ 'parent_email' ];
			
			return $p;
		}
		
		return 0;
	}
	
	public static function getAttedance( $sID )
	{
		if( intval( $sID ) < 1 )
			return 0;
			
		return procedureHandler::getAll( 'tgp_get_student_attendance( :sID )', array( ':sID' => $sID ) );
	}
	
	public static function addAttendance( $sID, $cID )
	{
		if( intval( $sID ) < 1 || intval( $cID ) < 1 )
			return 0;

		return procedureHandler::Execute( 'tgp_add_student_class_attendance', array( ':sID' => $sID, ':cID' => $cID ) );
	}
	
	public static function addToClass( $mP )
	{
		if( !is_array( $mP ) )
			return -2;
		
		if( self::classExist( array( ':sID' => $mP[ ':sID' ], ':cID' => $mP[ ':cID' ] ) )  )
			return -1;
					
		$sql = 'INSERT INTO
				tgp_class_students( class_id, student_id, start, end, type, price )
				VALUES( :cID, :sID, :sDate, :eDate, :type, :price )';
		
		return databaseHandler::Execute( $sql, $mP );
		
		//return procedureHandler::Execute( 'tgp_add_student_class', array( ':sID' => $sID, ':cID' => $cID ) );
	}
	
	public static function classExist( $mP )
	{
		$sql = 'SELECT id
				FROM tgp_class_students
				WHERE student_id = :sID AND class_id = :cID';
		
		$result = databaseHandler::getOne( $sql, $mP );
		
		if( $result < 1 )
			return false;
			
		return true;
	}
	
	
	public static function getClass( $mP )
	{
		$sql = 'SELECT tcs.type, tc.*
				FROM tgp_class_students tcs
				INNER JOIN tgp_classes tc ON tc.id = tcs.class_id
				WHERE tcs.class_id = :cID AND tcs.student_id = :sID';
		
		$row = databaseHandler::getRow( $sql, $mP );
		
		if( !is_array( $row ) )
		{
			echo '<p class=error>The participant is not registered to this class or this class does not exist</p>';
			return;
		}
		
		switch( $row[ 'type' ] ) 
		{
			case 'First':
				$begin = date( '', strotime( $row[ 'start_date' ] ) );
				$end = date( '', strtotime( '+8 weeks', strotime( $row[ 'start_date' ] ) ) );
				break;
			
			case 'Last':
				$begin = date( '', strtotime( '+9 weeks', strtotime( $row[ 'start_date' ] ) ) );
				$end = date( '', strtotime( $row[ 'end_date' ] ) );
				break;
				
			default:
				$begin = date( '', strtotime( $row[ 'start_date'  ] ) );
				$end = date( '', strtotime( $row[ 'end_date' ] ) );
		}
		
		return array( 'title' => $row[ 'title' ], 'start_time' => date( 'g:ia', strtotime( $row[ 'start_time' ] ) ), 'end_time' => date( 'g:ia', strtotime( $row[ 'end_time' ] ) ), 'begin' => $begin, 'end' => $end, 'weekday' => $row[ 'weekday' ] );
	}
	
	public static function getClasses( $mP )
	{
		if( !is_array( $mP ) )
			return;
			
		$sql = 'SELECT class_id
				FROM tgp_class_students
				WHERE student_id = :sID
				ORDER BY addedOn DESC';
				
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getClassAttendance( $mP )
	{
		if( !is_array( $mP ) )
			return;
			
		$sql = 'SELECT * 
				FROM class_attendance
				WHERE student_id = :sID AND class_id = :cID
				ORDER BY dateAttended';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getEmails( $mP )
	{
		$sql = 'SELECT te.*, tes.sentON AS sent
				FROM tgp_email_sent tes
				INNER JOIN tgp_emails te ON te.id = tes.email_id
				WHERE tes.participant_id = :sID
				ORDER BY tes.sentOn DESC';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	
	
	public static function getMembership( $mP )
	{
		$sql = 'SELECT *
				FROM tgp_user_memberships tum
				INNER JOIN tgp_memberships tm ON tm.id = tum.membership_id
				WHERE user_id = :sID';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getOpenPlays( $mP )
	{
		$sql = 'SELECT os.*, tcs.season, tcs.year
				FROM openplay_students os
				INNER JOIN openplays op ON op.id = os.openplay_id
				INNER JOIN tgp_class_season tcs ON tcs.id = op.season_id
				WHERE os.student_id = :sID
				ORDER BY tcs.start_date';
				
		return databaseHandler::getAll( $sql, $mP );
		
	}

	public static function moveClass( $mP )
	{
		//$mP[ ':csID' ] = getClassStudentID( array( ':cID' => $mP[ ':oCID' ], ':sID' => $mP[ ':sID' ] ) );
			
		$sql = 'UPDATE tgp_class_students
				SET class_id = :nCID
				WHERE student_id = :sID AND class_id = :oCID';
		
		return databaseHandler::Execute( $sql, $mP );
	}
	
	public static function removeClass( $mP )
	{
		if( !is_array( $mP ) )
		{
			echo '<p class=error>You need pass array format information</p>';
			return -1;
		}
			
		$sql = 'DELETE 
				FROM tgp_class_students
				WHERE student_id = :sID AND class_id = :cID';
		
		return databaseHandler::Execute( $sql, $mP );
		
	}
	
	public static function updateSchool( $sID, $schoolID,  $sName, $sGrade )
	{
		if( intval( $sID ) < 1 || intval( $schoolID ) < 1 || empty( $sName ) )
			return 0;
					
		return procedureHandler::Execute( 'tgp_student_update_school_info', array( ':sID' => $sID, ':schoolID' => $schoolID, ':sName' => $sName, ':sGrade' => $sGrade ) );
	}
	
	public static function updateAddress( $sID, $aID, $sStreet, $sCity, $sState, $sZip )
	{
		if( intval( $sID ) < 1 || empty( $sStreet ) )
			return 0;
			
		return procedureHandler::Execute( 'tgp_student_update_address', array( ':sID' => $sID, ':aID' => $aID, ':sStreet' => $sStreet, ':sCity' => $sCity, ':sState' => $sState, ':sZip' => $sZip ) );
	}
	
	public static function updateContactInfo( $sID, $cID,  $sHPhone, $sCPhone, $sEmail )
	{
		if( intval( $sID ) < 1 || intval( $cID ) < 1 )
			return 0;
			
		return procedureHandler::Execute( 'tgp_student_update_contact_info', array( ':sID' => $sID, ':cID' => $cID, ':sHPhone' => $sHPhone, ':sCPhone' => $sCPhone, ':sEmail' => $sEmail ) );
	}
	
	public static function updateEmergencyContact( $sID, $eID,  $eName, $eRelation, $eHPhone, $eWPhone, $eCPhone )
	{
		if( intval( $sID ) < 1 || intval( $eID ) < 1 )
			return 0;
			
		return procedureHandler::Execute( 'tgp_student_update_emergency_contact', 
		array( ':sID' => $sID, ':eID' => $eID, ':eName' => $eName, ':eRelation' => $eRelation, ':eHPhone' => $eHPhone, ':eWPhone' => $eWPhone, ':eCPhone' => $eCPhone ) );
	}
	
	public static function updateCaregiver( $mP )
	{
		if( !is_array( $mP ) )
			return -1;
			
		return procedureHandler::Execute( 'tgp_student_update_caregiver', $mP );
	}
	
	public static function updateParent( $mP )
	{
		if( !is_array( $mP ) )
			return -1;
			
		return procedureHandler::Execute( 'tgp_student_update_parent', $mP );
	}
	
	public static function updateStudent( $sID, $sFirst, $sLast, $sDOB, $sGender )
	{
		if( $sID < 1 )
			return 0;
			
		$sql = "UPDATE tgp_family 
				SET first = :sFirst, last = :sLast, dob = :sDOB, gender = :sGender
				WHERE id = :sID";
				
		$params = array( ':sID' => $sID, ':sFirst' => $sFirst, ':sLast' => $sLast, ':sDOB' => $sDOB, ':sGender' => $sGender );
		
		return databaseHandler::Execute( $sql, $params );
	}
	
	public static function getOpenPlayAmount( $mP )
	{
		$sql = 'SELECT SUM( amount ) AS amount
				FROM openplay_students
				WHERE student_id = :sID AND openplay_id = :opID';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => $mP ) );
		
		return $pdo->getOne();
	}
}

?>