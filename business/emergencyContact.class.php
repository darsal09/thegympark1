<?php
class emergencyContact
{
	public $mName;
	public $mPhone;
	public $mRelation;
	
	public $mMemberID;
	public $mUserID;
	
	private $_mID;
	
	public function __construct( $mP )
	{
		$this->mName = $mP[ ':name' ];
		$this->mPhone = $mP[ ':phone' ];
		$this->mRelation = $mP[ ':relation' ];
		
		if( isset( $mP[ ':mID' ]  ) )
			$this->mMemberID = $mP[ ':mID' ];
		
		if( isset( $mP[ ':uID' ] ) )
			$this->mUserID = $mP[ ':uID' ];
			
		if( isset( $mP[ ':ID' ] ) )
			$this->_mID = $mP[ ':ID' ];
	}
	
	public function save()
	{
		if( $this->hasErrors() )
		{
			echo '<p class=error>Emergency contact information has errors<br/>';
			print_r( $this->getArray() );
			echo '</p>';
			
			return false;
		}
		
		if( $this->_mID > 0 )
			return $this->update();
			
		$this->_mID = emergencyContactModel::add( $this->getArray() );
	}
	
	public function update()
	{
		if( $this->_mID < 1 )
			return false;
			
		$info = $this->getArray();
		$info[ ':ID' ] = $this->_mID;
			
		emergencyContactModel::update( $info );
	}
	
	public function setParameters( $mP )
	{			
		foreach( $mP AS $field => $value )
		{
			$name = 'm'.substr( $field, 1, strlen( $field ) );
			$this->{$name} = $value;
		}		
	}
	
	
	public function hasErrors()
	{
		if( empty( $this->mName ) || empty( $this->mPhone ) || empty( $this->mRelation ) || !isset( $this->mMemberID ) || $this->mMemberID < 1 || !isset( $this->mUserID ) || $this->mUserID < 1 )
			return true;
			
		return false;
	}
	
	public function delete()
	{
		if( !isset( $this->_mID ) || $this->_mID < 1 )
			return false;
			
		return emergencenyContactModel::delete( array( ':ID' => $this->_mID, ':mID' => $this->mMemberID,  ':uID' => $this->mUserID ) );
	}
	
	public function getArray()
	{
		return array( ':name' => $this->mName, ':phone' => $this->mPhone, ':relation' => $this->mRelation, ':mID' => $this->mMemberID, ':uID' => $this->mUserID );
	}
	
}
?>