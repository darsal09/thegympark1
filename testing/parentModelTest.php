<?php
include( 'index.php' );

$p = new parentModel( array( 'info' => array( 'name' => 'Darwin Salgado', 'email' => 'darsal09@yahoo.com', 'cellPhone' => '646-724-3923' ) ) );

if( $p->save() )
	echo $p->mID;
else
	print_r( $p->getErrors() );

?>