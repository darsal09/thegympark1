<?php
include( 'index.php' );

$d = new date();

print_r( $d->addDays( 30 ) );
?>