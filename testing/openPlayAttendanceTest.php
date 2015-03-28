<?php
include( 'index.php' );

$opa = new  openPlayAttendance( array( 'openPlayID' => 9, 'classID' => 102, 'studentID' => 2, 'packageID' => 1, 'openPlayStudentID' => 12, 'date' => date( 'Y-m-d' ) ));
$sdate = openPlayModel::currentSessionDate( array( ':cID' => 106 ) );

return print_r( $sdate );

return print_r( $opa );
echo $opa->save();
?>