<?php
class quickLinks
{
	public $mQuickLinksContent;
	public $mQuickLinkClicked = 0;
	public $mQuickLinksAmount = 0;
	
	private $mClassID;
	private $mProgramID;
	private $mCategoryID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = intval( $_GET[ 'tgp_class_id' ] );
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = intval( $_GET[ 'tgp_program_id' ] );
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = intval( $_GET[ 'tgp_category_id' ] );
	}
	public function init()
	{
		if( $this->mCategoryID > 0 )
		{
			$sql = 'CALL tgp_get_category_classes( :categoryID )';
			$params = array( ':categoryID' => $this->mCategoryID );
		}
		else
		{
			$sql = 'CALL tgp_get_program_classes( :programID )';
			$params = array( ':programID' => $this->mProgramID );			
		}
		
		$this->mQuickLinksContent = databaseHandler::getAll( $sql, $params );
		
//		$this->sortClasses();
		$this->mQuickLinksAmount = sizeof( $this->mQuickLinksContent );
		$this->setTimeFormat();
		$this->setLinks();
	}
	private function sortClasses()
	{		
		for( $i = 0; $i < sizeof( $this->mQuickLinksContent ); $i++ )
		{
			$p_index = $this->getIndex( $this->mQuickLinksContent[ $i ][ 'weekday' ] );
		
			for( $j = ( $i + 1 ); $j < sizeof( $this->mQuickLinksContent ); $j++ )
			{
				$n_index = $this->getIndex( $this->mQuickLinksContent[ $j ][ 'weekday' ] );
				
				if( $p_index > $n_index )
				{
					$class = $this->mQuickLinksContent[ $i];
					$this->mQuickLinksContent[ $i ] = $this->mQuickLinksContent[ $j ];
					$this->mQuickLinksContent[ $j ] = $class;
				}
			}
		}
	}
	private function getIndex( $day )
	{
		$weekdays = array( '', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' );
		
		for( $i = 0; $i < sizeof( $weekdays ); $i++ )
			if( $weekdays[ $i ] == $day )
				return $i;
				
		return -1;
	}
	private function setTimeFormat()
	{
		for( $i = 0; $i < sizeof( $this->mQuickLinksContent ); $i++ )
		{
			$this->mQuickLinksContent[ $i ][ 'weekday' ] = substr( $this->mQuickLinksContent[ $i ][ 'weekday' ], 0, 3 );
			
			list( $hour, $minute, $second ) = explode(':', $this->mQuickLinksContent[ $i ][ 'start_time' ] );
			
			if( intval( $minute ) == 0 )
				$this->mQuickLinksContent[ $i ][ 'start_time' ] = date( 'ga', strtotime( $this->mQuickLinksContent[ $i ][ 'start_time' ] ) );
			else
				$this->mQuickLinksContent[ $i ][ 'start_time' ] = date( 'g:ia', strtotime( $this->mQuickLinksContent[ $i ][ 'start_time' ] ) );

			list( $hour, $minute, $second ) = explode(':', $this->mQuickLinksContent[ $i ][ 'end_time' ] );
			
			if( intval( $minute ) == 0 )
				$this->mQuickLinksContent[ $i ][ 'end_time' ] = date( 'ga', strtotime( $this->mQuickLinksContent[ $i ][ 'end_time' ] ) );
			else
				$this->mQuickLinksContent[ $i ][ 'end_time' ] = date( 'g:i a', strtotime( $this->mQuickLinksContent[ $i ][ 'end_time' ] ) );
		}
	}
	public function setLinks()
	{
		for( $i = 0; $i < sizeof( $this->mQuickLinksContent ); $i++ )
			$this->mQuickLinksContent[ $i ][ 'class_link' ] = Link::Build( 'program-'.$this->mQuickLinksContent[ $i ][ 'tgp_program_id' ].'/category-'.$this->mQuickLinksContent[ $i ][ 'category_id' ].'/class-info/'.$this->mQuickLinksContent[ $i ][ 'class_id' ] );				
	}
}
?>