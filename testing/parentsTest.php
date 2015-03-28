<?php
include( 'index.php' );

$pt = new parents( array( 'id' => '9', 'name' => 'Darwin Salgado', 'email' => 'leticia_velasquez@yahoo.com', 'cellPhone' => '917-902-9021', 'userID' => 119, 'studentID' => 19 ) );

if( $pt->save() )
	echo '<p>Saved</p>';
else
	echo '<p>Already exist</p>';
?>