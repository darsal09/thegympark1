<?php
	session_start();

	require_once 'include/config.php';
	require_once BUSINESS_DIR.'/databaseHandler.class.php';
	require_once BUSINESS_DIR.'/catalog.class.php';
	require_once BUSINESS_DIR.'/user.class.php';
	require_once PRESENTATION_DIR.'/link.class.php';

	if( user::isAdmin() )
	{
		$p = catalog::getPrograms();

		$size = sizeof( $p );

		header( 'Content-Type:text/xml' );
		echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>';
		echo '<PROGRAMS>';
		for( $i = 0; $i < $size; $i++ )
		{
			echo '<PROGRAM>';
				echo '<ID>'.$p[ $i ][ 'program_id' ].'</ID>';
				
				$title = $p[ $i ][ 'title' ];
				
				$split = explode( '&', $title );
				
				if( sizeof( $split ) > 1 )
					$title = $split[ 0 ].' and '.$split[ 1 ];
					
				echo '<TITLE>'.$title.'</TITLE>';
			echo '</PROGRAM>';
		}
		
		echo '</PROGRAMS>';
	}
	else
	{
		header( 'Location:'.Link::Build( '' ) );
		exit;
	}
?>