<?php
class register
{
	public $mHasKids = true;
	public $mHasFamily = true;
	public $mTypes;
	
	public function __construct()
	{
	
	}
	
	public function init()
	{
		$this->mRegistration = family::registeredMembers();
		
		$this->mTypes = array( 'First' => 'First 9 weeks', 'Last' => 'Last 9 weeks', 'Full' => 'Full season' );
		$this->setDates();
		
	}
	
	private function setDates()
	{
		$R = &$this->mRegistration;
		$size = sizeof( $R );
		
		for( $i = 0; $i < $size; $i++ )
		{
			switch( $R[ $i ][ 'types' ] ) 
			{
				case 'First':
					$R[ $i ][ 'begin' ] = $R[ $i ][ 'start_date' ];
					$R[ $i ][ 'end' ] = date( 'Y-m-d', strtotime( "+8 weeks", strtotime( $R[ $i ][ 'start_date' ] ) ) );
					break;
				
				case 'Last': 
					$R[ $i ][ 'begin' ] = date( 'Y-m-d', strtotime( "+9 weeks", strtotime( $R[ $i ][ 'start_date' ] ) ) );
					$R[ $i ][ 'end' ] = $R[ $i ][ 'end_date' ];
					break;
					
				default:
					$R[ $i ][ 'begin' ] = $R[ $i ][ 'start_date' ];
					$R[ $i ][ 'end' ] = $R[ $i ][ 'end_date' ];
			}
		}
	}
}
?>