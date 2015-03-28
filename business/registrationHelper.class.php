<?php
class registrationHelper
{
	private function __construct()
	{
	
	}
	
	public static function hasClassInfo()
	{
		if( !isset( $_SESSION[ 'class_info' ][ 'class_id' ] ) || !isset( $_SESSION[ 'class_info' ][ 'class_part' ] ) )
		{
			header( 'Location:'.Link::Build( 'index.php?action=weekly' ) );
			exit;
		}
		
		return array( sanitize::sani( $_SESSION[ 'class_info' ][ 'class_id' ], 'INTIGER' ), sanitize::sani( $_SESSION[ 'class_info' ][ 'class_part' ], 'STRING' ) );
	}
	
	public static function getClassParameters( $c )
	{		
		$c[ 'start_time' ] = date( 'g:ia', strtotime( $c[ 'start_time' ] ) );
		
		switch( $_SESSION[ 'class_info' ][ 'class_part' ] )
		{
			case 'First':
				$c[ 'begin' ] = date( 'M jS, Y', strtotime( $c[ 'start_date' ] ) );
				$c[ 'end' ] = date( 'M jS, Y', strtotime( '+8 Weeks', strtotime( $c[ 'start_date' ] ) ) );
				$c[ 'Price' ] = $c[ '9WeekPrice' ];
				break;
				
			case 'Last':
				$c[ 'begin' ] = date( 'M jS, Y', strtotime( $c[ 'start_date' ] ) );
				$c[ 'end' ] = date( 'M jS, Y', strtotime( '+9 Weeks', strtotime( $c[ 'start_date' ] ) ) );
				$c[ 'Price' ] = $c[ '9WeekPrice' ];
				break;
				
			default:
				$c[ 'begin' ] = date( 'M jS, Y', strtotime( $c[ 'start_date' ] ) );
				$c[ 'end' ] = date( 'M jS, Y', strtotime( $c[ 'end_date' ] ) );
				$c[ 'Price' ] = $c[ 'price' ];
		}
		
		return $c;
	}
}
?>