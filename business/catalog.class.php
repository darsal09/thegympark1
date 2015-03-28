<?php
/*
require_once BUSINESS_DIR.'/programModel.class.php';
require_once BUSINESS_DIR.'/categoryModel.class.php';
require_once BUSINESS_DIR.'/classTitleModel.class.php';
require_once BUSINESS_DIR.'/classModel.class.php';
*/
class catalog
{
	
	private function __construct()
	{
		//
	}
	
	public static function addProgram( $params )
	{
		if( empty( $params[ ':pTitle' ] ) )
			return -1;
		
		return programModel::add( $params );
	}
	
	public static function addCategory( $mP )
	{
		if( intval( $mP[ ':pID' ] ) < 1 || empty( $mP[ ':title' ] ) )
			return 0;
					
		return categoryModel::add( $mP );
	}
	
	public static function addClass( $params  )
	{
		return classModel::add( $params );	
	}
	
	public static function addClassTitle( $mP )
	{
		$ctID = classTitleModel::exist( array( ':Title' => $mP[ ':Title' ] ) );
		
		if( $ctID > 0 )
			return $ctID;
			
		return classTitleModel::add( $mP );
		
	}
	
	public static function addClassPackages( $title, $price, $type )
	{
		if( empty( $title ) || intval( $price ) > 0 || empty( $type ) )
			return false;
					
		return procedureHandler::Execute( 'tgp_add_classs_packages', array( ':pTitle' => $title, ':pPrice' => $price, ':pType' => $type ) );
	}
	
	public static function addPackageToClass( $pID, $uID )
	{
		$pID = intval( $pID );
		$uID = intval( $uID );
	
		if( $pID < 1 || $uID < 1 )
			return false;
				
		return procedureHandler::Execute( 'tgp_add_package_to_class', array( ':pID' => $pID, ':uID' => $uID ) );
	}
	
	public static function updateClass( $cID, $ctID, $cWeekday, $cSTime, $cETime, $cSDate, $cEDate, $cPrice )
	{
		if( $cID  < 1 || $ctID > 0 || empty( $cWeekday ) || empty( $cSTime ) || empty( $cETime ) || empty( $cEDate ) || $cPrice > 0 )
			return false;
			
		return procedureHandler::Execute( 'tgp_update_class', array( ':cID' => $cID, ':ctID' => $ctID, ':cWeekday' => $cWeekday, ':cSTime' => $cSTime, ':cETime' => $cETime, ':cSDate' => $cSDate, ':cEDate' => $cEDate, ':cPrice' => $cPrice ) );
	}
	
	public static function getCategory( $cID )
	{
		if( intval( $cID ) < 1 )
			return false;
			
		return categoryModel::get( array( ':cID' => $cID ) );
	}
	
	public static function getCategories( )
	{		
		return databaseHandler::getAll( 'CALL tgp_get_categories()' );
	}
	
	public static function getProgramCategories( $pID )
	{
		$pID = intval( $pID );
		
		if( $pID < 1 )
			return false;
			
		return procedureHandler::getAll( 'tgp_get_program_categories', array( ':pID' => $pID ) );
	}
	
	public static function getPrograms( )
	{
		$sql = 'CALL tgp_get_programs()';
		
		return databaseHandler::getAll( $sql );
	}
	
	public static function getProgram( $pID )
	{
		$pID = intval( $pID );
		
		if( $pID < 1 )
			return -1;
		
		return programModel::get( array( ':pID' => $pID ) );
	}
	
	public static function getClassCategories( $classID )
	{
		$classID = intval( $classID );
		
		if( $classID < 1 )
			return -1;

		return procedureHandler::getAll( 'tgp_get_class_categories', array( ':classID' => $classID ) );
	}
	
	public static function classType( $classID )
	{
		$classID = intval( $classID );
		
		if( $classID < 1 )
			return -1;
		
		return databaseHandler::getRow( 'tgp_get_class_type', array( ':classID' => $classID ) );
	}
	
	public static function getClasses()
	{
		$sql = 'CALL tgp_get_classes()';
		
		return databaseHandler::getAll( $sql );
	}
	
	public static function getSpecificClasses( $ids )
	{
		return procedureHandler::getAll( 'tgp_get_specific_classes', array( ':inIDS' => $ids ) );
	}
	
