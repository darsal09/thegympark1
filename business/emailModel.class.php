<?php
	require_once BUSINESS_DIR.'/emailTemplate.class.php';
	
	class emailModel
	{
		private function __construct()
		{
		
		}
	
		public static function add( $mP )
		{
			if( !is_array( $mP ) )
				return;
			$eID = self::exist( $mP );
			
			if( $eID > 0 )
				return $eID;
			
			$sql = 'INSERT INTO 
					tgp_emails( subject, message )
					VALUES( :subject, :message )';
				
			databaseHandler::Execute( $sql, $mP );
			
			return databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );
		}
		
		public static function getEmail( $mP )
		{
			$sql = 'SELECT * 
					FROM tgp_emails
					WHERE id = :eID';
			
			return databaseHandler::getRow( $sql, $mP );
		}
	
		public static function get( $mP )
		{
			$sql = 'SELECT * 
					FROM tgp_emails
					WHERE id = :eID';
			
			return databaseHandler::getRow( $sql, $mP );		
		}
	
		public static function sent( $mP )
		{
			$sql = 'SELECT *
					FROM tgp_email_sent
					WHERE participant_id = :sID AND email_id = :eID';
					
			return databaseHandler::getAll( $sql, $mP );
		}
		
		public static function send( $mP )
		{								
			if( !is_array( $mP ) )
				return;
				
			if( !isset( $mP[ ':pID' ] ) )
				$mP[ ':pID' ] = 0;
			
			if( !isset( $mP[ ':cID' ] ) )
				$mP[ ':cID' ] = 0;
			
			if( !isset( $mP[ ':ctID' ] ) )
				$mP[ ':ctID' ] = 0;
				
			$name = $mP[ ':name' ];
			$email = $mP[ ':email' ];
			
			$headers  = "From: The Gym Park < info@thegympark.com >\r\n";
			$headers .= "To: $name < $email > \r\n";
			$headers .= 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
			
			$mP[ ':message' ] = emailTemplate::set( $mP[ ':message' ] );
			
			if( !empty( $email ) )
			{
				if( mail( $email, $mP[ ':subject' ], $mP[ ':message' ], $headers ) )
				{
					//echo '<p>Email sent to '.$name.' to email '.$email.'</p>';
						
					$emailID = emailModel::add( array( ':subject' => $mP[ ':subject' ], ':message' => $mP[ ':message' ] ) );
					
					//self::updateSent( array( ':uID' => $mP[ ':uID' ], ':sID' => $mP[ ':sID' ], ':pID' => $mP[ 'pID' ], ':cID' => $mP[ 'cID' ], ':ctID' => $mP[ 'ctID' ], ':classID' => $mP[ 'clID' ], ':eID' => $emailID ) );
					
					return true;
				}
				
				self::putInOutbox( array( ':sID' => $mP[ ':sID' ], ':header' => $headers, ':to' => $email, ':subject' => $mP[ ':subject' ], ':message' => $mP[ ':message' ] ) );
				
				echo '<p><b class=error>Email not sent!</b><br/> We could not send the email to <b><a href="'.Link::Build( 'index.php?tgp_student_id='.$mP[ ':sID' ].'&action=viewStudent' ).'">'.$name.'</a></b> to the  email address <b>'.$email.'</b></p>';
				echo '<p>The email was put in the email outbox and we will try to send it later.</p>';	
					
					return false;
			}
			else
			{
				echo '<p class=error>You do not have an email for <a href="'.Link::Build( 'index.php?tgp_student_id='.$mP[ ':sID' ].'&action=viewStudent' ).'">'.$name.'</a></p>';
				return false;
			}
		}

		public static function sendSingle( $mP )
		{
			if( !is_array( $mP ) )
				return;
			
			if( empty( $mP[  ':email' ] ) )
			{
				echo '<p class=error>You do not have an email address to send it to this participant.</p>';
				return false;
			}
			
			return self::send( $mP );
		}
		
		public static function reSendEmail( $mP )
		{
			if( !is_array( $mP ) )
			{
				echo '<p class=error>You need pass an array as a parameter</p>';
				return -1;
			}
			
			$Email = emails::getEmail( array( ':eID' => $mP[ ':eID' ]  ) );
			$Info = student::getInfo( $mP[ ':sID' ] );
			
			$email = $Info[ 'email' ];
			
			if( empty( $email ) )
				$email = $Info[ 'parent_email' ];

			return self::send( array( ':subject' => $Email[ 'subject' ], ':message' => $Email[ 'message' ], ':name' => $Info[ 'first' ].' '.$Info[ 'last' ], ':email' => $email, ':sID' => $mP[ ':sID' ] ) );
		}
		
		private static function prepareArray( $cat )
		{
			if( !is_array( $cat ) )
			{
				if( intval( $cat ) > 0 )
					$cat = array( 0 => intval( $cat ) );
				else
					return -1;
			}
			
			return $cat;
		}
		
		private static function updateSent( $mP )
		{
		/*
			develop the part where we keep track of the email sent and to whom it was sent.
		*/			
			if( !is_array( $mP ) )
				return;
				
			if( user::isLoggedIn() )		
				$mP[ ':uID' ] = 	user::getId();
			$sql = 'INSERT INTO
					tgp_email_sent( class_id, class_title_id, program_id, category_id, user_id, email_id, participant_id)
					VALUES( :classID, :ctID, :pID, :cID, :uID, :eID, :sID )';
			
			return databaseHandler::Execute( $sql, $mP );
			return procedureHandler::Execute( 'tgp_update_email_sent', $mP );
		}
		
		public static function putInOutbox( $mP )
		{
			if( !is_array( $mP ) )
				return;
				
			return outbox::add( $mP );
		}
		
		private static function exist( $mP )
		{
			$sql = 'SELECT id
					FROM tgp_emails
					WHERE subject = :subject AND message = :message';
							
			return databaseHandler::getOne( $sql, $mP );
		}
	}
?>