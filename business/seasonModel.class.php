<?php
require BUSINESS_DIR.'/newsletterFilters.class.php';

class seasonModel
{
	private function __construct()
	{
		//
	}
	
	public static function add( $mP )
	{		
		$sID = self::exist( $mP[ ':start_date' ], $mP[ ':end_date' ] );
		
		if( $sID > 0 )
			return $sID;
			
		$sql = 'INSERT INTO
				tgp_class_season( season, year, start_date, end_date )
				VALUES( :season, :year, :start_date, :end_date )';
	
		databaseHandler::Execute( $sql, $mP );
		
		return databaseHandler::getOne( 'SELECT LAST_INSERT_ID()' );		
	}
	
	public static function exist( $sDate, $eDate )
	{
		$sql = 'SELECT id 
				FROM tgp_class_season
				WHERE ( start_date BETWEEN :sDate AND :eDate ) OR ( end_date BETWEEN :sDate AND :eDate ) OR ( start_date > :sDate AND end_date > :eDate )';
		
		$params = array( ':sDate' => $sDate, ':eDate' => $eDate );
		
		return databaseHandler::getOne( $sql, $params );
	}
	
	public static function update( $mP )
	{
		if( $mP[ ':sID' ] < 1 )
			return false;
			
		$r = procedureHandler::Execute( 'tgp_season_update', $mP );
		
		if( $r > 0 )
			return true;
			
		return false;
	}
	
	public static function get( $sID )
	{
		$sql = 'SELECT season AS title, year, start_date, end_date, id 
				FROM tgp_class_season
				WHERE id = :sID';
			
		return databaseHandler::getRow( $sql, array( ':sID' => $sID ) );
	}
	
	public static function getCurrent()
	{
		$sql = 'SELECT *
				FROM tgp_class_season
				WHERE start_date <= :now AND end_date >= :now';
				
		return databaseHandler::getRow( $sql, array( ':now' => date( 'Y-m-d' ) ) );
	}
	
	public static function getNext()
	{
		$sql = 'SELECT *
				FROM tgp_class_season
				WHERE start_date >= NOW() AND end_date >= NOW()
				ORDER BY start_date LIMIT 1';
		
		return databaseHandler::getRow( $sql );
	}
	
	
	public static function getCurrentID()
	{
		$s = self::getCurrent();
		
		if( empty( $s ) )
			$s = self::getNext();
			
		return $s[ 'id' ];
	}
	
	public static function getClasses( $sID )
	{
		$sql = 'SELECT tc.*, ct.title, tcc.hexColor
				FROM tgp_classes tc
				LEFT JOIN class_titles ct ON ct.id = tc.title_id
				LEFT JOIN tgp_classes_categories tcc ON tcc.cc_id = tc.category_id
				WHERE season_id = :sID
				ORDER BY tc.weekday, tc.start_time, tc.tgp_program_id, tc.category_id, tc.title_id';
		
		return databaseHandler::getAll( $sql, array( ':sID' => $sID ) );
	}
	
	public static function getWeekdayClasses( $mP )
	{
		$sql = 'SELECT tc.*, ct.title, tcc.hexColor
				FROM tgp_classes tc
				LEFT JOIN class_titles ct ON ct.id = tc.title_id
				LEFT JOIN tgp_classes_categories tcc ON tcc.cc_id = tc.category_id
				WHERE tc.season_id = :sID AND tc.weekday = :weekday
				ORDER BY tc.start_time, tc.tgp_program_id, tc.category_id, tc.title_id';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getTitleClasses( $mP )
	{
		$sql = 'SELECT tc.*, ct.title, tcc.hexColor
				FROM tgp_classes tc
				LEFT JOIN class_titles ct ON ct.id = tc.title_id
				LEFT JOIN tgp_classes_categories tcc ON tcc.cc_id = tc.category_id
				WHERE tc.season_id = :sID AND tc.title_id = :tID
				ORDER BY tc.weekday, tc.start_time, tc.start_time, tc.tgp_program_id, tc.category_id';
		
		return databaseHandler::getAll( $sql, $mP );
	}
	
	public static function getWeekdayTitleClasses( $mP )
	{
		$sql = 'SELECT tc.*, ct.title, tcc.hexColor
				FROM tgp_classes tc
				LEFT JOIN class_titles ct ON ct.id = tc.title_id
				LEFT JOIN tgp_classes_categories tcc ON tcc.cc_id = tc.category_id
				WHERE tc.season_id = :sID AND tc.weekday = :weekday AND tc.title_id = :tID
				ORDER BY tc.start_time, tc.tgp_program_id, tc.category_id';
		
		return databaseHandler::getAll( $sql, $mP );	
	}
	
	public static function getPrevious( )
	{			
		$sql = 'SELECT *
				FROM tgp_class_season
				WHERE start_date < NOW()
				LIMIT 1';
		
		return databaseHandler::getRow( $sql );
	}
}

?>