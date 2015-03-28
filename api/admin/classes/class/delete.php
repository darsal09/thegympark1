<?php
/*
	This part deletes a class
*/
include( '../../../bootstrap.php' );


if( !user::isAdmin() ) //only admin can continue
	return print_r( json_encode( array( 'succes' => false, 'message' => 'You do not have administrative rights to delete a class' ) ) );

$Req = array( ':cID' => true );
$mP = array( ':cID' => sanitize::sani( $_POST[ 'classID' ], 'INTIGER' ) );

$Errors = sanitize::hasErrors( $mP, $Req, array() ); //get errors

if( is_array( $Errors ) && in_array( true, $Errors ) )  //check to see if it got errors
	return print_r( json_encode( array( 'success' => false, 'message' => 'There are errors in the information you prived', 'errors' => $Errors ) ) );
	
if( classModel::hasParticipants( $mP ) ) //check to see if the class has any students
	return print_r( json_encode( array( 'succes' => false, 'message' => 'The class can not be deleted. It has students in it. Please remove students from this class first' ) ) );

$result = classModel::delete( $mP ); //delete the class from the system

$results = array( 	array( 'success' => false, 'message' => 'The class cannot be deleted'), 
					array( 'success' => true, 'message' => 'The class was deleted successfully' ) );	
					
return print_r( json_encode( $results[ $result ] ) ); //return the result
?>