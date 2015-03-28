<?php
class holidays
{
	public $mHolidays;
	public $mYear;
	
	public $mLinkToAddHoliday;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_year' ] ) )
			$this->mYear = sanitize::sani( $_GET[ 'tgp_year' ], 'INTIGER' );
		else
			$this->mYear = date( 'Y' );
		
	}
	
	public function init()
	{
		
		$this->mHolidays = holidaysModel::get( array( ':year' => $this->mYear ) );
		$this->setLinks();
		$this->setDates();
	}
	
	private function setLinks()
	{
		$this->mLinkToAddHoliday = Link::Build( 'index.php?action=addHoliday' );
	}
	
	private function setDates()
	{
		$H = &$this->mHolidays;
		$size = sizeof( $H );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$H[ $i ][ 'hdate' ] = date( 'l F jS, Y', strtotime( $H[ $i ][ 'hdate' ] ) );
			$H[ $i ][ 'link' ] = Link::Build( 'index.php?tgp_holiday_id='.$H[ $i ][ 'id' ].'&action=holiday' );
			$H[ $i ][ 'edit' ] = Link::Build( 'index.php?tgp_holiday_id='.$H[ $i ][ 'id' ].'&tgp_holiday_edit&&action=holiday' );
			$H[ $i ][ 'remove' ] = Link::Build( 'index.php?tgp_holiday_id='.$H[ $i ][ 'id' ].'&tgp_holiday_remove&&action=holiday' );
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>