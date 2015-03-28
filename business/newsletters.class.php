<?php

class newsletters
{
	public static function addNewsletter( $nTitle, $nMessage )
	{
		if( empty( $nTitle ) )
			return 0;
			
		return procedureHandler:: getOne( 'tgp_newsletter_add', array( ':nTitle' => $nTitle, ':nMessage' => $nMessage ) );
	}
	
	public static function addFilter( $fTitle, $fDesc )
	{
		if( empty( $fTitle ) )
			return 0;
			
		return procedureHandler::getOne( 'tgp_newsletter_add_filter', array( ':fTitle' => $fTitle, ':fDesc' => $fDesc ) );
	}
	
	public static function updateNewsletter( $nID, $nTitle, $nMessage )
	{
		if( $nID < 1 )
			return 0;
			
		return procedureHandler::Execute( 'tgp_newsletter_update', array( ':nID' => $nID, ':nTitle' => $nTitle, ':nMessage' => $nMessage ) );
	}
	
	public static function getNewsletters()
	{
		return databaseHandler::getAll( 'CALL tgp_get_newsletters()' );
	}
	
	public static function getNewsletter( $nID )
	{
		if( $nID < 1 )
			return false;
			
		return procedureHandler::getRow( 'tgp_get_newsletter', array( ':nID' => $nID ) );
	}
	
	public static function addCategory( $cTitle, $cDesc, $cFilterID )
	{
		if( empty( $cTitle ) )
			return 0;
			
		return procedureHandler::getOne( 'tgp_newsletter_add_category', array( ':cTitle' => $cTitle, ':cDesc' => $cDesc, ':cFilterID' => $cFilterID ) );
	}
	
	public static function addNewMember( $mP )
	{
		if( sanitize::checkForEmptyVariables( $mP ) )
			return 0;
			
		return procedureHandler::Execute( 'tgp_newsletter_add_new_member', array( ':name' => $name, ':email' => $email, ':cID' => 1 ) );
	}
	
	public static function addMember( $mID )
	{
		if( $mID < 1 )
			return 0;
			
		return procedureHandler::Execute( 'tgp_newsletter_add_member', array( ':mID' => $mID ) );
	}
	
	public static function addMembers( $members )
	{		
		foreach( $members AS $member )
			self::addMember( $members );
			
		return true;
	}
	
	public static function addExistingUserToCategory( $cID, $mID )
	{		
		return procedureHandler::Execute( 'tgp_newsletter_category_add_existing_user', array( ':cID' => $cID, ':mID' => $mID ) );
	}
	
	public static function addExistingUsersToCategory( $cID, $members )
	{		
		foreach( $members AS $member )
			self::addExistingUserToCategory( $cID, $member );
			
		return true;
	}
	
	public static function deleteCategory( $cID )
	{
		if( $cID < 1 )
			return 0;
			
		return procedureHandler::getOne( 'tgp_newsletter_delete_category', array( ':cID' => $cID ) );
	}
	
	public static function deleteNewsletter( $nID )
	{
		if( $nID < 1 )
			return 0;
			
		return procedureHandler::Execute( 'tgp_delete_newsletter', array( ':nID' => $nID ) );
	}
	
	public static function getCategory( $cID )
	{		
		$category 				= databaseHandler::getRow( 'tgp_get_newsletter_category', array( ':cID' => $cID ) );
		$category[ 'members' ] 	= self::getCategoryMembers( $cID );
		
		return $category;
	}
	
	public static function getCategoryMembers( $cID )
	{
		if( $cID < 1 )
			return array();
			
		$members = procedureHandler::getAll( 'tgp_get_newsletter_category_members', array( ':cID' => $cID ) );
		
		$size = sizeof( $members );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$members[ $i ][ 'link_to_member' ] = Link::Build( 'newsletter/category-'.$cID.'/member-info/'.$members[ $i ][ 'id' ] );
			$members[ $i ][ 'link_to_remove' ] = Link::Build( 'newsletter/category-'.$cID.'/member-'.$members[ $i ][ 'id' ].'/removeNewsletterCategoryMember' );
		}
			
