<?php
	session_start();

	require_once 'include/config.php';
	
function  my_autoload( $class ) 
{
	require_once BUSINESS_DIR.'/'.$class.'.class.php';
}

spl_autoload_register( 'my_autoload' );

	if( user::isAdmin() )
	{
		$c = array();
		
		switch( sanitize::sani( $_GET[ 'seasons' ], 'STRING' ) )
		{
			case 'L':
				$c = classes::getPreviousSeason( array() );
				break;
			
			case 'A':
				$c = classes::get();
				break;
			
			default:
				$c = classes::getCurrentSeason();				
		}
		
		//$c = classes::getCurrentSeason();
		
		$size = sizeof( $c );
		
		for( $i = 0; $i < $size; $i++ )
		{
			header( 'Content-Type:text/xml' );
			echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>';

			echo '<CLASSES>';

			for( $i = 0; $i < $size; $i++ )
			{
				echo '<CLASS>';
					echo '<ID>'.$c[ $i ][ 'class_id' ].'</ID>';
				
					$title = $c[ $i ][ 'title' ];
				
					$split = explode( '&', $title );
				
					if( sizeof( $split ) > 1 )
						$title = $split[ 0 ].' and '.$split[ 1 ];
					
					$time = date( 'g:ia', strtotime( $c[ $i ][ 'start_time' ] ) );
				
					echo '<TITLE>'.$c[ $i ][ 'weekday' ].' '.$time.' '.$title.'</TITLE>';
					echo '<AGEGROUP>'.$c[ $i ][ 'age_group' ].'</AGEGROUP>';
				echo '</CLASS>';
			}	
			echo '</CLASSES>';
		}

	}
	else
	{
		header( 'Location:'.Link::Build( '' ) );
		exit;
	}
?>