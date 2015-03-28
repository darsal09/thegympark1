<?php
class holiday
{
	public $mP = array( ':title' => '', ':hdate' => '' );
	public $mErrors = array( ':title' => false, ':hdate' => false );
	public $mLinks;
	public $mHoliday;
	public $mHolidayID;
	public $mEdit = false;
		
	public $mLinkToAddHoliday;
	public $mLinkToEdit;
	public  $mLinkToRemove;
	
	private $_mRemove = false;
	private $_mRequired = array( ':title' => true, ':hdate' => true );
	
	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_holiday_id' ] ) )
		{
			echo '<p class=error>You need a holiday id to be able to view a holiday information.</p>';
			exit;
		}
		
		$this->mHolidayID = sanitize::sani( $_GET[ 'tgp_holiday_id' ], 'INTIGER' );
		
			
		$this->checkPostRequests();
		$this->checkGetRequests();
	}
	
	public function init()
	{
		
		$this->mHoliday = holidayModel::get( array( ':ID' => $this->mHolidayID ) );
		
		$this->setLinks();
		$this->setDates();
	}
	
	private function checkPostRequests()
	{
		if( isset( $_POST[ 'tgp_edit_holiday_save' ] ) )
			$this->saveChanges();
		
		if( isset( $_POST[ 'tgp_edit_holiday_cancel' ] ) )
			$this->redirect();	
			
		if( isset( $_POST[  'tgp_cancel_remove' ] ) )
			$this->redirect();
		
		if( isset( $_POST[ 'tgp_remove_holiday' ] ) )
			$this->remove();
	}
	
	private function checkGetRequests()
	{
		if( isset( $_GET[ 'tgp_holiday_remove' ] ) )
			$this->setRemove();
		
		if( isset( $_GET[ 'tgp_holiday_edit' ] ) )
			$this->mEdit = true;			
	}
	/*
		This function save the changes made to the holiday once the save the changes button is press
	*/
	private function saveChanges()
	{
		if( !isset( $_POST[ 'tgp_edit_holiday_save' ] ) )
			return 0;
			
		$this->mP = array( ':title' => array( 'filter' => FILTER_SANITIZE_STRING ),
							':date' => array( 'filter' => FILTER_CALLBACK, 'options' => 'sanitize::date' )
						);
						
		$this->mP = sanitize::filterInputs( 'POST', $this->mP );
		$this->mP[ ':hID' ] = $this->mHolidayID;
		
		$this->mP[ ':weekday' ] = date( 'l', strtotime( $this->mP[ ':date' ] ) );
		$this->mP[ ':year' ] = date( 'Y', strtotime( $this->mP[ ':date' ] ) );
		
		if( sanitize::checkForEmptyVariables( $this->mP ) )
		{
			echo '<p class=error>You have empty fields.</p>';
			print_r( $this->mP );	
			return;
		}
	
		holidayModel::update( $this->mP );
	
		header( 'Location:index.php?tgp_holiday_id='.$this->mHolidayID.'&action=holiday' );
		exit;
	}
	
	private function setDates()
	{
		$this->mHoliday[ 'hdate' ] = date( 'm-d-Y', strtotime( $this->mHoliday[ 'hdate' ] ) );
		$this->mHoliday[ 'addedOn' ] = date( 'l, M dS, Y g:ia', strtotime( $this->mHoliday[ 'addedOn' ] ) );
	}
	
	private function setLinks()
	{
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'admin' ), 'title' => '&laquo;Admin' );
		$this->mLinks[ sizeof( $this->mLinks ) ] = array( 'link' => Link::Build( 'index.php?tgp_year='.$this->mHoliday[ 'year' ].'&action=holidays' ), 'title' => '&laquo;Holidays' );
		
		$this->mLinkToAddHoliday 	= Link::Build( 'index.php?action=addHoliday' );
		$this->mLinkToEdit 			= Link::Build( 'index.php?tgp_holiday_id='.$this->mHolidayID.'&tgp_holiday_edit&action=holiday' );
		$this->mLinkToRemove 		= Link::Build( 'index.php?tgp_holiday_id='.$this->mHolidayID.'&tgp_holiday_remove&action=holiday' );
	}

	private function setRemove()
	{
		echo '<p style="background:red; color:white;font-weight:bold;font-size:20px;">Are you sure you want to remove holiday</p>';
		echo '<form method=post>';
			echo '<p><input type=submit name=tgp_remove_holiday value="Remove&raquo;"></p>';
			echo '<p><input type=submit name=tgp_cancel_remove value="No"></p>';
		echo '</form>';
	}
	
	private function remove()
	{
		if( !isset( $_POST[ 'tgp_remove_holiday' ] ) )
			return;
		
		holidayModel::remove( array( ':hID' => $this->mHolidayID ) );
		
		header( 'Location:index.php?action=holidays' );
		exit;
	}
	
	private function redirect()
	{
		header( 'Location:index.php?tgp_holiday_id='.$this->mHolidayID.'&action=holiday' );
		exit;	
	}
	
	public function __destruct()
	{
	
	}
}
?>