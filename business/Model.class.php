<?php
/*
I need array with the following arrays array( field, parameter, value )
*/
class Model
{
	public $mID;
	protected static $mTableName;
	public $mInfo = array(); //this array holds a set of array that each contain field, parameter, value
	protected $mReq = array(); //this array holds the fields are required to be able to insert the information
	protected $mErrors = array();
	
	private $mHasErrors = false;
	
	public function __construct( $mP = array() )
	{
		if( isset( $this->mP[ 'table_name' ] ) )
			$this->mTableName = $mP[ 'table_name' ];
		
		if( isset( $mP[ 'id' ] ) )
			$this->mID = $mP[ 'id' ];
		
		if( isset( $mP[ 'info' ] ) )
			$this->mInfo = $mP[ 'info' ];
		
		$this->checkErrors();
	}
	
	public function exist()
	{
		if( $this->mID > 0 )
			return true;
			
		$sql = "SELECT id
				FROM {$this->getTableName()}
				WHERE {$this->getFieldParameters()}";
				
		$this->mID = databaseHandler::getOne( $sql, $this->getParameterValues() );
		
		if( $this->mID < 1 )
			return false;
			
		return true;
	}
	
	public function insert()
	{
		if( $this->mHasErrors )
			return 0;
		
		if( $this->exist() )
			return $this->mID;
		
		
		$sql = "INSERT INTO
				{$this->getTableName()}( {$this->getFields()})
				VALUES({$this->getParameters()})";
	
		if( databaseHandler::Execute( $sql, $this->getParameterValues() ) > 0 );
			$this->mID = databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );
		
		return $this->mID;
	}
	
	public function save()
	{
		if( $this->mHasErrors )
			return false;
		
		if( $this->mID > 0 )
			return $this->update();
			
		$this->mID = $this->insert();
		
		if( $this->mID > 0 )
			return true;
		
		return false;
	}
	
	public function update()
	{
		if( $this->mID < 1 )
			throw new Exception( 'Cannot update. The information does not exist in the database' );
		
		$c = $this->condition();
		
		$sql = "UPDATE {$this->getTableName()}
				SET {$this->getUpdateFieldParameters()}
				WHERE {$c[ 'condition' ]}";
				
		return databaseHandler::Execute( $sql, array_merge( $c[ 'values' ], $this->getParameterValues() ) );
	}
	
	public function delete()
	{
		if( $this->mID < 1 )
			throw new Exception( 'Cannot delete! The information does not exist in the database' );
			
		$c = $this->condition();
		
		$sql = "DELETE 
				FROM {$this->getTableName()}
				WHERE {$c[ 'condition' ]}";
		
		return databaseHandler::Execute( $sql, $c[ 'values' ] );
	}
	
	public function get()
	{
		if( $this->mID < 1 )
			throw new Exception( 'Cannot fetch information! You need to provide an id' );
			
		$c = $this->condition();
		
		$sql = "SELECT *
				FROM {$this->getTableName()}
				WHERE {$c[ 'condition' ]}";
		
		return databaseHandler::getRow( $sql, $c[ 'values' ] );
	}

	/*
		This function grabs all the parameters only from the array
	*/
	public function getParameters()
	{
		$string = '';
		$size = sizeof( $this->mInfo );
		$i = 0;
		
		foreach( $this->mInfo AS $f => $value )
		{
			$string .= ':'.$f;
			
			if( $i < ( $size - 1 ) )
				$string .= ', ';
			
			$i++;
		}
		
		return $string;
	}
	
	/*
		This function grabs all the values only from the array
	*/
	public function getValues()
	{
		//$string = 
	}
	
	/*
		This function grabs all the fields only from the array that exist in the table
		The string is use for INSERTING
	*/
	public function getFields()
	{
		$string = '';
		$size = sizeof( $this->mInfo );
		$i = 0;
		
		foreach( $this->mInfo AS $f => $value )
		{
			$string .= $f;
			
			if( $i < ( $size - 1 ) )
				$string .= ',';
			
			$i++;
		}
		
		return $string;
	}
	
	/*
		This function return an array to input in the database
		The string is use for INSERTING
	*/	
	public function getParameterValues()
	{
		$mP = array();
		
		foreach( $this->mInfo AS $f => $value )
			$mP[ ':'.$f ] = $value;
			
		return $mP;
	}
	
	/*
		This function returns a string of all field = parameter
		This string is use for UPDATING
	*/
	public function getFieldParameters()
	{
		$string = '';
		$size = sizeof( $this->mInfo );
		$i = 0;
		foreach( $this->mInfo AS $f => $value )
		{	
			$string .= $f.' = :'.$f;			
			
			if( $i < ( $size - 1) )
				$string .= ' AND ';
				
			$i++;
		}

		return $string;
	}
	/*
		Do I really need this function?
		
		It is suppose to return a string with fields and their values.
		
		I don't know what I can use it for yet
	*/
	public function getFieldValues()
	{
		
	}
	
	public function getUpdateFieldParameters()
	{
		$string = '';
		$size = sizeof( $this->mInfo );
		$i = 0;
		foreach( $this->mInfo AS $f => $value )
		{	
			if( $f != 'id' ) 
				$string .= $f.' = :'.$f;
				
			if( $i < ( $size - 1 ) )
				$string .= ',';
				
			$i++;
		}
			
		return $string;	
	}
	
	public function condition()
	{
		return array( 'condition' => 'id = :id', 'values' => array( ':id' => $this->getID() ) );
	}	
	
	public function hasErrors()
	{
		return $this->mHasErrors;
	}
	
	protected function checkErrors()
	{
		foreach( $this->mReq AS $f => $value )
		{
			$this->mErrors[ $f ] = false; 
			
			if( $value && !isset( $this->mInfo[ $f ] ) && empty( $this->mInfo[ $f ] ) )
				$this->mErrors[ $f ] = true;
		}
		
		$this->mHasErrors = in_array( true, $this->mErrors );
	}
	
	public function getErrors()
	{
		return $this->mErrors;
	}
	
	public function getRequireFields()
	{
		return $this->mReq;
	}
	
	public function getTableName()
	{
		$cName = get_class( $this );
		
		return $cName::$mTableName;
	}
	
	public function arraySplit()
	{
		$string = '';
		
		foreach( $this->mReq AS $f => $value )
		{
			if( $value )
				$string .= $f.'<br/>';
		}
		
		return $string;
	}
	
	public function setFields( $mP )
	{
		foreach( $mP AS $f => $value )
		{
			$this->mInfo[ $f ] = $value;
		}
		
		$this->checkErrors();
	}
	
	public static function all()
	{					
		$sql = 'SELECT *
				FROM '.Static::$mTableName;
						
		return databaseHandler::getAll( $sql );
	}
	
	public static function find( $id )
	{
		$sql = 'SELECT *
				FROM '.Static::$mTableName.'
				WHERE id = :id';
				
		$mP = array( ':id' => $id );
		
		return databaseHandler::getRow( $sql, $mP );
	}
	
	public function getID()
	{
	
		return $this->mID;
	}
}
?>