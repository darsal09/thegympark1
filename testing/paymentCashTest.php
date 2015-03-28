<?php
include( 'index.php' );

$payment = new paymentCash( array( 'studentID' => 1, 'openPlayStudentID' => 3, 'amount' => 4, 'type' => 'Open Play' ) );

print_r( $payment );
?>