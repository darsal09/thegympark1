<?php

class parentModel extends Model
{
	protected  static $mTableName = 'tgp_parents';
	protected $mReq = array( 'student_id' => true, 'user_id' => true, 'name' => true, 'email' => true, 'homePhone' => false, 'workPhone' => false, 'cellPhone' => true );
	
	public function __construct( $mP = array() )
	{
		parent::__construct( $mP );		
	}
	
	
	public function createAccount()
	{
		if( empty( $this->mInfo[ ':email' ] ) )
			return false;
			
		return true;
	}
	
	public function getEmail()
	{
		return $this->mInfo[ ':email' ];
	}
	
	public function getName()
	{
		return $this->mInfo[ ':name'  ];
	}
	
	public function setParameters( $mP )
	{
		foreach( $mP AS $field => $value )
			$this->mInfo[ $field ] = $value;
	}
}

?>