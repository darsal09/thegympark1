<?php
/*
	This class holds the exist, delete, add, update, and save functions that help to add information to the database 
*/
class orm
{
	protected $mErrors = array();
	protected $mIDParameter = array( 'id' => 'id' );
	protected $mID;
	protected $mHasErrors = false;
	protected $mWhereStatements = '';
	protected $mUpdateStatements = '';
	protected $mParameters = '';
	protected $mColums = '';
	protected $mArray;
	
	public function setID( $id )
	{
		$this->mID = $id;
	}
	
	public function setColumns( $columns )
	{
		$this->mColumns = $columns;
	}
	
	public function setParameters( $params )
	{
		$this->mParameters = $params;
	}
	
	public function setTableName( $name )
	{
		$this->mTableName = $name;
	}
	
	public function setWhereStatement( $where )
	{
		$this->mWhereStatements = $where;	
	}
	
	public function setUpdateStatement( $update )
	{
		$this->mUpdateStatements = $update;	
	}
	
	public function delete()
	{
		if( $this->mID < 1 )
			return false;
			
		$sql = 'DELETE '.$this->getTableName().'
				WHERE '.$this->getIDParameter().' = :id';
		
		$result = databaseHandler::Execute( $sql, array( ':id' => $this->getID() ) );
		
		if( $result < 1 )
			return false;
			
		$this->mID = 0;
		
		return true;
	}
	
	public function exist()
	{		
		if( $this->hasErrors())
			return false;
			
		$sql = 'SELECT '.$this->getIDParamter().'
				FROM '.$this->getTableName().'
				WHERE '.$this->getWhereStatements();
		
		$result = databaseHandler::getOne( $sql, $this->getArray() );
	
		if( $result < 1 )
			return false;
			
		$this->setID( $result );
		
		return true;
	}
	public function add()
	{		
		if( $this->hasErrors() || $this->exist() )
			return false;
			
		$sql = 'INSERT
				INTO '.$this->getTableName().' ( '.$this->getColumns().' )
				VALUES( '.$this->getParameters().' )';
				
		$result = databaseHandler::Execute( $sql, $this->getArray() );
		
		if( $result < 1 )
			return false;
			
		$this->setID( databaseHandler::getLastID() );
		
		return true;
	}
	
	public function save()
	{
		if( $this->getID() > 0 )
			return $this->update();
			
		return $this->add();
	}
	
	public function update()
	{
		if( $this->getID() < 1 )
			return false;
			
		$sql = 'UPDATE '.$this->getTableName().'
				SET '.$this->getUpdateStatements().'
				WHERE '.$this->getIDParameter().' = :id';
				
		$result = databaseHandler::Execute( $sql, array_merge( array( ':id' => $this->getID() ), $this->getArray() ) );
		
		if( $result < 1 )
			return false;
			
		$this->mID = $this->setID( databaseHandler::getLastID() );
		
		return true;
	}
	/*
		This function collects all the columns and parameters together to be use in the WHERE of a sql statement
		returns as a string
	*/
	public function setStatements()
	{
		$where = '';
		$update = '';
		$parameters = '';
		$columns = '';
		
		$i = 0; 
		
		$size = sizeof( $this->mFields );
		
		foreach( $this->mFields AS $field => $value )
		{
			$where 		.= $field.' = '.$value;
			$update 	.= $field.' = '.$value;
			$parameters .= $value;
			$columns 	.= $field;
			
			if( $i < ( $size - 1 ) )
			{
				$where 		.= ' AND ';
				$update 	.= ', ';
				$parameters .= ', ';
				$columns 	.= ', ';
			}
			
			$i++;
		}	
		
		
		$this->setWhereStatement( $where );
		$this->setUpdateStatement( $update );
		$this->setParameters( $parameters );
		$this->setColumns( $columns );
	}
	
	public function getID()
	{
		return $this->mID;
	}
	
	public function getColumns( )
	{
		return $this->mColumns;
	}
	
	public function getUpdateStatements()
	{
		return $this->mUpdateStatements;
	}
	
	public function getWhereStatements()
	{
		return $this->mWhereStatements;
	}
	
	public function getParameters()
	{
		return $this->mParameters;
	}
	
	public function getArray()
	{
		if( is_array( $this->mArray ) && !empty( $this->mArray ) )
			return $this->mArray;
			
		$array = array();
		
		foreach( $this->mFields AS $field => $value )
		{
			$function = 'get'.ucfirst( substr( $value, 1, strlen($value ) ) );
			$array[ $value ] = $this->$function();
		}
		
		return $this->mArray = $array;
	}
	
	public function checkErrors()
	{
		foreach( $this->mReq AS $field => $value )
		{
			$function = 'm'.ucfirst( $field );
			
			if( $value && empty( $this->$function ) )
				$this->mErrors[ $field ] = true;
		}
		
		if( empty( $this->mTableName ) )
			$this->mErrors[ 'tableName' ] = true;
		
		$this->mHasErrors = in_array( true, $this->mErrors );
	}
	
	public function hasErrors()
	{
		return $this->mHasErrors;
	}
	
	public function getErrors()
	{
		return $this->mErrors;
	}
	
	public function getTableName()
	{
		return $this->mTableName;
	}
	
	public function getIDParameter()
	{
		return $this->mIDParameter[ 'id' ];
	}
}
?>