<?php
class creditCard
{
	public $mType;
	public $mName;
	public $mNumber;
	public $mExpire;
	public $mCode;
	public $mAddress;
	
	public $mMemberID;
	public $mUserID;
	private $_mID;
	
	public function __construct( $mP )
	{
		if( isset( $mP[ ':id' ] ) )
		{
			$this->_mID = sanitize::sani( $mP[ ':id' ], 'INTIGER' );
			$this->setVariables();
		}
		else
		{
			$this->mType 	= $mP[ ':type' ];
			$this->mName 	= $mP[ ':name' ];
			$this->mNumber 	= $mP[ ':number' ];
			$this->mExpire 	= $mP[ ':expire' ];
			$this->mCode 	= $mP[ ':cardCode' ];
			
			$this->mAddress = new Address( array( ':street' => $mP[ ':street' ], ':city' => $mP[ ':city' ], ':state' => $mP[ ':state' ], ':zip' => $mP[ ':zip' ] ) );
			
			if( isset( $mP[ ':mID' ] ) )
			{
				$this->mMemberID = $mP[ ':mID' ];
				$this->mAddress->setMemberID( $this->mMemberID );
			}	
			if( isset( $mP[ ':uID' ] ) )
			{
				$this->mUserID = $mP[ ':uID' ];		
				$this->mAddress->setUserID( $this->mUserID );
			}
		}
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
			echo '<p class=error>There are errors in the credit card. You need to provide all the information in order to add this credit card to a member<br/>';
			print_r( $this->getArray() );
			echo '</p>';
			return false;
		}

		if( $this->_mID > 0 )
			return $this->update();
			
		$this->_mID = cardModel::add( $this->getArray() );
	}
	
	public function update()
	{
		if( $this->_mID < 1 )
			return false;
			
		$info = $this->getArray();
		$info[ ':ID' ] = $this->_mID;
		
		cardModel::update( $info );
	}
	
	
	public function setParameters( $mP )
	{			
		foreach( $mP AS $field => $value )
		{
			$name = 'm'.substr( $field, 1, strlen( $field ) );
			$this->{$name} = $value;
		}
		
		$this->mAddress->setParameters( $mP );
	}
		
	public function hasErrors()
	{
		if( empty( $this->mType ) || empty( $this->mName ) || empty( $this->mNumber ) || empty( $this->mExpire ) || empty( $this->mCode ) || !isset( $this->mUserID ) || $this->mUserID < 1 || !isset( $this->mMemberID ) || $this->mMemberID < 1 || $this->mAddress->hasErrors()  )
			return true;
			
		return false;
	}
	
	public function getArray()
	{
		return array_merge( array( ':type' => $this->mType, ':name' => $this->mName, ':number' => $this->mNumber, ':expire_date' => $this->mExpire, ':card_code' => $this->mCode, ':mID' => $this->mMemberID, ':uID' => $this->mUserID ), $this->mAddress->getArray() );
	}
	
	public function getId()
	{
		return $this->_mID;
	}
	
	public function setVariables()
	{
		$r = cardModel::get( array( ':cID' => $this->getId() ) );
		
		$this->mType 	= $r[ 'card' ][ 'type' ];
		$this->mName 	= $r[ 'card' ][ 'name' ];
		$this->mNumber 	= $r[ 'card' ][ 'number' ];
		$this->mExpire 	= $r[ 'card' ][ 'expire' ];
		$this->mCode 	= $r[ 'card' ][ 'card_code' ];
		
		$this->mAddress = new address( array( ':street' => $r[ 'card' ][ 'street' ], ':city' => $r[ 'card' ][ 'city' ], ':state' => $r[ 'card' ][ 'state' ], ':zip' => $r[ 'card' ][ 'zip' ] ) );

	}
}
?>