<?php
	include( 'index.php' );
	
$p = new Package( array( ':pOPID' => 1 ) );

$startdate = date( 'Y-m-d' );
$options = "+{$p->getValid()} {$p->getOptions()}";
echo '<p>'. $options.'</p>';
$enddate = date( 'Y-m-d', strtotime( "+{$p->getValid()} {$p->getOptions()}", strtotime( $startdate ) ) );
echo $startdate.'<br/>';
echo $enddate.'<br/>';
print_r( $p );
?>