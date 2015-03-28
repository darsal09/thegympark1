<?php
function  my_autoload( $class ) 
{
	require_once $class.'.class.php';
}

spl_autoload_register( 'my_autoload' );

	$reflection = new ReflectionClass( 'signChild' ); 
	
	$methods = $reflection->getMethods(); 
	
	foreach ($methods AS $method) 
	{ 
		echo "Method: {$method->name}<br />"; 
	} 
		
?>
