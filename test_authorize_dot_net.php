<?php
require_once 'include/config.php';
require_once BUSINESS_DIR.'/authorizeModel.class.php';

$request = new authorizeModel( array( 'x_invoice_num' => '99999',
					'x_amount' => '45.99',
					"x_description"		=> "Sample Transaction",
					
					"x_card_num"		=> "4111111111111111",
					"x_exp_date"		=> "0115",
					"x_card_code"		=> "222",
					"x_first_name"		=> "John",
					"x_last_name"		=> "Doe",
					"x_address"			=> "1234 Street",
					"x_city" 			=> "Seatle",
					"x_state"			=> "WA",
					"x_zip"				=> "98004"
				));

					
//$request->setRequest( $trans );

//print_r( $request->getResultString() );

?>