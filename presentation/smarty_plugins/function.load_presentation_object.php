<?php

//Plug-in functions inside plug-in files must be named: smarty_type_name
function smarty_function_load_presentation_object( $params, $smarty )
{
	if( isset( $params[ 'foldername' ] ) )
		$file = PRESENTATION_DIR.'/'.$params[ 'foldername' ].'/'. $params[ 'filename' ]. '.class.php';
	else
		$file = PRESENTATION_DIR .'/'. $params[ 'filename' ]. '.class.php';
	
	
	require_once $file;
	
	//create presentation object
	$obj = new $params[ 'filename' ]();
	
	if( method_exists( $obj, 'init' ) )
		$obj->init();
	
	//assign template variable
	$smarty->assign( $params[ 'assign' ], $obj );
}
?>