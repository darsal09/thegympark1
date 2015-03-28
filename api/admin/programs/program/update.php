<?php
include( '../../../bootstrap.php' );

$mP = sanitize::filterInputs( 'POST', array( 'programID' 	=> FILTER_SANITIZE_NUMBER_INT,
											'title'			=> FILTER_SANITIZE_STRING,
											'description' 	=> FILTER_SANITIZE_STRING ));
						
$c = new programTable( $mP );
						
if( !$c->update() )
	return print_r( json_encode( array( 'success' => false, 'error' => true, 'message' => 'There was an error in updating the program') ) );

return print_r( json_encode( array( 'success' => true, 'error' => false, 'program' => $mP, 'message' => 'Program updated!') ) );
?>