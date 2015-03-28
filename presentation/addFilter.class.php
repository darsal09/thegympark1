<?php
class addFilter
{
	public $mResult;
	
	public function __construct()
	{
		
		if( isset( $_POST[ 'tgp_filter_save' ] ) )
			$this->saveFilter();
	}
	
	private function saveFilter( )
	{
		if( !isset( $_POST[ 'tgp_filter_save' ] ) )
			return;
			
		$title 	= $_POST[ 'tgp_filter_title' ];
		$desc 	= $_POST[ 'tgp_filter_desc' ];
		
		$result = newsletters::addFilter( $title, $desc );
		
		if( $result == 1 )
		{
			header( 'Location:'.Link::Build( 'newsletterFilters' ) );
			exit;
		}
			
		$this->mResult = "The filter already exist in the system";
		
		
	}
	
}
?>