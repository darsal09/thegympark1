<?php
class addClassPackages
{
	public $mClassGroupTitle;
	
	public $mPackages;
	public $mIndividualPackages;
	public $mFamilyPackages;
	
	
	public $mIsAdmin;
	
	private $mID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->mID = intval( $_GET[ 'tgp_class_group_id' ] );
		
		$this->mIsAdmin = user::isAdmin();
		
		if( isset( $_POST[ 'tgp_class_save_packages' ] ) )
		{
			$values = $_POST[ 'tgp_class_options' ];
			
			foreach( $values AS $value )
			{
				catalog::addPackageToClass( $value, $this->mID ); //echo $value.'<br/>';
			}
		}
			$this->mIndividualPackages = array();
			$this->mFamilyPackages = array();
	
	}
	public function init()
	{
		$this->mClassGroupTitle = catalog::getClassGroup( $this->mID );
		$this->mPackages 		= catalog::getPackages();
		
		//breaks down the packages to individual and family
		$this->setPackages();
	}
	private function setPackages()
	{
		$size = sizeof( $this->mPackages );
		
		for( $i = 0; $i < $size; $i++ )
		{			
			if( $this->mPackages[ $i ][ 'type' ] == "Individual" )
				$this->mIndividualPackages[ sizeof( $this->mIndividualPackages ) ] = $this->mPackages[ $i ];
			else
				$this->mFamilyPackages[ sizeof( $this->mFamilyPackages ) ] = $this->mPackages[ $i ];
		}
	}
}
?>