	public static function getClass( $cID )
	{
		$cID = intval( $cID );
		
		if( $cID < 1 )
			return false;
			
		return procedureHandler::getRow( 'tgp_get_class', array( ':cID' => $cID ) );
	}
	
	public static function getClassTitles( $programID, $categoryID )
	{		
		$sql = 'tgp_get_class_titles';
		$params = array();
		
		if( $programID > 0 )
		{
			$sql = 'tgp_get_program_class_titles';
			$params = array( ':pID' => $programID );						
			
			if( $categoryID > 0 )
			{
				$sql = 'tgp_get_category_class_titles';
				$params = array( ':cID' => $categoryID );				
			}
		}
//		return procedureHandler::getAll( $sql, $params );	
		$sID = seasonModel::getCurrentID();
		
		$sql = 'SELECT *
				FROM class_titles
				WHERE id NOT IN( SELECT title_id FROM tgp_classes WHERE season_id = :sID )
				ORDER BY title';
		
		$params = array( ':sID' => $sID );
		
		return databaseHandler::getAll( $sql, $params );	
	}
	
	public static function getClassGroup( $classGroupID )
	{
		return procedureHandler::getRow( 'tgp_get_class_group', array( ':classGroupID' => $classGroupID ) );
	}
	
	public static function getClassesInClassGroup( $classGroupID )
	{		
		
		return procedureHandler::getAll( 'tgp_get_classes_in_class_group', array( ':classGroupID' => $classGroupID ) );
	}
	
	public static function getPackages()
	{
		$sql = 'CALL tgp_get_packages()';
		
		return databaseHandler::getAll( $sql );
	}
	
	public static function getClassPackages( $classGroupID, $type )
	{		
		return procedureHandler::getAll( 'tgp_get_class_packages', array( ':classGroupID' => $classGroupID, ':type' => $type ) );	
	}
	
	public static function deleteCategory( $categoryID )
	{
		$categoryID = intval( $categoryID );
		
		if( $categoryID < 1 )
			return false;
			
		return procedureHandler::Execute( 'tgp_delete_category', array( ':categoryID' => $categoryID ) );
	}
	
	public static function deleteProgram( $programID )
	{
		$programID = intval( $programID );
		
		if( $programID < 1 )
			return false;
		
		return procedureHandler::Execute( 'tgp_delete_program', array( ':programID' => $programID ) );
	}
	
	public static function deleteClassTitle( $classTitleID )
	{
		$classTitleID = intval( $classTitleID );
		
		if( $classTitleID < 1 )
			return false;
			
		return procedureHandler::Execute( 'tgp_delete_class_title', array( ':classTitleID' => $classTitleID ) );
	}
	
	public static function deleteClass( $classID )
	{
		$classID = intval( $classID );
		
		if( $classID < 1 )
			return false;
			
		return classModel::delete( array( ':cID' => $classID ) );			
	}
	
	public static function setTimeFormat( $time )
	{
		list( $hour, $minute, $second ) = explode(':', $time );
		
		if( intval( $minute ) == 0 )
			$time = date( 'ga', strtotime( $time ) );
		else
			$time = date( 'g:ia', strtotime( $time ) );
		
		return $time;
	}
	
	public static function getCategoryFeaturedClasses( $cID )
	{	
		if( $cID < 1 )
			return array();
			
		return categoryModel::getCategoryFeaturedClasses( $cID ); //procedureHandler::getAll( 'tgp_get_category_featured_classes', array( ':categoryID' => $cID ) );
	}

	
	public static function getClassTitleClasses( $ctID, $cID, $seasonID = null )
	{
		if( $seasonID == null )
			$sID = seasonModel::getCurrentID();
		else
			$sID = $seasonID;
		
		$sql = 'SELECT tc.* 
				FROM tgp_classes tc
				WHERE tc.title_id = :ctID AND tc.class_id != :cID AND season_id = :sID
				ORDER BY tc.weekday, tc.start_time';
				
		$params = array( ':ctID' => $ctID, ':cID' => $cID, ':sID' => $sID  );
		
		return databaseHandler::getAll( $sql, $params );
	}
}