		return $members;
	}
	
	public static function getCategoryMember( $cID, $mID )
	{
		if( $cID < 1 || $mID < 1 )
			return array();
			
		return procedureHandler::getRow( 'tgp_get_newsletter_category_member', array( ':cID' => $cID, ':mID' => $mID ) );
	}
	
	public static function getCategoryNonMembers( $cID )
	/*
		This function gets all the members that are in the newsletter but are not in the this category
	*/
	{
		if( $cID < 1 )
			return 0;
			
		return procedureHandler::getAll( 'tgp_get_newsletter_category_non_members', array( ':cID' => $cID ) );
	}
	
	public static function getCategories()
	{		
		$categories = databaseHandler::getAll( 'CALL tgp_get_newsletter_categories()' );
		
		$size = sizeof( $categories );
		
		for( $i = 0; $i < $size; $i++ )
			$categories[ $i ][ 'link_to_category' ] = Link::Build( 'newsletter/category-info/'.$categories[ $i ][ 'id' ] );
		
		return $categories;
	}
	
	public static function getFilters()
	{
		$filters = databaseHandler::getAll( 'CALL tgp_get_newsletters_filters()' );
		
		$size = sizeof( $filters );
		
		for( $i = 0; $i < $size; $i++ )
			$filters[ $i ][ 'link_to_edit' ] = Link::Build( 'newsletterFilters/edit-'.$filters[ $i ][ 'id' ] );
			
		return $filters;
	}
	
	public static function getMembers()
	{		
		return databaseHandler::getAll( 'CALL tgp_get_newsletter_members()' );
	}
	
	public static function getNonMembers()
	{		
		return databaseHandler::getAll( 'CALL tgp_get_newsletter_non_members()' );
	}
	
	public static function removeMemberFromCategory( $cID, $mID )
	{
		if( $cID < 1 || $mID < 1 )
			return 0;
			
		return procedureHandler::Execute( 'tgp_newsletter_remove_category_member', array( ':cID' => $cID, ':mID' => $mID ) );
	}
	
	public static function sendNewsletter( $nID, $cIDS )
	{
		$size = sizeof( $cIDS ); //categories to send it to
		$newsletter = self::getNewsletter( $nID );
	
		for( $i = 0; $i < $size; $i++ )
		{
			$members = self::getCategoryMembers( $cIDS[ $i ] );
			
			$m_size = sizeof( $members );
			
			for( $j = 0; $j < $m_size; $j++ )
			{	
				$student = $members[ $i ];
				self::sendNewsletterToStudent( $newsletter, $student);
			}
		}
		
		return true;
	}
	
	private static function updateNewsletterSentToMember( $nID, $mID )
	{
		return procedureHandler::Execute( 'tgp_newsletter_update_sent_to_member', array( ':nID' => $nID, ':mID' => $mID ) );
	}
	
	public static function updateFilterDescription( $fID, $fDesc )
	{
		return procedureHandler::Execute( 'tgp_newsletter_update_filter_description', array( ':fID' => $fID, ':fDesc' => $fDesc ) );
	}
	
	public static function sendNewsletterToAge( $nID, $subject, $aStart, $aEnd, $season = null )
	{
		if( intval( $nID ) < 1 )
		{
			echo '<p class=error>Could not send newsletter!<br/>You need to select a newsletter</p>';
			return false;
		}
		
		$aStart = sanitize::sani( $aStart, 'INTIGER' );
		$aEnd 	= ( sanitize::sani( $aEnd, 'INTIGER' ) + 1 );
		
		return self::sendNewsletterToStudents( $nID, $subject, newsletterFilters::getAgeType( $aStart, $aEnd, $season ) );
	}
	
	
	public static function sendNewsletterToCategory( $nID, $subject, $cIDs, $season )
	{
		
		if( intval( $nID ) < 1 )
		{
			echo '<p class=error>Could not send newsletter!<br/>You need to select a newsletter</p>';
			return false;
		}
		
		return self::sendNewsletterToStudents( $nID, $subject, newsletterFilters::getCategoryType( $cIDs, $season ) );
	}
	
	public static function sendNewsletterToClasses( $nID, $subject, $classes, $season )
	{		
		if( intval( $nID ) < 1 || !is_array( $classes ) )
		{
			echo "<p class=error>Could not send newsletter!<br/>Either you did you did not select a newsletter correctly or you did not collect classes information correctly</p>";
			return false;
		}
				
		return self::sendNewsletterToStudents( $nID, $subject, newsletterFilters::getClassesType( $classes, $season ) );		
	}
	
	public static function sendNewsletterToClassTitles( $nID, $subject, $cTitles, $season )
	{
		if( !is_array( $cTitles ) || intval( $nID ) < 1 )
		{
			echo '<p class=error>Could not send newsletter!<br/>Either you did not select the newsletter right or you did not collect the class titles correctly</p>';
			return false;
		}
		
		self::sendNewsletterToStudents( $nID, $subject, newsletterFilters::getClassTitleType( $cTitles, $season ) );
		
		return true;
	}
	
	public static function sendNewsletterToDay( $nID, $subject, $nDays, $season )
	{	
		return self::sendNewsletterToStudents( $nID, $subject, newsletterFilters::getDayType( $nDays, $season ) );
	}
	
	public static function sendNewsletterToNewsletterCategories( $nID, $nSubject, $nCategories, $season )
	{
		
		return self::sendNewsletterToStudents( $nID, $nSubject, newsletterFilters::getNewsletterType( $nCategories, $season ) );
	}
	
	public static function sendNewsletterToMonth( $nID, $subject, $mFromNow, $mToFromNow, $season )
	{
	
		return self::sendNewsletterToStudents( $nID, $subject, newsletterFilters::getMonthType( $mFromNow, $mToFromNow, $season ) );
	}
	
	public static function sendNewsletterToProgram( $nID, $subject, $pIDs, $season )
	{
		return self::sendNewsletterToStudents( $nID, $subject, newsletterFilters::getProgramType( $pIDs, $season )  );
	}
	
	public static function sendNewsletterToTime( $nID, $subject, $startTime, $endTime, $season )
	{
		return self::sendNewsletterToStudents( $nID, $subject, newsletterFilters::getTimeType( $startTime, $endTime, $season ) );
	}
	
	public static function sendNewsletterToStudents( $nID, $subject, $students )
	{	
		$newsletter = self::getNewsletter( $nID );				
		
		foreach( $students AS $student )
		{
			if( self::sendNewsletterToStudent( $newsletter, $subject, $student ) )
			{
				//echo '<p>Email was sent to: '.$student[ 'first' ].' '.$student[ 'last' ].' at email '.$student[ 'email' ].'</p>';
				self::updateNewsletterSentToMember( $nID, $student[ 'id' ] );
			}
			else
				echo '<p class=error>Email was not sent to '.$student[ 'first' ].' '.$student[ 'last' ].' at ';
					if( !empty( $student[ 'email' ] ) )
						echo $student[ 'email' ];
					else
						echo $student[ 'parent_email' ];
					echo '</p>';
		}
		
		return true;
	}
		
	public static function sendNewsletterToStudent( $newsletter, $subject, $student )
	{
		$name = $student[ 'first' ].' '.$student[ 'last' ];
		
		$email = $student[ 'email' ];
		
		if( empty( $student[ 'email' ] ) )
			$email = $student[ 'parent_email' ];

		if( empty( $email ) )
			return false;
			
		$headers  = "From: The Gym Park < newsletter@thegympark.com >\r\n";
		$headers .= "To: $name < $email > \r\n";
		$headers .= 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

		$message = stripslashes( html_entity_decode( $newsletter[ 'message' ] ) );
		$message .= '<p>&nbsp;</p><p>This email was sent to: '.$name.' -- '.$email.'</p>';
				
		$message .= '<p>This email was sent by: The Gym Park<br/>81 Oak Street<br/>Greenpoint NY 11222<br/><a href="http://www.thegympark.com">The Gym Park</a></p>';
		$message .= '<p>Hours: The Gym Park is open all days, except major holidays, from 8am-8pm. </p>';
		$message .= '<p><a href="">Unsubscribe</a> | <a href="">Privacy Policy</a></p>';
		
		return mail( $email, $subject, $message, $headers );
	}
}
?>