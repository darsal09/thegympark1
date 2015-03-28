<?php
	session_start();

	require_once 'include/config.php';
	require_once BUSINESS_DIR.'/databaseHandler.class.php';
	require_once BUSINESS_DIR.'/catalog.class.php';
	require_once BUSINESS_DIR.'/newsletters.class.php';
	require_once BUSINESS_DIR.'/user.class.php';
	require_once PRESENTATION_DIR.'/link.class.php';

	if( user::isAdmin() )
	{
		$c = newsletters::getCategories();

		$size = sizeof( $c );

		for( $i = 0; $i < $size; $i++ )
		{
		header( 'Content-Type:text/xml' );
		echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>';

		echo '<Newsletters>';

		for( $i = 0; $i < $size; $i++ )
		{
			echo '<NEWSLETTER>';
				echo '<ID>'.$c[ $i ][ 'id' ].'</ID>';
				
				$title = $c[ $i ][ 'title' ];
				
				$split = explode( '&', $title );
				
				if( sizeof( $split ) > 1 )
					$title = $split[ 0 ].' and '.$split[ 1 ];
					
				echo '<TITLE>'.$title.'</TITLE>';
			echo '</NEWSLETTER>';
		}
		
		echo '</Newsletters>';
		}
	}
	else
	{
		header( 'Location:'.Link::Build( '' ) );
		exit;
	}
?>