<?php
include( 'index.php' );

$ct = new caregivers( array( 'name' => 'Kattia Salgado', 'phone' => '718-945-9212', 'studentID' => 19, 'userID' => 119 ) );

if( !$ct->exist() )
	if( $ct->save() )
		echo 'saved';
	else
		echo '<p>Could not save</p>';
else
	echo '<p>Already exist</p>';

	
?>