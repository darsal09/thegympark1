<?php
	session_start();

	require_once 'include/config.php';
	require_once PRESENTATION_DIR.'/link.class.php';
	
	function  my_autoload( $class ) 
	{
		require_once BUSINESS_DIR.'/'.$class.'.class.php';
	}

	spl_autoload_register( 'my_autoload' );

	if( user::isAdmin() )
	{
		$ct = classTitlesModel::getCurrentSeason();

		$size = sizeof( $ct );
		
		header( 'Content-Type:text/xml' );
		echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>';

		echo '<classTitles>';

		for( $i = 0; $i < $size; $i++ )
		{
			echo '<classTitle>';
				echo '<ID>'.$ct[ $i ][ 'id' ].'</ID>';
				
				$title = $ct[ $i ][ 'title' ];
				
				$split = explode( '&', $title );
				
				if( sizeof( $split ) > 1 )
					$title = $split[ 0 ].' and '.$split[ 1 ];
					
				echo '<TITLE>'.$title.'</TITLE>';
				echo '<AGEGROUP>'.$ct[ $i ][ 'age_group' ].'</AGEGROUP>';
			echo '</classTitle>';
		}
		
		echo '</classTitles>';
	}
	else
	{
		header( 'Location:'.Link::Build( '' ) );
		exit;
	}
?>