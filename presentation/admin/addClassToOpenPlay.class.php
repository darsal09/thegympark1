<?php

class addClassToOpenPlay
{

	public function __construct()
	{
		if( isset( $_GET[ 'tgp_openplay_id' ] ) )
			$this->mOpenPlayID = sanitize::sani( $_GET[ 'tgp_openplay_id' ], 'INTIGER' );
			
		openPlayModel::addClassesNotIn( array( ':opID' => $this->mOpenPlayID ) );
		
		helper::redirect( 'admin/open-plays/'.$this->mOpenPlayID );
	}
	
	public function init()
	{
	
	}
	
	public function __destruct()
	{
	
	}

}

?>