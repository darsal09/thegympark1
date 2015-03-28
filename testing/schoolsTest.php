<?php
include( 'index.php' );

$st = new schools( array( 'name' => 'PS 88', 'studentID' => 19, 'userID' => 119 ) );

if( !$st->exist() )
	$st->save();
else
	echo '<p>Already exist</p>';
?>