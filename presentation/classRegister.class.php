<?php
class classRegister
{
	public $mRegistered = false;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_class_id' ] ) )
		{				
			$classID  = intval( sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' ) );			
			
			$classInfo = catalog::getClass( $classID );
			$classPackage = '';
			
			list( $hour, $minute, $second ) = explode( ':', $classInfo[ 'start_time' ] );
			
			if( intval( $minute ) == 0 )
				$classInfo[ 'start_time' ] = date( 'ga', strtotime( $classInfo[ 'start_time' ] ) );
			else
				$classInfo[ 'start_time' ] = date( 'g:ia', strtotime( $classInfo[ 'start_time' ] ) );
				
			$classDay = $classInfo[ 'weekday' ].'__'.$classInfo[ 'start_time' ];
				
			$result = shoppingCart::addClassToCart( $classInfo[ 'class_id' ], $classInfo[ 'title_id' ], $classInfo[ 'title' ], $classDay, $classInfo[ 'type' ], $classInfo[ 'price' ], $classPackage );
			
			if( $result )
			{
				header( 'Location:'.Link::Build( '' ) );
				exit;
			}
		}
		
		
	}
}
?>