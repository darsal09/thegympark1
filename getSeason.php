<?php
	session_start();

	require_once 'include/config.php';
	require_once BUSINESS_DIR.'/databaseHandler.class.php';
	require_once BUSINESS_DIR.'/catalog.class.php';
	require_once BUSINESS_DIR.'/seasonsModel.class.php';
	require_once BUSINESS_DIR.'/classes.class.php';
	require_once BUSINESS_DIR.'/seasonModel.class.php';
	require_once BUSINESS_DIR.'/user.class.php';
	require_once PRESENTATION_DIR.'/link.class.php';

	if( user::isAdmin() )
	{
		$c = seasonsModel::get();
		
		$size = sizeof( $c );

		for( $i = 0; $i < $size; $i++ )
		{
			header( 'Content-Type:text/xml' );
			echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>';

			echo '<SEASONS>';

			for( $i = 0; $i < $size; $i++ )
			{
				echo '<SEASON>';
					echo '<ID>'.$c[ $i ][ 'id' ].'</ID>';									
					echo '<TITLE>'.$c[ $i ][ 'season' ].' '.$c[ $i ][ 'year' ].'</TITLE>';
					echo '<START>'.date( 'm-d-Y', strtotime( $c[ $i ][ 'start_date' ] ) ).'</START>';
					echo '<END>'.date( 'm-d-Y', strtotime( $c[ $i ][ 'end_date' ] ) ).'</END>';
				echo '</SEASON>';
			}	
			echo '</SEASONS>';
		}
	}
	else
	{
		header( 'Location:'.Link::Build( '' ) );
		exit;
	}
?>