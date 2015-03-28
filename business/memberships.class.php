<?php
class memberships
{
	private function __construct()
	{
		//	
	}
	public static function getMemberships()
	{
		$sql = 'CALL tgp_get_memberships( )';
		
		return databaseHandler::getAll( $sql );
	}
	public static function getMembership( $msID )
	{
		$sql = 'CALL tgp_get_membership( :msID )';
		$params = array( ':msID' => $msID );
		
		return databaseHandler::getRow( $sql, $params );
	}
	public static function getMembershipFeatures( $mID )
	{
		$sql = 'CALL tgp_get_membership_features( :mID )';
		$params = array( ':mID' => $mID );
		
		return databaseHandler::getAll( $sql, $params );
	}
	public static function getFeatures( $mID )
	{
		$sql = 'CALL tgp_get_features( :mID )';
		$params = array( ':mID' => $mID );
		
		return databaseHandler::getAll( $sql, $params );
	}
	public static function getFeature( $fID )
	{
		$sql = 'CALL tgp_get_membership_feature( :fID )';
		$params = array( ':fID' => $fID );
		
		return databaseHandler::getRow( $sql, $params );
	}
	public static function addFeature( $msTitle, $msQuantity )
	{
		$sql = 'CALL tgp_add_feature( :msTitle, :msQuantity )';
		$params = array( ':msTitle' => $msTitle, ':msQuantity' => $msQuantity );
		
		return databaseHandler::Execute( $sql, $params );
	}
	public static function addAttribute( $msID, $attributeID )
	{
		$sql = 'CALL tgp_membership_add_attribute( :msID, :attributeID )';
		$params = array( ':msID' => $msID, ':attributeID' => $attributeID );
		
		return databaseHandler::Execute( $sql, $params );
	}
	public static function getAttributes( $msID )
	{
		$sql = 'CALL tgp_membership_get_attributes( :msID )';
		$params = array( ':msID' => $msID );
		
		return databaseHandler::getAll( $sql, $params );
	}
	public static function getAttributeOptions( $msID )
	{
		$sql = 'CALL tgp_membership_get_attributes_options( :msID )';
		$params = array( ':msID' => $msID );
		
		return databaseHandler::getAll( $sql, $params );
	}
}