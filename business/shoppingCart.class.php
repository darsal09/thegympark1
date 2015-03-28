<?php
class shoppingCart
{
	private static $_mCartID;
		
	private function __construct()
	{
		//
	}
	
	private static function setCartID()
	{
		if( self::$_mCartID == '' )
		{
			if( user::isLoggedIn() )
			{
				self::$_mCartID = symmetricCrypt::Encrypt( user::getId() );			
				
				$_SESSION[ 'tgp_shopping_cart_id' ] = self::$_mCartID;
				setcookie( 'tgp_shopping_cart_id', self::$_mCartID, ( time() + 86400 ) );				
			}
			else if( isset( $_SESSION[ 'tgp_shopping_cart_id' ] ) )				
			{
				self::$_mCartID = $_SESSION[ 'tgp_shopping_cart_id' ];
				
				setcookie( 'tgp_shopping_cart_id', self::$_mCartID, ( time() + 86400 ) );
			}
			else if( isset( $_COOKIE[ 'tgp_shopping_cart_id' ] ) )
			{
				self::$_mCartID = $_COOKIE[ 'tgp_shopping_cart_id' ];
				
				$_SESSION[ 'tgp_shopping_cart_id' ] = self::$_mCartID;
			}
			else
			{				
				self::$_mCartID = md5( uniqid( rand(), true ) );
				
				$_SESSION[ 'tgp_shopping_cart_id' ] = self::$_mCartID;
				
				setcookie( 'tgp_shopping_cart_id', self::$_mCartID, ( time() + 86400 ) );
			}
		}
	}
	
	public static function addMembershipToCart( $mID, $mType, $mPrice, $mPackage )
	{
		$sql = 'CALL tgp_shopping_cart_add_membership( :mID, :mType, :mPrice, :mPackage )';
		$params = array( ':mID' => $mID, ':mType' => $mType, ':mPrice' => $mPrice, ':mPackage' => $mPackage );
		
		return databaseHandler::Execute( $sql, $params );
	}
	
	public static function addClassToCart( $classID, $classTitleID, $classTitle, $classDays, $classType, $price, $classPackage )
	{						
		$sql = 'CALL tgp_shopping_cart_add_class( :cartID, :classID, :classTitleID, :classTitle, :classDays, :classType, :classPrice, :classPackage )';
		$params = array( ':cartID' => self::getID(), ':classID' => $classID, ':classTitleID' => $classTitleID, ':classTitle' => $classTitle, ':classDays' => $classDays, ':classType' => $classType, ':classPrice' => $price, ':classPackage' => $classPackage );
		
		return databaseHandler::Execute( $sql, $params );
	}
	
	public static function updateClass( $shopping_cart_id, $classQuantity )
	{
		$sql = 'CALL tgp_shopping_cart_update( :shoppingCartID, :classQuantity )';
		$params = array( ':shoppingCartID' => $shopping_cart_id, ':classQuantity' => $classQuantity );
		
		return databaseHandler::Execute( $sql, $params );		
	}
	
	public static function removeClass( $shopping_cart_id, $classID )
	{
		$sql = 'CALL tgp_shopping_cart_remove_class( :shopping_cart_id, :classID, :userID )';
		$params = array( ':shoppingCartID' => $shipping_cart_id, ':classID' => $classID, ':userID' => self::$_mCartID );
		
		return databaseHandler::Execute( $sql, $params );
	}
	
	public static function isEmpty( )
	{			
		$sql = 'CALL tgp_shopping_cart_empty( :userID )';
		$params = array( ':userID' => self::getID() );

		$result = databaseHandler::getOne( $sql, $params );

		if( intval( $result ) > 0 )
			return false;
		
		return true;
	}
	
	public static function viewCart()
	{		
		$sql = 'CALL tgp_shopping_cart_get_user_classes( :userID )';
		$params = array( ':userID' => self::getID() );
		
		return databaseHandler::getAll( $sql, $params );		
	}
	
	public static function emptyCart( )
	{
		$sql = 'CALL tgp_shopping_cart_remove_classes( :userID )';
		$params = array( ':userID' => self::getID() );
		
		return databaseHandler::Execute( $sql, $params );
	}
	
	public static function getID()
	{
		if( !isset( self::$_mCartID ) )
			self::setCartID();
		
		return self::$_mCartID;
	}
}