<?php
class registerToClass
{
	public $mTitles;
	public $mSeasons;
	public $mSeasonID;
	public $mClassTitleID;
	public $mClassID;
	public $mMemberID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_class_id' ] ) )
			$this->mClassID = sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'tgp_class_title_id' ] ) )
			$this->mClassTitleID = sanitize::sani( $_GET[ 'tgp_class_title_id' ], 'INTIGER' );
		
		if( isset( $_GET[ 'my_member_id' ] ) )
			$this->mMemberID = sanitize::sani( $_GET[ 'my_member_id' ], 'INTIGER' );
			
		if( isset( $_GET[ 'season_id' ]  ) )
			$this->mSeasonID = sanitize::sani( $_GET[ 'season_id' ], 'INTIGER' );
		
			
	}
	
	public function init()
	{
		if( !isset( $_GET[ 'tgp_class_title_id' ] ) )
				$this->mTitles = classTitlesModel::getCurrentSeason();	
		else 
			$this->mTitles = classTitleModel::getCurrentSeason();
			
		$this->setClasses();
		
		if( !isset( $_GET[ 'season_id' ] ) )
		{
			$this->mSeasons = seasonsModel::getNextSeasons();
			
			$this->setSeasonLinks();
		}
	}
	
	private function setClasses()
	{
		$T = &$this->mTitles;
		$size = sizeof( $T );
		
		for( $i = 0; $i < $size; $i++ )
		{
			if( !isset( $_GET[ 'season_id' ] ) )
				$T[ $i ][ 'classes' ] = classTitleModel::getCurrentClasses( array( ':tID' => $T[ $i ][ 'id' ], ':mID' => $this->mMemberID ) );
			else
				$T[ $i ][ 'classes' ] = classTitleModel::getSeasonClassesStudentNotIn( array( ':ctID' => $T[ $i ][ 'id' ], ':sID' => $this->mSeasonID, ':mID' => $this->mMemberID ) );
			
			$C = &$T[ $i ][ 'classes' ];
			$k_size = sizeof( $C );
			
			for( $k = 0; $k < $k_size; $k++ )
			{
				$C[ $k ][ 'link' ] = Link::Build( 'index.php?tgp_class_id='.$C[ $k ][ 'class_id' ].'&action=registerPayment' );
				$C[ $k ][ 'link_full' ] = Link::Build( 'index.php?my_member_id='.$this->mMemberID.'&tgp_class_id='.$C[ $k ][ 'class_id' ].'&option=Full&action=registerPayment' );
				$C[ $k ][ 'link_first' ] = Link::Build( 'index.php?my_member_id='.$this->mMemberID.'&tgp_class_id='.$C[ $k ][ 'class_id' ].'&option=First&action=registerPayment' );
				$C[ $k ][ 'link_last' ] = Link::Build( 'index.php?my_member_id='.$this->mMemberID.'&tgp_class_id='.$C[ $k ][ 'class_id' ].'&option=Last&action=registerPayment' );
			}
		}
	}
	
	private function setSeasonLinks()
	{
		$S = &$this->mSeasons;
		$size = sizeof( $S );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$S[ $i ][ 'link' ] = Link::Build( 'index.php?my_member_id='.$this->mMemberID.'&season_id='.$S[ $i ][ 'id' ].'&action=registerToClass' );
		}
	}
}
?>