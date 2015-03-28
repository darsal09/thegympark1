<?php
include( 'index.php' );

$pi = new participantInfo( array( 'first' => 'Darwin', 'last' => 'Salgado', 'dob' => '06/26/1979', 'gender' => 'M', 'userID' => 119 ) );

if( !$pi->exist() )
	$pi->add();
else
	echo '<p>Already exist</p>';
?>