<?php
class createUser extends orm
{
	protected $mFields = array( 'uName' 	=> ':name',
								'uEmail' 	=> ':email',
								'uPswd' => ':password',
								'type'		=> ':type' );
								
	protected $mReq = array( 'name' 	=> true,
							'email' 	=> true,
							'password' 	=> true,
							'type'		=> true );

	protected $mErrors = array( 'name' 		=> false,
								'email' 	=> false,
								'password' 	=> false,
								'type'		=> false );
	public $mEmail;
	public $mType = 'R';
	protected $mTableName = 'tgp_users';
	public $mPassword;
	public $mName;

	public function __construct( $mP = array() )
	{
		if( isset( $mP[ 'email' ] ) )
			$this->setEmail( $mP[ 'email' ] );
 
		if( isset( $mP[ 'type' ] ) )
			$this->setType( $mP[ 'type' ] );
 
		if( isset( $mP[ 'password' ] ) )
			$this->setPassword( $mP[ 'password' ] );
		else
			$this->setPassword( user::createTempPassword() );
 
		if( isset( $mP[ 'name' ] ) )
			$this->setName( $mP[ 'name' ] );
			
		$this->checkErrors();
		$this->setStatements();
	}
 
	public function setEmail( $email )
	{
		$this->mEmail = $email;
	}
 
	public function setType( $type )
	{
		$this->mType = $type;
	}
 
	public function setPassword( $password )
	{
		$this->mPassword = $password;
	}
 
	public function setName( $name )
	{
		$this->mName = $name;
	}
 
	public function getEmail( )
	{
		return $this->mEmail;
	}
 
	public function getType( )
	{
		return $this->mType;
	}
 
	public function getPassword( )
	{
		return $this->mPassword;
	}
 
	public function getName( )
	{
		return $this->mName;
	}
	
	public function exist()
	{
		
		$sql = 'SELECT id
				FROM '.$this->getTableName().'
				WHERE uEmail = :email';
		
		$result = databaseHandler::getOne( $sql, array( ':email' => $this->getEmail() ) );
		
		if( $result < 1 )
			return false;
			
		$this->setID( $result );
		
		return true;
	}
}