<?php

class newsletterFilters
{
	private function __construct()
	{
		//
	}
	
	/*
		receives start age and end age as integers:
		
		This function collects all the students who are within the fStartAge and fEndAge
	*/
	
	public static function getAgeType( $fStartAge, $fEndAge, $season = null )
	{
		$s = array();
		$sYear = date( 'Y' );
		
		$sdate = $sYear - $fStartAge.'-'.date( 'm' ).'-'.date( 'd' );
		$edate = $sYear - $fEndAge.'-'.date( 'm' ).'-'.date( 'd' );

		if( !is_null( $season ) )
			$s = self::getSeason( $season );

		$sql = 'SELECT ts.*, tsci.email, tp.email AS parent_email
				FROM tgp_family ts
				LEFT JOIN tgp_student_contact_info tsci ON tsci.student_id = ts.id
				LEFT JOIN tgp_parents tp ON tp.student_id = ts.id
				WHERE ts.dob BETWEEN :eDate AND :sDate';
					
		$mP = array( ':sDate' => $sdate, ':eDate' => $edate );
		
		if( isset( $s[ 'id' ] ) )
		{
			$sql = 'SELECT ts.*, tsci.email, tp.email AS parent_email
					FROM tgp_classes tc
					LEFT JOIN tgp_class_students tcs ON tcs.class_id = tc.class_id
					INNER JOIN tgp_students ts ON ts.id = tcs.student_id AND ts.dob BETWEEN :eDate AND :sDate
					LEFT JOIN tgp_student_contact_info tsci ON tsci.student_id = ts.id
					LEFT JOIN tgp_parents tp ON tp.student_id = ts.id
					WHERE tc.season_id = :sID';
					
			$mP = array( ':sDate' => $sdate, ':eDate' => $edate, ':sID' => $s[ 'id' ] );
		}
		
		return databaseHandler::getAll( $sql, $mP );
	}

	public static function getCatalogType( $fCat )
	{
		return procedureHandler::getAll( 'tgp_newsletter_filters_get_category', array( ':fCat' => $fCat ) );
	}

	public static function getCategoryType( $cIDS, $season = null )
	{
		$members = array();			
		
		foreach( $cIDS AS $cID )
			$members += categoryModel::getStudents( array( ':cID' => $cID ), $season );
			
		return $members;
	}

	public static function getClassesType( $fClassID, $season )
	{
		if( !is_array( $fClassID ) )
		{
			echo '<p class=error> You need to provide an array of classes to this function </p>';
			return;
		}
		
		$students = array();
		
		foreach( $fClassID AS $cID )			
			$students += self::getClassType( array( ':cID' => $cID ) );
			
		return $students;		
	}
	
	public static function getClassType( $mP )
	{			
		return classModel::getStudents( $mP );
	}
		
	public static function getClassTitleType( $fClassTitle, $season )
	{		
		if( !is_array( $fClassTitle ) )
		{	
			echo '<p class=error>You need to provide an array of classes to this function </p>';
			return;
		}
		
		$students = array();
		
		foreach( $fClassTitle AS $ctID )			
			$students += classTitleModel::getStudents( array( ':ctID' => $ctID ), $season );

		return $students;
	}
	
	public static function getDayType( $sDays )
	{
		$students = array();
		
		foreach( $sDays AS $day )
		{
			$students += procedureHandler::getAll( 'tgp_filter_get_day_students', array( ':Day' => $day ) );
		}
		
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
	
	public static function getProgramType( $pIDs, $season )
	{
		$students = array();
		
		foreach( $pIDs AS $pID )
			$students += programModel::getStudents( array( ':fProg' => $pID ), $season );
		
		return $students;
	}

	public static function getTimeType( $fStartTime, $fEndTime )
	{		
		return procedureHandler::getAll( 'tgp_filters_get_time_students', array( ':fStart' => $fStartTime, ':fEnd' => $fEndTime ) );
	}
	
	public static function getCurrentSeason()
	{
		$s = season::current();
		
		$students = self::getStudent( array( ':sID' => $s[ 'id' ] ) );
	}
	
	public static function getSeason( $season )
	{
		switch( $season )
		{
			case 'Current':
				return seasonModel::getCurrent();
				
			case 'Last':
				return seasonModel::getPrevious();
			
			default:
				return '';
		}
	}
}
?>