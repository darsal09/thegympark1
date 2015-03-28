<?php 
require_once '../../index.php';

$sql = 'SELECT uName, uEmail FROM tgp_users';

# JSON-encode the response
echo json_encode( databaseHandler::getAll( $sql ) );
?>