<?php

class paymentModel
{
	private function __construct()
	{
	
	}
	
	public static function add( $mP )
	{
		
		if( !isset( $mP[ ':type' ] ) )
			$mP[ ':type' ] = 'Class';
		
		if( self::exist( array( ':uID' => $mP[ ':uID' ], ':mID' => $mP[ ':mID' ], ':amount' => $mP[ ':amount' ], ':registerID' => $mP[ ':registerID' ], ':type' => $mP[ ':type' ] ) ) )
			return 0;
		
			
		$sql = 'INSERT INTO 
				tgp_class_payments( user_id, student_id, payment, register_id, amount, authorize_results, card_id, type )
				VALUES( :uID, :mID, :payment, :registerID, :amount, :result, :cardID, :type )';
		
		databaseHandler::Execute( $sql, $mP );
		
		return databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );
	}
	
	public static function accept( $mP, $classInfo, $begin, $end, $option )
	{
		list( $first_name, $last_name ) = explode( " ", $mP[ 'name_on_card' ] );
			
		return new authorizeModel( array( 'x_invoice_num' => 'CL-'.date( 'Ymd' ).'-'.$classInfo[ 'class_id' ],
										'x_amount' 			=> $option == 'Full' ? $classInfo[ 'price' ] : $classInfo[ '9WeekPrice' ],
										"x_description"		=> $classInfo[ 'title' ].' on '.$classInfo[ 'weekday' ].'s from '.date( 'g:ia', strtotime( $classInfo[ 'start_time' ]  )  ).' to '.date( 'g:ia', strtotime( $classInfo[ 'end_time' ] ) ).' starting '.date( 'D. M. jS, Y', strtotime( $begin ) ).' to '.date( 'D. M. jS, Y', strtotime( $end ) ),
										"x_card_num"		=> $mP[ 'cardNumber' ],
										"x_exp_date"		=> $mP[ 'expiration_date' ],
										"x_card_code"		=> $mP[ 'authorization_code' ],
										"x_first_name"		=> $first_name,
										"x_last_name"		=> $last_name,
										"x_address"			=> $mP[ 'billing_street' ],
										"x_city" 			=> $mP[ 'billing_city' ],
										"x_state"			=> $mP[ 'billing_state' ],
										"x_zip"				=> $mP[ 'billing_zip' ]
									) );

	}

	public static function exist( $mP )
	{
		$sql = 'SELECT id
				FROM tgp_class_payments
				WHERE user_id = :uID AND student_id = :mID AND amount = :amount AND register_id = :registerID AND type = :type';
		
		if( databaseHandler::getOne( $sql, $mP ) > 0 )
			return true;
			
		return false;
	}
	
	public static function registered( $mP )
	{
		
	}
}

?>