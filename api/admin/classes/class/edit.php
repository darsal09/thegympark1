<?php
include( '../../../bootstrap.php' );

$mP = sanitize::filterInputs( 'POST', array(
											'classID' => FILTER_SANITIZE_NUMBER_INT,
											'age_group' => FILTER_SANITIZE_STRING,
											'weekday' => FILTER_SANITIZE_STRING,
											'start_time' => FILTER_SANITIZE_STRING,
											'end_time' => FILTER_SANITIZE_STRING,
											'startDate' => FILTER_SANITIZE_STRING,
											'price' => array( 'filter' => FILTER_SANITIZE_NUMBER_FLOAT, 'flag' => FILTER_FLAG_ALLOW_FRACTION ),
											'halfPrice' => array( 'filter' => FILTER_SANITIZE_NUMBER_FLOAT, 'flag' => FILTER_FLAG_ALLOW_FRACTION )
											) );
											
$c = new classTable( $mP );

if( $c->save() )
	return print_r( json_encode( array() ) );

?>