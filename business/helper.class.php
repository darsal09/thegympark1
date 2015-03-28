<?php
class helper
{
	private function __construct()
	{
	
	}
	
	public static function setFilters( $P )
	{
		$size = sizeof( $P );
		$Filters = array();
		
		for( $i = 0; $i < $size; $i++ )
		{
			$index = sizeof( $Filters );
			$letter = substr( $P[ $i ][ 'first' ], 0, 1 );
				

			if( !self::inFilter( $letter, $Filters ) )
				$Filters[ $index ] = array( 'letter' => $letter, 'link' => Link::Build( 'index.php?tgp_openplay_' ));
		}
		
		return $Filters;
	}
	
	public static function inFilter( $letter, $Filters )
	{
		$size = sizeof( $Filters );
		
		for( $i = 0; $i < $size; $i++ )
			if( in_array( $letter, $Filters[ $i ] ) )
				return true;

		return false;
	}

	public static function DOB( $dob )
	{
		$spos = strpos( $dob, '/' );
		
		if( $spos !== false ) 
			list( $month, $day, $year ) = explode( '/', $dob );
		else
		{
			$spos = strpos( $dob, '-' );
				
			if( $spos !== false )
				list( $month, $day, $year ) = explode( '-', $dob );
			else
			{
				$spos = strpos( $dob, '.' );
				
				if( $spos !== false )
					list( $month, $day, $year ) = explode( '.', $dob );
				else
				{
					echo '<p class=error>Wrong date format. We only accept the following three date formats: mm/dd/yyyy, mm-dd-yyyy, mm.dd.yyyy</p>';
					return '0000-00-00';
				}
			}
		}
			
		return $year.'-'.$month.'-'.$day;
	}	
	
	public static function isAdult( $dob )
	{	
		$age = self::ageDifference( $dob );
		
		if( $age[ 'dyear' ] > 17 )
			return true;
			
		return false;
	}
	
	public static function isChild( $dob )
	{
		$age = self::ageDifference( $dob );
		
		if( $age[ 'dyear' ] > 0 && $age[ 'dyear' ] < 18 )
			return true;
			
		return false;
	}
	
	public static function isTeen( $dob )
	{
		$age = self::ageDifference( $dob );
		
		if( $age[ 'dyear' ] > 11 && $age[ 'dyear' ] < 18 )
			return true;
			
		return false;
	}
	
	public static function isInfant( $dob )
	{
		$age = self::ageDifference( $dob );
		
		if( $age[ 'dmonth' ] >= 0 && $age[ 'dmonth' ] < 12 )
			return true;
			
		return false;
	}
	
	public static function isToddler( $dob )
	{
		$age = self::ageDifference( $dob );
		
		if( $age[ 'dyear' ] > 0 && $age[ 'dyear' ] < 4 )
			return true;
			
		return false;
	}
	
	public static function ageDifference( $dob )
	{
		list( $year, $month, $day ) = explode( '-', $dob );
		
		list( $cyear, $cmonth, $cday ) = explode( '-', date( 'Y-m-d' ) );
		
		$dyear = intval( $cyear ) - intval( $year );
		$dmonth = intval( $cmonth ) - intval( $month );
		$dday = intval( $cday ) - intval( $day );
		
		if( $dday < 0 )
			$dmonth--;
		
		if( $dmonth < 0 )
			$dyear--;
			
		return array( 'dyear' => $dyear, 'dmonth' => $dmonth, 'dday' => $dday );
	}
	
	public static function getAge( $dob )
	{
		$age = self::ageDifference( $dob );
		
		return $age[ 'dyear' ];
	}
	
	
	public static function getClassParameters( $option, $classInfo )
	{
		$R = $classInfo;
		$R[ 'price' ] = $classInfo[ '9WeekPrice' ];

		switch( $option )
		{
			case 'First':
				$R[ 'begin' ] = $classInfo[ 'start_date' ];
				$R[ 'end' ] = date( 'Y-m-d', strtotime( '+8 weeks', strtotime( $classInfo[ 'start_date' ] ) ) );
				break;
				
			case 'Last':
				$R[ 'begin' ] = date( 'Y-m-d', strtotime( '+9 weeks', strtotime( $classInfo[ 'start_date' ] ) ) );
				$R[  'end' ] = $classInfo[ 'end_date' ];
				break;
				
			default:
				$R[ 'begin' ] = $classInfo[ 'start_date' ];
				$R[ 'end' ] = $classInfo[ 'end_date' ];
				$R[ 'price' ] = $classInfo[ 'price' ];
		}
		
		return $R;
	}
	
	public static function getFields( $mP )
	{
		$result = '';
		$nP = array();
		
		foreach( $mP AS $field => $value )
			if( !empty( $value ) )
			{
				$result .= substr( $field, 1, strlen( $field ) ).' = '.$field;
				$nP[ $field ] = $value;
			}
		
		return array( 'fields' => $result, 'iArray' => $nP );
	}
	
	public static function getSessionParameters( $mP, $mReq )
	{
		foreach( $_SESSION[ '' ] AS $field => $value )
		{
			if( isset( $mReq[ $field ] ) && empty( $value ) && $mReq[ $field ] )
			{
				header( 'Location:'.Link::Build( 'index.php?action=classSignUp' ) );
				exit;
			}
			
			$mP[ $field ] = $value;
		}
		
		return $mP;
	}
	
	public static function getPreviousParameters( $mP )
	{
		foreach( $_SESSION[ 'participant_info' ] AS $field => $value )
			$mP[ $field ] = $value;
			
		return $mP;
	}
	
	public static function getLast4( $number )
	{
		return substr( $number,( strlen( $number ) - 4 ), strlen( $number ) );
	}
	
	public static function redirect( $to )
	{
		header( 'Location:'.Link::Build( $to ) );
		exit;
	}
	
	public static function studentExist( $mP )
	{
		$result = student::get( $mP );
		
		if( is_array( $result ) && !empty( $result ) )
			return true;
			
		return false;
	}
	
	public static function getFirstLetters( $mP, $link )
	{
		$letters = array();
		
		foreach( $mP AS $value )
		{
			$letter = substr( $value[ 'first' ], 0, 1 );
			
			if( !self::inArray( $letter, $letters ) )
				$letters[] = array( 'link' => Link::Build( $link.'/'.$letter ), 'title' => $letter );
		}
		
		return $letters;
	}
	
	public static function setDateFormat( $date )
	{
		return date( 'l, F jS, Y', strtotime( $date ) );
	}
	
	public static function getDateWithoutDay( $date )
	{
		return date( 'F jS, Y', strtotime( $date ) );
	}
	
	public static function getDateWithShortMonth( $date )
	{
		return date( 'M jS, Y', strtotime( $date ) );
	}
	
	public static function getTimeFormat( $time )
	{
		return date( 'g:ia', strtotime( $time ) );	
	}
	
	public static function inArray( $letter, $letters )
	{
		foreach( $letters AS $l )
			if( $l[ 'title' ] == $letter )
				return true;
				
		return false;
	}
	
	public static function getTotalWeeks( $start, $end )
	{
		$stDay = date( 'z', strtotime( $start ) );
		$etDay = date( 'z', strtotime( $end ) );
		
		$tDays = $etDay - $stDay;
		
		return $tDays/7;
	}
	
	public static function studentAttendedClass( $mP )
	{
		$sql = 'SELECT id
				FROM tgp_class_attendance
				WHERE student_id = :sID AND class_id = :cID AND dates = :date';
				
		$result = databaseHandler::getOne( $sql, $mP );
		
		if( $result < 1 )
			return false;
			
		return true;
	}
}
?>