<?php

class filters
{
	/*
		receives start age and end age as integers:
		
		This function collects all the students who are within the fStartAge and fEndAge
	*/
	
	public static function getAgeType( $fStartAge, $fEndAge )
	{
		$sYear = date( 'Y' );
		
		$sdate = $sYear - $fStartAge.'-'.date( 'm' ).'-'.date( 'd' );
		$edate = $sYear - $fEndAge.'-'.date( 'm' ).'-'.date( 'd' );
		
		$sql = 'SELECT ts.*, tsci.email, tp.email AS parent_email
				FROM tgp_students ts
				LEFT JOIN tgp_student_contact_info tsci ON tsci.student_id = ts.id
				LEFT JOIN tgp_parents tp ON tp.student_id = ts.id
				WHERE ts.dob BETWEEN eAge AND sAge
				ORDER BY ts.last, ts.first, ts.dob';
				
		return procedureHandler::getAll( 'tgp_filters_get_age', array( ':fStart' => $sdate, ':fEnd' => $edate ) );
	}

	public static function getCatalogType( $fCat )
	{
		return procedureHandler::getAll( 'tgp_newsletter_filters_get_category', array( ':fCat' => $fCat ) );
	}

	public static function getCategoryType( $cIDS )
	{
		$members = array();
		
		$sql = 'SELECT ts.*, tsc.email AS email, tp.email AS parent_email, tc.category_id AS cID, tc.tgp_program_id AS pID, tc.title_id AS ctID, tc.class_id AS clID
				FROM tgp_classes tc 
				INNER JOIN tgp_class_students tcs ON tcs.class_id = tc.class_id
				INNER JOIN tgp_students ts ON ts.id = tcs.student_id
				LEFT JOIN tgp_student_contact_info tsc ON tsc.student_id = ts.id
				LEFT JOIN tgp_parents tp ON tp.student_id = ts.id
				WHERE tc.category_id = :cID
				GROUP BY ts.id
				ORDER BY ts.last, ts.first';
				
		foreach( $cIDS AS $cID )
			$members += databaseHandler::getAll( $sql, array( ':cID' => $cID ) );
		
		return $members;
	}

	public static function getClassesType( $fClassID )
	{
		if( !is_array( $fClassID ) )
		{
			echo '<p class=error> You need to provide an array of classes to this function </p>';
			return;
		}
		
		$students = array();
		
		foreach( $fClassID AS $cID )			
			$students += self::getClassType( $cID );
			
		return $students;		
	}
	
	public static function getClassType( $cID )
	{	
		$sql = 'SELECT ts.*, tsc.email AS email, tp.email AS parent_email, tc.class_id AS clID, tc.title_id AS ctID, tc.tgp_program_id AS pID, tc.category_id AS cID
				FROM tgp_classes tc
				LEFT JOIN tgp_class_students tcs ON tcs.class_id = tc.class_id
				LEFT JOIN tgp_students ts ON ts.id = tcs.student_id
				LEFT JOIN tgp_student_contact_info tsc ON tsc.student_id = tcs.student_id
				LEFT JOIN tgp_parents tp ON tp.student_id = tcs.student_id
				WHERE tc.class_id = :cID
				ORDER BY ts.last, ts.first';
		
		return databaseHandler::getAll( $sql, array( ':cID' => $cID ) );			
	}
		
	public static function getClassTitleType( $fClassTitle )
	{		
		if( !is_array( $fClassTitle ) )
		{	
			echo '<p class=error>You need to provide an array of classes to this function </p>';
			return;
		}
		
		$students = array();
		
		foreach( $fClassTitle AS $ctID )
			$students +=  procedureHandler::getAll( 'tgp_filters_get_class_title_students', array( ':fClassTitle' => $ctID ) );
		
		return $students;
	}
	
	public static function getDayType( $sDays )
	{
		$students = array();
		
		foreach( $sDays AS $day )
			$students += procedureHandler::getAll( 'tgp_filter_get_day_students', array( ':Day' => $day ) );
		
		return $students;
	}
	
	public static function getMonthType( $sMonth, $eMonth )
	{	
		$Type = false;
		
		$sDate = date( 'm', strtotime( '+'.$sMonth.' months', strtotime( date( 'Y-m-d' ) ) ) );
	
		$eDate = date( 'm', strtotime( '+'.$eMonth.' months', strtotime( date( 'Y-m-d' ) ) ) );
		
		if( intval( $eMonth ) == 11 )
		{
			$sDate = '01';
			$eDate = '12';
		}
		else if( intval( $sDate ) > intval( $eDate ) )
			$Type = true;

//		echo $sDate.' '.$eDate.'<br/>';
		
		return procedureHandler::getAll( 'tgp_filter_get_month_students', array( ':fStartAge' => $sDate, ':fEndAge' => $eDate, ':Type' => $Type ) );
	}

	public static function getNewsletterType( $fCatIDS )
	{	
		if( !is_array( $fCatIDS ) )
		{
			echo '<p class=error>Error! There are no Newsletter categories picked</p>';
			return array();
		}
		
		$members = array();
		
		foreach( $fCatIDS AS $fCatID )
			$members += procedureHandler::getAll( 'tgp_get_newsletter_category_members', array( ':cID' => $fCatID ) );		
		
		return $members;
	}
	
	public static function getProgramType( $pIDs )
	{
		$students = array();
		
		foreach( $pIDs AS $pID )
			$students += procedureHandler::getAll( 'tgp_filters_get_program_students', array( ':fProg' => $pID ) );
		
		return $students;
	}

	public static function getTimeType( $fStartTime, $fEndTime )
	{		
		return procedureHandler::getAll( 'tgp_filters_get_time_students', array( ':fStart' => $fStartTime, ':fEnd' => $fEndTime ) );
	}
}
?>