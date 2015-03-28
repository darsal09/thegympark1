<?php
	class emails
	{
		private function __construct()
		{
		
		}
	
		public static function add( $mP )
		{
			if( !is_array( $mP ) )
				return;
			
			return emailModel::add( $mP );
		}
		
		public static function getEmail( $mP )
		{
			return emailModel::get( $mP );
		}

		public static function sent( $mP )
		{
			return emailModel::sent( $mP );
		}
		
		/*
			The array $mP comes  with two parameters: :subject and :message
			With $start and $end with each are the range of age that I trying to filter the members to send them an email
			I will get the users' info to get their the next three parameters: :name, :email, :sID
		*/
		public static function sendEmailToAge( $start, $end, $mP )
		{
			$members  = newsletterFilters::getAgeType( $start, $end );
						
			self::send( $members, $mP );
			
			return 1;
		}
		
		public static function sendEmailToCategory( $cat, $mP )
		{
			$cat = self::prepareArray( $cat );

			if( !is_array( $cat ) )
				return -1;
			
			if( !is_array( $mP ) )
				return -1;
			
			//get all the members that are registered in the classes that belong to the categories the user has selected
			$members = filters::getCategoryType( $cat );
			$mP[ 'type' ] = 'Category';
			
			self::send( $members, $mP );
			
			return 1;
			
		}
		/*
			The function takes two parameters an array of classes in $c and the $mP holds the information about the message $mP[ 'message' ] and $mP[ 'subject' ]
		*/
		public static function sendEmailToClass( $c, $mP )
		{
			$c = self::prepareArray( $c );
			
			if( !is_array( $c ) || !is_array( $mP ) )
				return -1;
				
			$members = filters::getClassesType( $c ); //grab the members registered in the class
			$mP[ 'type' ] = 'Class';
			
			self::send( $members, $mP ); //send message $mP to members $members
			
			return 1;
		}
		
		public static function sendEmailToClassTitle( $ct, $mP )
		{
			$ct = self::prepareArray( $ct );
			
			if( !is_array( $ct ) )
				return -1;
				
			if( !is_array( $mP ) )
				return -2;
				
			$members = filters::getClassTitleType( $ct );
			$mP[ 'type' ] = 'Class Title';
			
			self::send( $members, $mP );
			
			return 1;
		}
		
		public static function sendEmailtoDay( $d, $mP )
		{
			$d = self::prepareArray( $d );
			
			if( !is_array( $d ) )
				return -1;
				
			if( !is_array( $mP ) )
				return -2;
				
			$members = filters::getDayType( $d, $mP );
			
			self::send( $members, $mP );
			
			return 1;
		}
		
		public static function sendEmailToMonth( $start, $end, $mP )
		{				
			$members = filters::getMonthType( $start, $end );
			
			self::send( $members, $mP );
			
			return 1;
		}
		
		public static function sendEmailToPrograms( $p, $mP )
		{
			$p = self::prepareArray( $p );
			
			if( !is_array( $p ) )
				return -1;
				
			if( !is_array( $mP ) )
				return -1;
				
			$members = filters::getProgramType( $p );
			$mP[ 'type' ] = 'Program';
			
			self::send( $members, $mP );
			
			return 1;
		}
		
		public static function sendEmailToTime( $start, $end, $mP )
		{
			$members = filters::getTimeType( $start, $end );
			
			self::send( $members, $mP );
			
			return 1;
		}
		
		public static function send( $M, $mP )
		{
			$size = sizeof( $M );
			//print_r( $M );
			for( $i = 0; $i < $size; $i++ )
			{
				if( !empty( $M[ $i ][ 'email' ] ) || !empty( $M[ $i ][ 'parent_email' ] ) )
				{
					set_time_limit(0);
					
					$mP[ ':email' ] = '';
					
					$mP[ ':name' ] = $M[ $i ][ 'first' ].' '.$M[ $i ][ 'last' ];
					
					if( isset( $M[ $i ][ 'email' ] ) )
						$mP[ ':email' ] = $M[ $i ][ 'email' ];
						
					$mP[ ':sID' ] = $M[ $i ][ 'id' ];
					
					if( empty( $M[ $i ][ 'email' ] ) )
						$mP[ ':email' ] = $M[ $i ][ 'parent_email' ];
				
					switch( $mP[ 'type' ] )
					{						
						case 'Category' || 'Class' || 'Class Title' || 'Program':
							$mP[ 'ctID' ] 	= $M[ $i ][ 'ctID' ];
							$mP[ 'clID' ] 	= $M[ $i ][ 'clID' ];
							$mP[ 'pID' ] 	= $M[ $i ][ 'pID' ];
							$mP[ 'cID' ] 	= $M[ $i ][ 'cID' ];
							break;
						
						default:
							$mP[ 'ctID' ] 	= 0;
							$mP[ 'clID' ] 	= 0;
							$mP[ 'pID' ] 	= 0;
							$mP[ 'cID' ] 	= 0;
					}
					
//					print_r( $mP );
					emailModel::send( $mP );
				}
			}
		}

		public static function sendSingle( $mP )
		{
			if( !is_array( $mP ) )
				return;
			
			return emailModel::sendSingle( $mP );
		}
		
		public static function reSendEmail( $mP )
		{
			if( !is_array( $mP ) )
				return false;
				
			return emailModel::reSendEmail( $mP );
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
				
			return emailModel::updateSent( $mP );
		}
		
		private static function putInOutbox( $mP )
		{
			if( !is_array( $mP ) )
				return;
				
			return emailModel::putInOutbox( $mP );
		}
	}
?>