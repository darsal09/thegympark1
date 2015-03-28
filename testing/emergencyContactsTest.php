<?php
include( 'index.php' );

$ect = new emergencyContacts( array( 'name' => 'Nicole Minichiello', 'cellPhone' => '917-945-4720', 'relation' => 'Family', 'studentID' => 19, 'userID' => 119 ) );

if( !$ect->exist() )
	$ect->save();
else
	echo '<p>Already exist</p>';
?>