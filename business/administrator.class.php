<?php
	require_once BUSINESS_DIR.'/newsletters.class.php';
	require_once BUSINESS_DIR.'/filters.class.php';

	class administrator
	{
		public static function getClassDays( $aDate )
		/*
			This function gets all the days that have at least a class in it
			parameter:
			aDate = actual date, so if gets the class that are within a season
		*/
		{			
			return procedureHandler::getAll( 'tgp_admin_get_class_days', array( ':aDate' => $aDate ) );
		}
		
		public static function addClass( $cLocation, $cDay, $cSTime, $cETime,  $cSDate, $cEDate, $cKidLimit )
		/*
			This function allows the administrator to add a class with the following parameters:
			cDay = class day
			cSTime = class start time
			cETime = class end time
			cSDate = class start date
			cEDate = class end date
			cKidLimit = class kid limit
			
			and it returns the id of the class that was added.
			
			If a class was added to this time
		*/
		{			
			return procedureHandler::getOne( 'tgp_admin_add_class', array( ':cLocation' => $cLocation, ':cDay' => $cDay, ':cSTime' => $cSTime, ':cETime' => $cETime, ':cSDate' => $cSDate, ':cEDate' => $cEDate, ':cKidLimit' => $cKidLimit ) );
		}
		
		public static function addParticipant( $classInfo, $P, $Address, $School, $Parent1, $Parent2, $Caregiver, $EmergencyContact )
		/*
			This function add a student whole information. If a student already exist then it doesn't put him in.
		*/
		{	
			//set up the actual date to find out if the student is and adult or under 18
			$aYear 	= date( "Y" );
			$aMonth = date( "n" );			
			$aDay 	= date( "j" );
			
			$yDiff 	= intval( $aYear ) - intval( date( "Y", strtotime( $P[ ':dob' ] ) ) );
			$bMonth =  intval( date( "n", strtotime( $P[ ':dob' ] ) ) );
			$bDay 	=  intval( date( "j", strtotime( $P[ ':dob' ] ) ) );

					
			$sID = self::addStudent( $P[ ':first' ], $P[ ':last' ], $P[ ':dob' ], $P[ ':sex' ] );
				
			if( $sID < 1 )
				return 0;
		
			
			if( $classID > 0 )
			{
				$scID = self::addStudentToClass( array( ':sID' => $sID, ':cID' => $classInfo[ 'classID' ], ':start' => $classInfo[ 'startDate' ], ':end' => $classInfo[ 'endDate' ], ':price' => $classInfo[ 'price' ], ':type' => $classInfo[ 'classPart' ] ) );
			
				if( $scID < 1 )
					echo "<p>Couldn't add student to class</p>";
			}
		
			$aID = self::addAddressToStudent( $sID, $Address );
			
			if( $aID < 1 )
				echo "<p>Couldn't add student's address</p>";
				
			$eID = self::addEmergencyContactToStudent( $sID, $EmergencyContact );

			if( $eID < 1 )
				echo "<p>Couldn't add student's emergency contact!</p>";
			
			//adult student
			if( $yDiff > 18 || ( $yDiff == 18 && intval( $aMonth ) > $bMonth ) || ( $yDiff == 18 && $aMonth == $bMonth && $aDay >=  $bDay) )
			{
				$ciID = self::addContactInfoToStudent( $sID, array( ':sID' => '', ':hPhone' => $P[ ':hPhone' ], ':cPhone' => $P[ ':cPhone' ], ':email' => $P[ ':email' ]  ) );
				
				if( $ciID < 1 )
					echo "<p>Couldn't add student's contact info</p>";				
			}
			else //under 18 student
			{	
				if( !empty( $School[ ':school' ] ) )
				{
					$siID = self::addSchoolInfoToStudent( $sID, $School );
					
					if( $siID < 1 )
						echo "<p>Couldn't add student's school info</p>";
					else
						echo '<p>School info added!</p>';
				}

				if( !empty( $Caregiver[ ':cgName' ] ) )
				{
					$cgID = self::addCaregiverToStudent( $sID, $Caregiver );
					
					if( $cgID < 1 )
						echo "<p>Couldn't add student's caregiver info</p>";
					else
						echo '<p>Caregiver info added!</p>';
				}
				
				if( !empty( $Parent1[ ':p1Name' ] ) )
				{
					$p1ID = self::addParentToStudent( $sID, $Parent1 );
				
					if( $p1ID < 1 )
						echo "<p>Couldn't add student's parent 1 information</p>";
					else
						echo '<p>parent 1 info added!</p>';
				}
				
				if( !empty( $Parent2[ ':p2Name' ] ) )
				{
					$p2ID = self::addParentToStudent( $sID, $Parent2 );
					
					if( $p2ID < 1 )
						echo "<p>Couldn't add student's parent 2 information</p>";
					else
						echo '<p>Parent 2 info added</p>';
				}
			}
			
			return $sID;
		}
	
		public static function participantExist( $pFirst, $pLast, $pDOB, $pGender )
		{			
			if( empty( $pFirst ) && empty( $pLast ) )
				return false;
				
			$result = procedureHandler::getOne( 'tgp_admin_participant_exist', array( ':pFirst' => $pFirst, ':pLast' => $pLast, ':pDOB' => $pDOB, ':pGender' => $pGender ) );
			
			if( intval( $result ) >  0 )
				return true;
			
			return false;
		}
		
		private static function trimValue( &$v )
		{
			$v = trim( $v );
		}
		
		public static function addStudent( $sFName, $sLName, $sDOB, $sGender )
		{
			if( empty( $sFName ) && empty( $sLName ) )
				return 0;
				
			return procedureHandler::getOne( 'tgp_admin_add_student', array( ':sFName' => $sFName, ':sLName' => $sLName, ':sDOB' => $sDOB, ':sGender' => $sGender ) );
		}
		
		public static function addStudentToClass( $mP )
		{				
			$sql = 'INSERT INTO 
					tgp_class_students( student_id, class_id, start, end, type, price )
					VALUES( :sID, :cID, :start, :end, :type, :price )';
			
			return databaseHandler::Execute( $sql, $mP );
			
			//return procedureHandler::getOne( 'tgp_admin_class_add_student', array( ':sID' => $sID, ':cID' => $cID ) );
		}
		
		public static function addParentToStudent( $sID, $mP )
		{
			if( intval( $sID ) < 1 ||  !is_array( $mP ) )
				return 0;
			
			$mP[ ':sID' ] = $sID;
			
			return student::addParent( $mP );
		}
		
		public static function addAddressToStudent( $sID, $mP )
		{
			if( intval( $sID ) < 1 || !is_array( $mP  ) )
				return 0;
				
			$mP[ ':sID' ] = $sID;
			
			return student::addAddress( $mP );
		}
		
		public static function addCaregiverToStudent( $sID, $mP )
		{
			if( intval( $sID ) < 1 || !is_array( $mP ) )
				return 0;
				
			$mP[ ':sID' ] = $sID;
			
			return student::addCaregiver( $mP );
		}

		
		public static function addContactInfoToStudent( $sID, $mP )
		{
			if( intval( $sID ) < 1  || !is_array( $mP ) )
				return 0;
			
			$mP[ ':sID' ] = $sID;
			
			return student::addContactInfo( $mP );
		}
		
		public static function addMembershipToStudent( $sID, $mID )
		{
			if( intval( $sID ) < 1 || intval( $mID ) < 1 )
				return 0;
			
			return student::addMembership( array( ':sID' => $sID, ':mID' => $mID ) );
		}
		
		public static function addEmergencyContactToStudent( $sID, $mP )
		{
			if( intval( $sID ) < 1 || !is_array( $mP ) )
				return 0;
				
			$mP[ ':sID' ] = $sID;
			
			return student::addEmergencyInfo( $mP );
		}
		
		public static function addSchoolInfoToStudent( $sID, $mP )
		{
			if( intval( $sID ) < 1 || !is_array( $mP ) )
				return 0;
				
			$mP[ ':sID' ] = $sID;
			
			return student::addSchool( $mP );
		}
		
		public static function deleteProgram( $pID )
		{				
			return programModel::delete( array( ':pID' => $pID ) );
		}

		public static function deleteClassGroup( $cgID )
		{
			if( intval( $cgID ) < 1 )
				return -2;
			
			return procedureHandler::getOne( 'tgp_delete_class_group', array( ':cgID' => $cgID ) );
		}
		
		public static function getCategoryTitle( $cID )
		{
			$sql = 'SELECT title
					FROM tgp_classes_categories
					WHERE cc_id = :cID';
					
			$params = array( ':cID' => $cID );
			
			return databaseHandler::getOne( $sql, $params );
		}
		
		public static function getClassTitles( $pID, $cID )
		{
			if( $pID < 1 )
				return array( '' );
				
				
			if( $pID > 0 && $cID > 0 )
			{
				$sql = 'SELECT * 
					FROM class_titles 
					WHERE program_id = :pID AND category_id = :cID';
					
				$params = array( ':pID' => $pID, ':cID' => $cID );
			}
			else if( $pID > 0 && $cID < 1 )
			{
				$sql = 'SELECT * 
					FROM class_titles 
					WHERE program_id = :pID';
					
				$params = array( ':pID' => $pID );
				
			}
			
			return databaseHandler::getAll( $sql, $params );
		}
		
		public static function getClassStudents( $cID )
		{
			if( $cID < 1 )
				return array();
				
			$sql = "SELECT tf.*, tcs.start, tcs.end, tcs.price, tcs.type AS classType, tcs.id AS classStudentID
					FROM tgp_class_students tcs
					INNER JOIN tgp_family tf ON tf.id = tcs.student_id
					WHERE tcs.class_id = :cID
					ORDER BY tf.last, tf.first";
				
			return databaseHandler::getAll( $sql, array( ':cID' => $cID ) );
		}
		
		public static function getDayClasses( $day )
		{
			$sql = 'SELECT tc.*, ct.title, tcc.hexColor
					FROM tgp_classes tc
					LEFT JOIN class_titles ct ON ct.id = tc.title_id
					LEFT JOIN tgp_classes_categories tcc ON tcc.cc_id = ct.category_id
					WHERE weekday = :Day
					ORDER BY start_time, tgp_program_id';
			
			$params = array( ':Day' => $day );
			
			return databaseHandler::getAll( $sql, $params );
		}

		public static function getSeasonDayClasses( $mP )
		{
			$sql = 'SELECT tc.*, ct.title, tcc.hexColor
					FROM tgp_classes tc
					LEFT JOIN class_titles ct ON ct.id = tc.title_id
					LEFT JOIN tgp_classes_categories tcc ON tcc.cc_id = ct.category_id
					WHERE weekday = :Day AND season_id = :sID
					ORDER BY start_time, tgp_program_id';
						
			return databaseHandler::getAll( $sql, $mP );
		}
		
		public static function getProgramTitle( $pID )
		{
			$sql = 'SELECT title
					FROM tgp_programs
					WHERE program_id = :pID';
					
			$params = array( ':pID' => $pID );
			
			return databaseHandler::getOne( $sql, $params );
		}
		
		public static function getStudent( $sID )
		{
			return procedureHandler::getRow( 'tgp_admin_get_student', array( ':sID' => $sID ) );
		}
		
		public static function getStudentContactInfo( $sID )
		{
			return procedureHandler::getRow( 'tgp_admin_get_student_contact_info', array( ':sID' => $sID ) );
		}
		
		public static function getStudentAddress( $sID )
		{
			return procedureHandler::getRow( 'tgp_admin_get_student_address', array( ':sID' => $sID ) );
		}
		
		public static function getStudentEmergency( $sID )
		{
			return procedureHandler::getRow( 'tgp_admin_get_student_emergency_contact', array( ':sID' => $sID ) );
		}
		
		public static function getStudentCaregiver( $sID )
		{
			return procedureHandler::getRow( 'tgp_admin_get_student_caregiver', array( ':sID' => $sID ) );
		}

		public static function getStudentClasses( $sID )
		{
			$sql = 'SELECT tc.*, ct.title, ct.age_group
					FROM tgp_class_students tcs
					LEFT JOIN tgp_classes tc ON tc.class_id = tcs.class_id
					LEFT JOIN class_titles ct ON ct.id = tc.title_id
					WHERE tcs.student_id = :sID
					ORDER BY tc.weekday, tc.start_time';
					
			$params = array( ':sID' => $sID );
			
			return databaseHandler::getAll( $sql, $params );
		}
		
		public static function getStudentSchool( $sID )
		{
			$school = procedureHandler::getRow( 'tgp_admin_get_student_school', array( ':sID' => $sID ) );
			
			if( is_array( $school ) && sizeof( $school ) > 0 )
				return $school;
			
			return array( 'id' => 0,
							 'name' => '',
							 'grade' => ''
							);
		}
		
		public static function getStudentParent( $sID, $pID )
		{
			$sql = 'SELECT *
					FROM tgp_parents
					WHERE student_id = :sID AND parent_id = :pID';
					
			$params = array( ':sID' => $sID, ':pID' => $pID );
			
			return databaseHandler::getRow( $sql, $params );
		}
		
		public static function getStudentParents( $sID )
		{
			return procedureHandler::getAll( 'tgp_admin_get_student_parents', array( ':sID' => $sID ) );
		}
	
		public static function getStudents( )
		{
				$sql = 'SELECT *
						FROM ( ( SELECT tf.*
									FROM tgp_class_students tcs
									INNER JOIN tgp_family tf ON tf.id = tcs.student_id
									GROUP BY tf.id
									ORDER BY tf.last, tf.first )
								UNION DISTINCT
								( SELECT tfs.*
									FROM openplay_students os
									INNER JOIN tgp_family tfs ON tfs.id = os.student_id
									GROUP BY tfs.id
									ORDER BY tfs.last, tfs.first ) 
								UNION DISTINCT
								(SELECT *
									FROM tgp_family
									GROUP BY id
									ORDER BY last, first )
							) students
								
						GROUP BY id
						ORDER BY last, first';
				
					
			return databaseHandler::getAll( $sql );
		}

		public static function getStudentsSortByFirstName( )
		{
				$sql = 'SELECT *
						FROM ( ( SELECT tf.*
									FROM tgp_class_students tcs
									INNER JOIN tgp_family tf ON tf.id = tcs.student_id
									GROUP BY tf.id
									ORDER BY tf.last, tf.first )
								UNION DISTINCT
								( SELECT tfs.*
									FROM openplay_students os
									INNER JOIN tgp_family tfs ON tfs.id = os.student_id
									GROUP BY tfs.id
									ORDER BY tfs.last, tfs.first ) ) students
						GROUP BY id
						ORDER BY first';
				
					
			return databaseHandler::getAll( $sql );
		}
		
		public static function getStudentsSortByDOB( )
		{
				$sql = 'SELECT *
						FROM ( ( SELECT tf.*
									FROM tgp_class_students tcs
									INNER JOIN tgp_family tf ON tf.id = tcs.student_id
									GROUP BY tf.id
									ORDER BY tf.last, tf.first )
								UNION DISTINCT
								( SELECT tfs.*
									FROM openplay_students os
									INNER JOIN tgp_family tfs ON tfs.id = os.student_id
									GROUP BY tfs.id
									ORDER BY tfs.last, tfs.first ) ) students
						GROUP BY id
						ORDER BY dob';
				
					
			return databaseHandler::getAll( $sql );
		}
		
		
		public static function moveKidFromClass( $kID, $pClassID, $nClassID )
		{				
			return procedureHandler::getOne( 'tgp_admin_move_kid_from_class', array( ':kID' => $kID, ':pClassID' => $pClassID, ':nClassID' => $nClassID ) );
		}
		
		public static function removeKidFromClass($kID, $cID )
		{
			return procedureHandler::getOne( 'tgp_admin_class_remove_kid', array( ':kID' => $kID, ':cID' => $cID  ) );
		}

		public static function updateProgram( $pID, $pTitle, $pDesc)
		{
			if( empty( $pID ) )
				return 0;
				
			return procedureHandler::Execute( 'tgp_update_program', array( ':pID' => $pID, ':pTitle' => $pTitle, ':pDesc' => $pDesc  ) );
		}
		
		public static function prepareAndExecute( $procedure = '', $params = array(), $type )
		{
			if( empty( $procedure ) && empty( $params ) )
				return;
			
			$parameters = '';
			$i = 0;
			$size = sizeof( $params );
			
			foreach( $params AS $parameter => $value )
			{
				$parameters .= $parameter;
				
				if( $i != ( $size - 1 ) )
					$parameters .= ', ';
					
				$i++;
			}
				
			$sql = 'CALL '.$procedure.' ( '.$parameters.' )';
			
			switch( $type )
			{
				case 'Add':
					return databaseHandler::Execute( $sql, $params );
					break;
				case 'One':
					return databaseHandler::getOne( $sql, $params );
					break;
					
				case 'Row':
					return databaseHandler::getRow( $sql, $params );
					break;
				
				case 'All':
					return databaseHandler::getAll( $sql, $params );
					break;
				
				default:
					return;
					break;
			}	
		}		
	}
?>