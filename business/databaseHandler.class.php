<?php

require_once BUSINESS_DIR.'/procedureHandler.class.php';

//class providing generic data access functionality
class databaseHandler
{
	private static $_mHandler;
	
	//private constructor to prevent direct creation of object
	private function __construct()
	{
	}
	//return an initialized database handler
	private static function getHandler( )
	{
		//create a database connection only if one doesn't already exist
		if( !isset( self::$_mHandler ) )
		{
			//execute code catching potential exceptions
			try
			{
				//create a new PDO class instance
				self::$_mHandler = new PDO( PDO_DSN, DB_USERNAME, DB_PASSWORD, array( PDO::ATTR_PERSISTENT => DB_PERSISTENCY ) );
				
				//configure PDO to throw exceptions
				self::$_mHandler->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
			}
			catch( PDOException $e )
			{
				self::Close();
				trigger_error( $e->getMessage(), E_USER_ERROR );
			}
		}
		//return the database handler
		return self::$_mHandler;
	}
	
	//clear the PDO class instance
	public static function Close()
	{
		self::$_mHandler = null;
	}
	
	//Wrapper method for PDOStatement::execute()
	public static function Execute( $sqlQuery, $params = null )
	{
		$mP = array( 'sql' => $sqlQuery );
		
		if( $params != null )
			$mP[ 'parameter' ] = $params;
			
		$pdo = new PDOHandler( $mP );
		
		return $pdo->execute();		
		/*
		try
		{
			//get the databse handler
			$db_handler = self::getHandler();
			
			//prepare the query for execution
			$statement_handler = $db_handler ->prepare( $sqlQuery );
			
			//execute query
			return $statement_handler ->execute( $params );
		}
		catch( PDOException $e )
		{
			//close the database handler and trigger an error
			self::Close();
			trigger_error( $e->getMessage(), E_USER_ERROR );
		}
		*/
	}
	//wrapper method for PDOStatement::fetchAll()
	public static function getAll( $sqlQuery, $params = null, $fetchStyle = PDO::FETCH_ASSOC )
	{
		$mP = array( 'sql' => $sqlQuery );
		
		if( $params != null )
			$mP[ 'parameter' ] = $params;
			
		$pdo = new PDOHandler( $mP );
		
		return $pdo->getAll();
		/*
		//initialize the return value to null
		$result = null;
		
		//try to execute an sql query or a stored procedure
		try
		{
			//get the database handler
			$db_handler = self::getHandler();
			
			//prepare the query for execution
			$statement_handler = $db_handler->prepare( $sqlQuery );
			
			//execute the query
			$statement_handler->execute( $params );
			
			//fetch result
			$result = $statement_handler->fetchAll( $fetchStyle );
		}
		catch( PDOException $e )
		{
			self::Close();
			trigger_error( $e->getMessage(), E_USER_ERROR );
		}
		
		//return the query result
		return $result;
		*/
	}
	//wrapper method for PDOStatement::fetch()
	public static function getRow( $sqlQuery, $params = null, $fetchStyle = PDO::FETCH_ASSOC )
	{
		$mP = array( 'sql' => $sqlQuery );
		
		if( $params != null )
			$mP[ 'parameter' ] = $params;
			
		$pdo = new PDOHandler( $mP );
		
		return $pdo->getRow();
		/*
		//initialize the return value to null
		$result = null;
		
		//try to execute an sql query or a stored procedure
		try
		{
			$db_handler = self::getHandler();
			
			$statement_handler = $db_handler->prepare( $sqlQuery );
			
			$statement_handler->execute( $params );
			
			
			$result = $statement_handler->fetch( $fetchStyle );
		}
		catch( PDOException $e )
		{
			self::Close();
			trigger_error( $e->getMessage(), E_USER_ERROR );
		}
		
		//return the row result
		return $result;
		*/
	}
	//return the first column value from a row
	public static function getOne( $sqlQuery, $params = null )
	{
		$mP = array( 'sql' => $sqlQuery );
		
		if( $params != null )
			$mP[ 'parameter' ] = $params;
			
		$pdo = new PDOHandler( $mP );
		
		return $pdo->getOne();
		
		/*
		$result = null;
		
		try
		{
			$db_handler = self::getHandler();
			$statement_handler = $db_handler->prepare( $sqlQuery );
			$statement_handler->execute( $params );
			
			//fetch result
			$result = $statement_handler->fetch( PDO::FETCH_NUM );
			
			//save the first value of the result set ( first column of the first row ) to $result
			$result = $result[ 0 ];
		}
		catch( PDOException $e  )
		{
			self::Close();
			trigger_error( $e->getMessage(), E_USER_ERROR );
		}
		return $result;
		*/
	}
	
	public static function getLastID()
	{
		return self::getOne( 'SELECT LAST_INSERT_ID()' );
	}
}
?>