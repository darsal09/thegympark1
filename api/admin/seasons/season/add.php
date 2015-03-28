<?php
include( '../../../bootstrap.php' );

$mP = sanitize::filterInputs( 'POST', array( 'season' => FILTER_SANITIZE_STRING,
												'startDate' => FILTER_SANITIZE_STRING,
												'endDate' => FILTER_SANITIZE_STRING ) );

$mP[ 'endDate' ] = date( 'Y-m-d', strtotime( $mP[ 'endDate' ] ) );
$mP[ 'startDate' ] = date( 'Y-m-d', strtotime( $mP[ 'startDate' ] ) );
$mP[ 'year' ] = date( 'Y', strtotime( $mP[ 'startDate' ] ) );												

$Errors = sanitize::hasErrors( $mP, array( 'seasson' => true, 'startDate' => true, 'endDate' => true, 'year' => true ), array() );

if( is_array( $Errors ) && in_array( true, $Errors ) )
	return print_r( json_encode( array( 'success' => false, 'message' => 'There are errors in the information you provided', 'errors' => $Errors ) ) );

$exist = seasonModel::exist( $mP[ 'startDate' ], $mP[ 'endDate' ] );

if( $exist > 0 )	
	return print_r( json_encode( array( 'success' => false, 'message' => 'There is a season already with similar dates. Seasons cannot overlap with either the starting date or end date', 'id' => $exist ) ) );


$result = seasonModel::add( array( ':season' => $mP[ 'season' ], ':year' => $mP[ 'year' ], ':start_date' => $mP[ 'startDate' ], ':end_date' => $mP[ 'endDate' ] ) );

if( $result < 1 )
	return print_r( json_encode( array( 'success' => false, 'message' => 'We could not save the information in the system' ) ) );
	
return print_r( json_encode( array( 'success' => true, 'message' => 'Season added to the system', 'info' => array_merge( array( 'id' => $result ), $mP ) ) ) );

?>