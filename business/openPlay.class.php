<?php
class openPlay
{
	public $mOpenPlayID;
	public $mArray;
	public $mIndividual;
	public $mFamily;
	public $mTitle;
	public $mSeason;
	
	public $mMemberID, $mUserID;
	
	public function __construct( $mP = array() )
	{
		$this->mIndividual = array();
		$this->mFamily = array();
		
		if( array_key_exists( ':opID', $mP ) )
			$this->setParameters( $mP );
		else
		{
			$this->mArray = $mP;
			$this->setTitle( $mP[ 'title' ] );
			$this->setSeason();
			$this->defineVariables( $mP );
		}
		
		$this->setGroupPackages();
		$this->setIndividualPackages();
		
	}
	
	/*
	This function is only called and only if :opID is defined instead of the open play information
	*/
	
	public function setParameters( $mP )
	{
		$op = openPlayModel::get( $mP );
			
		$this->mArray = $op;
		$this->defineVariables( $op );
	}
	
	public function setID( $opID )
	{
		$this->mOpenPlayID = $opID;
	}
	
	public function getID()
	{
		return $this->mOpenPlayID;
	}
	
	public function getTitle()
	{
		return $this->mTitle;
	}
	
	public function setIndividualPackages()
	{
		$i = openPlaysModel::getIndividualPackages( array( ':type' => 'Individual' ) );
		
		foreach( $i AS $p )
			$this->mIndividual[] = new Package( $p );
	}
	
	public function setGroupPackages()
	{
		$f = openPlaysModel::getGroupPackages( array( ':type' => 'Family' ) );
		
		foreach( $f AS $p )
			$this->mFamily[] = new Package( $p );		
	}
	
	public function setTitle( $title )
	{
		$this->mTitle = $title;
	}
	
	public function getGroupPackages()
	{
		return $this->mFamily;
	}
	
	public function getIndividualPackages()
	{
		return $this->mIndividual;
	}
	
	public function setSeason( )
	{
		$this->mSeason = new Season( seasonModel::get( $this->mArray[ 'season_id' ] ) );
	}
	
	public function setYear( $year )
	{
		$this->mYear = $year;
	}
	
	
	public function getSeason()
	{
		return $this->mSeason;
	}
	
	public function addStudent( $mP  )
	{
		if( ( !isset( $mP[ 'student_id' ] ) && empty( $mP[ 'student_id' ] ) ) || ( !isset( $mP[ 'package_id' ] ) && empty( $mP[ 'package_id' ] ) ) )
		{
			echo '<div class=error><h1>Error</h1><p>We could not add student to open play. You need a valid student id to add him/her</p></div>'; 
			return false;
		}
		
		$p = new Package( PackageModel::get( array( ':pOPID' => $mP[ 'package_id' ] ) ) );
		
		return openPlayModel::addStudent( array( ':sID' => $mP[ 'student_id' ], ':opID' => $this->getID(), ':pID' => $p->getID(), ':Amount' => $p->getAmount(), ':price' => $p->getPrice() ),  $mP[ 'register_who' ] );
	}
	
	public function defineVariables( $mP )
	{
		$this->mOpenPlayID = $mP[ 'openplayID' ];
		$this->mTitle = $mP[ 'title' ];
		$this->setSeason();
	}
	
	public function add()
	{
		if( $this->exist() )
			return $this->getID();
			
		$sql = '';
		
		$pdo = new PDOHandler( array( 'sql' => $sql, 'parameter' => array(  ) ) );
	}
	
	public function exist()
	{
	
	}
}
?>