<?php

class emailFilters
{
	private function __construct()
	{
		//
	}
	
	/*
		receives start age and end age as integers:
		
		This function collects all the students who are within the fStartAge and fEndAge
	*/
	
	public static function getAgeType( $fStartAge, $fEndAge )
	{
		$sYear = date( 'Y' );
		
		$sdate = $sYear - $fStartAge.'-'.date( 'm' ).'-'.date( 'd' );
		$edate = $sYear - $fEndAge.'-'.date( 'm' ).'-'.date( 'd' );
			
		return procedureHandler::getAll( 'tgp_filters_get_age', array( ':fStart' => $sdate, ':fEnd' => $edate ) );
	}

	public static function getCatalogType( $fCat )
	{
		return procedureHandler::getAll( 'tgp_newsletter_filters_get_category', array( ':fCat' => $fCat ) );
	}

	public static function getCategoryType( $cIDS )
	{
		$members = array();
		
		foreach( $cIDS AS $cID )			
			$members += procedureHandler::getAll( 'tgp_filters_get_category_students', array( ':cID' => $cID ) );
		
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
		return procedureHandler::getAll( 'tgp_filters_get_class_students', array( ':cID' => $cID ) );			
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