<?php
class addHoliday
{
	public $mP; // = array( ':title' => '', ':weekday' => '', ':date' => '', ':year' => '' );
	
	public function __construct()
	{
		if( isset( $_POST[ 'tgp_add_holiday_save' ] ) )
			$this->saveHoliday();
	}
	
	public function init()
	{
	
	}
	
	private function saveHoliday()
	{
		if( !isset( $_POST[ 'tgp_add_holiday_save' ] ) )
			return;
		
		sanitize::trim( 'POST' );
		
		$this->mP = array(
			':title'	=> array( 'filter' => FILTER_SANITIZE_STRING ),
			':date' 	=> array( 'filter' => FILTER_CALLBACK, 'options' => 'sanitize::date' )
			);
		
		$this->mP = sanitize::filterInputs( 'POST', $this->mP );
		
		$this->mP[ ':year' ] = date( 'Y', strtotime( $this->mP[ ':date' ] ) );
		$this->mP[ ':weekday' ] = date( 'l', strtotime( $this->mP[ ':date' ] ) );
		
		if( sanitize::checkForEmptyVariables( $this->mP ) )
		{
			echo '<p class=error>There are empty variables</p>';
			print_r( $this->mP );
			return 0;
		}
		
		holidayModel::add( $this->mP );
		
		header( 'Location:index.php?tgp_year='.$this->mP[ ':year' ].'&action=holidays' );
		exit;
		
	}
	
	public function __destruct()
	{
	
	}
}
?>