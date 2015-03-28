<?php
class address
{
	public $mStreet;
	public $mCity;
	public $mState;
	public $mZip;
	
	private $mMemberID; //the id that the address belongs to
	private $mUserID; //the id that the of the user the member belongs to
	private $_mID; //the id that the address is stored under
	
	public function __construct( $mP )
	{				
		$this->mStreet 		= $mP[ ':street' ];
		$this->mCity 		= $mP[ ':city' ];
		$this->mState 		= $mP[ ':state' ];
		$this->mZip 		= $mP[ ':zip' ];
		
		if( isset( $mP[ ':mID' ] ) )
			$this->mMemberID 	= $mP[ ':mID' ];		
			
		if( isset( $mP[ ':uID' ] ) )
			$this->mUserID = $mP[ ':mID' ];
	}
	public function setMemberID( $id )
	{
		$this->mMemberID = $id;
	}
	
	public function setUserID( $id )
	{
		$this->mUserID = $id;
	}
	
	public function save()
	{
		if( $this->hasErrors() )
		{
			echo '<p class=error>There are error in address<br/>';
			print_r( $this->getArray() );
			echo '</p>';
			return false;
		}
		
		if( $this->_mID > 0 )
			return $this->update();
			
		$this->_mID = addressModel::add( $this->getArray() );
	}
	
	public function setParameters( $mP )
	{	
		foreach( $mP AS $field => $value )
		{
			$name = 'm'.substr( $field, 1, strlen( $field ) );
			$this->$name = $value;
		}
	}
	
	public function update()
	{
		if( $this->_mID < 1 )
			return;
			
		$info = $this->getArray();
		$info[ ':ID' ] = $this->_mID;
		
		return addressModel::update( $info );
	}
	
	public function hasErrors()
	{
		if( empty( $this->mStreet ) || empty( $this->mCity ) || empty( $this->mState ) || empty( $this->mZip ) || !isset( $this->mMemberID ) || $this->mMemberID < 1 )
			return true;
		
		return false;
	}
	
	public function getArray()
	{
		return array( ':street' => $this->mStreet, ':city' => $this->mCity, ':state' => $this->mState, ':zip' => $this->mZip, ':mID' => $this->mMemberID, ':uID' => $this->mUserID );
	}
}
?>