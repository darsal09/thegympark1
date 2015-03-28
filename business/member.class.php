<?php
class member
{
	public $mName;
	public $mEmail;

	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'name' ] ) )
			$this->setName( $mP[ 'name' ] );
 
		if( isset( $mP[ 'email' ] ) )
			$this->setEmail( $mP[ 'email' ] );
 
	}
 
	public function setName( $name )
	{
		$this->mName = name;
	}
 
	public function setEmail( $email )
	{
		$this->mEmail = email;
	}
 
	public function getName( )
	{
		return $this->mName;
	}
 
	public function getEmail( )
	{
		return $this->mEmail;
	}
}
?>