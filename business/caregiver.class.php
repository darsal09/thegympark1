<?php
class caregiver
{
	public $mName;
	public $mPhone;
	
	private $mMemberID;
	private $_mID;
	
	public function __construct( $mP )
	{
		$this->mName = $mP[ ':name' ];
		$this->mPhone = $mP[ ':phone' ];
		
		if( isset( $mP[ ':mID' ] ) )
			$this->mMemberID = $mP[ ':mID' ];
		
		if( isset( $mP[ ':cgID' ] ) )
			$this->_mID = $mP[ ':cgID' ];
	}
	
	public function save()
	{
		if( $this->allEmpty() )
			return;
		
		if( $this->hasErrors() )
		{
			echo '<p class=error>There are errors in caregiver information<br/>';
			print_r( $this->getArray() );
			echo '</p>';			
			return;
		}
		
		if( $this->_mID > 0 )
			return $this->update();
			
		$this->_mID = familyMember::addCaregiver( $this->getArray() );
	}
	
	public function setParameters( $mP )
	{	
		foreach( $mP AS $field => $value )
		{
			$name = 'm'.substr( $field, 1, strlen( $field ) );
			$this->$name = $value;
		}
	}
	
	public function hasErrors()
	{
		if( empty( $this->mName ) || empty( $this->mPhone ) || !isset( $this->mMemberID ) || $this->mMemberID < 1 || !isset( $this->mUserID ) || $this->mUserID < 1 )
			return true;
			
		return false;
	}
	
	public function allEmpty()
	{
		if( empty( $this->mName ) && empty( $this->mPhone ) )
			return true;
			
		return false;
	}
	
	public function update()
	{
		if( $this->_mID < 1 )
			return false;
			
		$info = $this->getArray();
		
		$info[ ':ID' ] = $this->_mID;
		
		if( caregiverModel::update( $info ) > 0 )
			return true;
		
		return false;
	}
	
	public function getArray()
	{
		return array( ':name' => $this->mName, ':phone' => $this->mPhone, ':mID' => $this->mMemberID, ':uID' => $this->mUserID );
	}
}
?>