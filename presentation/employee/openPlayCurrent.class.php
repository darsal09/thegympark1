<?php
class openPlayCurrent
{
	public $mOpenPlay;
	public $mResults = array();
	public $mParticipants = array();
	public $mLetters = array();
	public $mClass;
	
	public $mLetter = null;
	public $mLinkToAll;
	
	public $mLinkToSortByFirstName;
	public $mLinkToSortByLastName;
	public $mLinkToSortByAmount;
	public $mLinkToSortByUsed;
	public $mLinkToGetPackages;
	public $mLinkToAddPackage;
	public $mLinkToAddNewParticipant;
	
	public $mSort = null;
	
	public function __construct()
	{		
		if( isset( $_GET[ 'tgp_openplay_id' ] ) )
			$this->mOpenPlay = openPlayModel::get( array( ':opID' => sanitize::sani( $_GET[ 'tgp_openplay_id' ], 'INTIGER' ) ) );	
		else
		{
			$this->mOpenPlay = openPlayModel::getCurrent();
			
			if( empty( $this->mOpenPlay ) )
				$this->mOpenPlay = openPlayModel::getNext();
		}
			
		$this->mClass = openPlayModel::getCurrentSession( array( ':opID' => $this->mOpenPlay[ 'openplayID' ] ) );
		
		if( isset( $_GET[ 'letter' ] ) )
			$this->mLetter = sanitize::sani( $_GET[ 'letter' ], 'STRING' );
		
		if( isset( $_POST[ 'add_package' ] ) )
			$this->addPackage();
			
		if( isset( $_POST[ 'take_attendance' ] ) )
			$this->takeAttendance();
			
		if( isset( $_POST[ 'search' ] ) )
			$this->search();
			
		if( isset( $_GET[ 'sort' ] ) )
			$this->mSort = sanitize::sani( $_GET[ 'sort' ], 'STRING' );			
	}
	
	public function init()
	{		
		if( is_null( $this->mLetter ) )
			$this->mParticipants = openPlayModel::getStudents( $this->mSort );
		else
			$this->mParticipants = openPlayModel::getStudentsWithLetter( array( ':letter' => $this->mLetter  ) );
			
		
		$this->mLetters =  helper::getFirstLetters( $this->mParticipants, 'employee/open-plays/current/'.$this->mOpenPlay[ 'openplayID' ] );
		$this->mPackages = openPlaysModel::getPackages( array( ':type' => 'Individual' ) );
		
		sort( $this->mLetters );
		$this->setLinks( );
		
		$this->mLinkToAll 				= Link::Build( 'employee/open-plays/current/'.$this->mOpenPlay[ 'openplayID' ] );
		$this->mLinkToSortByFirstName 	= Link::Build( 'employee/open-plays/current/'.$this->mOpenPlay[ 'openplayID' ].'/sort/first' );
		$this->mLinkToSortByLastName 	= Link::Build( 'employee/open-plays/current/'.$this->mOpenPlay[ 'openplayID' ].'/sort/last' );
		$this->mLinkToSortByAmount 		= Link::Build( 'employee/open-plays/current/'.$this->mOpenPlay[ 'openplayID' ].'/sort/amount' );
		$this->mLinkToSortByUsed 		= Link::Build( 'employee/open-plays/current/'.$this->mOpenPlay[ 'openplayID' ].'/sort/used' );
		$this->mLinkToTakeAttendance	= Link::Build( 'api/employee/openPlay/takeOpenPlayAttendance.php' );
		$this->mLinkToGetPackages		= Link::Build( 'api/employee/openPlay/getPackages.php' );
		$this->mLinkToAddPackage 		= Link::Build( 'api/employee/openPlay/addPackage.php' );
		$this->mLinkToAddNewParticipant = Link::Build( 'employee/open-plays/current/addParticipant' );
	}
	
	public function search()
	{	
		$this->init();
		
		$query = sanitize::sani( $_POST[ 'query' ], 'STRING' );
		
		if( strpos( $query, ' ' ) > 0 )
		{
		
			list( $first, $last ) = explode( ' ', $query );
			$search = new search( array( 'first' => $first, 'last' => $last, 'openplay_id' => $this->mOpenPlay[ 'openplayID' ] ) );
			$this->mResults = $search->participants();		
		}
		else
		{
			$first = $query;
			$search = new search( array( 'table' => 'tgp_family', 'first' => $first, 'openplay_id' => $this->mOpenPlay[ 'openplayID' ] ) );
			$this->mResults = $search->participantByFirstName();		
		}
								
		$this->mLetters = helper::getFirstLetters( $this->mResults, 'employee/open-plays/current' );
		
		sort( $this->mLetters );
		
		$this->setLinks( );		
		
		if( !empty( $this->mResults ) )
			$this->setResultLinks();
	}
		
	public function setLinks( )
	{		
		$mP = &$this->mParticipants;
			
		$size = sizeof( $mP );
			
		for( $i = 0; $i < $size; $i++ )
		{
			$mP[ $i ][ 'linkAddPackage' ] 	= Link::Build( 'employee/open-plays/current/students/'.$mP[ $i ][ 'id' ].'/add' );
			$mP[ $i ][ 'link_info' ] 		= Link::Build( 'employee/open-plays/current/'.$this->mOpenPlay[ 'openplayID' ].'/students/'.$mP[ $i ][ 'id' ].'/history' );
			
			if( $mP[ $i ][ 'amount' ] < 0 )
				$mP[ $i ][ 'leftPackages' ] = '-';
				
			$mP[ $i ][ 'amount' ] = $this->getPackage( $mP[ $i ][ 'amount' ] );
		}	
		
		
	}	
	
	public function setResultLinks()
	{
		$mP = &$this->mResults;
			
		$size = sizeof( $mP );
			
		for( $i = 0; $i < $size; $i++ )
		{
			$mP[ $i ][ 'linkAddPackage' ] 	= Link::Build( 'employee/open-plays/current/students/'.$mP[ $i ][ 'id' ].'/add' );
			$mP[ $i ][ 'link_info' ] 		= Link::Build( 'employee/open-plays/current/'.$this->mOpenPlay[ 'openplayID' ].'/students/'.$mP[ $i ][ 'id' ].'/history' );
		}	
	}
	
	private function getPackage( $p )
	{
		if( $p < 0 )
			return -1*$p.' Month(s) Unlimited';
		
		return $p;
	}
}
?>