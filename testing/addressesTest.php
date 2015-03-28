<?php
include( 'index.php' );

$at = new addresses( array( 'street' => '74 Linden Street', 'city' => 'Brooklyn', 'state' => 'NY', 'zip' => '11221', 'studentID' => 19, 'userID' => 119 ) );

if( !$at->exist() )
	$at->add();
else
	echo '<p>Already exist</p>';
?>