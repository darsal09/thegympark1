<?php
	require_once 'include/config.php';
	require_once 'business/databaseHandler.class.php';
	require_once PRESENTATION_DIR . '/link.class.php';
	require_once 'business/newsletters.class.php';
	
  $newsletter = newsletters::getNewsletter( $_GET[ 'tgp_newsletter_id' ] );
  
  echo stripslashes( html_entity_decode( $newsletter[ 'message' ] ) );
?>
