<?php
class school
{
	public $mName;
	public $mGrade;
	public $mMemberID;
	
	public function __construct( $mP )
	{
		$this->mName = $mP[ ':name' ];
		$this->mGrade = $mP[ ':grade' ];
		
		if( isset( $mP[ ':mID' ] ) )
			$this->mMemberID = $mP[ ':mID' ];		
	}

	public function save()
	{
		if( $this->allEmpty( ) )
			return false;
			
		if( $this->hasErrors() )
		{
			echo '<p class=error>School info has issues.<br/>';
			print_r( $this->getArray() );
			echo '</p>';
			
			return false;
		}
		
		$this->_mID = schoolModel::add( $this->getArray() );
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
		if( empty( $this->mName ) || empty( $this->mGrade ) )
			return true;
			
		return false;
	}
	
	public function allEmpty()
	{
		if( empty( $this->mName ) && empty( $this->mGrade ) )
			return true;
			
		return false;
	}
	
	public function getArray()
	{
		return array( ':name' => $this->mName, ':grade' => $this->mGrade, ':mID' => $this->mMemberID );
	}
}
?>