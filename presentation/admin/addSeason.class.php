<?php
class addSeason
{
	public $mP = array( ':season' => '', ':year' => '', ':start_date' => '', ':end_date' => '' );
	public $mErrors = array( ':season' => false, ':year' => false, ':start_date' => false, ':end_date' => false );
	
	public $mLinkToAddClass;
	public $mLinkToAddClasses;
	
	private $_mRequired = array( ':season' => true, ':year' => true, ':start_date' => true, ':end_date' => true );
	
	

	public function __construct()
	{
		if( isset( $_POST[ 'tgp_add_season' ] ) )
			$this->addSeason();
	}
		
	public function init()
	{
		$this->mLinkToAddClasses = Link::Build( 'index.php?action=addClasses' );
		
		$this->mLinks[] = array( 'link' => Link::Build( 'admin/seasons' ), 'title' => '&laquo;Seasons' );
	}
		
	private function addSeason()
	{
		$this->mP[ ':season' ] = sanitize::sani( $_POST[ 'tgp_season_season' ], 'STRING' );
		
		list( $m, $d, $y1 ) = explode( '/', sanitize::sani( $_POST[ 'tgp_season_start_date' ], 'STRING'  ) );
		$this->mP[ ':year' ] = $y1;
	
		$this->mP[ ':start_date' ] = $y1.'-'.$m.'-'.$d;
		
		list( $m, $d, $y ) = explode( '/', sanitize::sani( $_POST[ 'tgp_season_end_date' ], 'STRING' ) );
		$this->mP[ ':end_date'  ] = $y.'-'.$m.'-'.$d;
			
		if( $this->hasErrors() )
		{
			echo '<p class=error>There are errors</p>';
			return;
		}	
		
		$sID = seasonModel::add( $this->mP );
		
		if( $sID < 1 )
		{
			$this->mMessage = 'We could not save the season';
			return;
		}
			
		helper::redirect( 'admin/seasons/'.$sID  );
	}
	
	private function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
			if( $this->_mRequired[ $field ] && empty( $value ) )
				$this->mErrors[ $field ] = true;
				
		if( in_array( true, $this->mErrors ) )
			return true;
			
		return false;
	}
	
	public function __destruct()
	{
	
	}
}
?>