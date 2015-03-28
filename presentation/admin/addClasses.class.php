<?php
class addClasses
{
	public $mP 			= array( ':tID' => '', ':year' => '', ':sTime' => '', ':eTime' => '', ':wDay' => '', ':sDate' => '', ':eDate' => '', ':sID' => '', ':cID' => '', ':pID' => '', ':Price' => '' , ':pFeatured' => 'N', ':cFeatured' => 'N', ':Type' => '' );
	private $_mRequired = array( ':tID' => true, ':year' => true, ':sTime' => true, ':eTime' => true, ':wDay' => true, ':sDate' => true, ':eDate' => true, ':sID' => true, ':cID' => true, ':pID' => true, ':Price' => true , ':pFeatured' => true, ':cFeatured' => true, ':Type' => true );
	
	public $mLinks = array();
	
	public $mNexSeasons;
	public $mCurrentSeason;
	public $mClassTitles;
	public $mWeekDays = array( 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' );
	public $mLinkToNewSeason;
	
	public function __construct()
	{
		if( !user::isAdmin() )
		{
			header( 'Location:index.php' );
			exit;
		}
		
		if( isset( $_POST[ 'tgp_classes_add' ]  ) )
			$this->addClasses();
	}
	
	public function init()
	{
		$this->mClassTitles 	= weeklyScheduleModel::get();
		
		$this->mCurrentSeason 	= seasonModel::getCurrent();
		$this->mNextSeasons 	= seasonsModel::getNextSeasons();
		
		if( is_array( $this->mCurrentSeason ) )
			$this->mCurrentSeason[ 'title' ] = $this->mCurrentSeason[ 'season' ].' '.$this->mCurrentSeason[ 'year' ];
			
		$this->setTitle();
		
		$this->mLinkToNewSeason = Link::Build( 'index.php?action=addSeason' );
		$this->mLinkToAddNewSeason = Link::Build( 'api/admin/seasons/season/add.php' );
		$this->setLinks();
	}	
	
	public function setLinks()
	{
		$this->mLinks[] = array( 'title' => '&laquo;Admin', 'link' => Link::Build( 'admin' ) );
		$this->mLinks[] = array( 'title' => '&laquo;Classes', 'link' => Link::Build( 'admin/classes' ) );
		
		$T = &$this->mClassTitles;
		$size = sizeof( $T );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$T[ $i ][ 'link' ] = Link::Build( 'admin/programs/'.$T[ $i ][ 'program_id' ].'/categories/'.$T[ $i ][ 'category_id' ].'/class-groups/'.$T[ $i ][ 'id' ]);
		}
	}
	
	private function setTitle()
	{
		$S = &$this->mNextSeasons;
		$size = sizeof( $S );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$S[ $i ][ 'title' ] = $S[ $i ][ 'season' ].' '.$S[ $i ][ 'year' ];
		}
	}
	
	private function addClasses()
	{
		if( !isset( $_POST[ 'tgp_classes_add' ] ) || !isset( $_POST[ 'tgp_addClass_season' ] ) )
			return;

			
		//if season is not set you wont be able to set up any classes	
		foreach( $_POST[ 'tgp_addClass_season' ] AS $sID )
		{
			$this->mP[ ':sID' ] = sanitize::sani( $sID, 'INTIGER' );
			
			$season = seasonModel::get( $this->mP[ ':sID' ] );
			
			//loop all the class titles
			foreach( $_POST[ 'tgp_classes_titles' ]  AS $titles )
			{
				//split and grab class title id: ctID, category id: cID, and program id: pID
				list( $ctID, $cID, $pID ) = explode( ':', $titles );

				
				
				$this->mP[ ':tID' ] = sanitize::sani( $ctID, 'INTIGER' );
				$this->mP[ ':cID' ] = sanitize::sani( $cID, 'INTIGER' );
				$this->mP[ ':pID' ] = sanitize::sani( $pID, 'INTIGER' );
				
				$ct = catalog::getClassGroup( $this->mP[ ':tID' ] );
				
				$this->mP[ ':Price' ] = $ct[ 'price' ];
				$this->mP[ ':Type' ] = $ct[ 'type' ];
				
				$this->mP[ ':year' ] = date( 'Y', strtotime( $season[ 'start_date' ] )  );
				
				//loop through the week to see if there are any new times input it
				foreach( $this->mWeekDays AS $dName )
				{
					//grab new class times for the a specific class title
					$n_index = 'tgp_'.$this->mP[ ':tID' ].'_'.$dName.'_new';
					
					//grab all the new times
					if( isset( $_POST[ $n_index ] ) )
					{
						foreach( $_POST[ $n_index ] AS $new )
						{
							
							if( !empty( $new ) )
							{	
								$this->mP[ ':wDay' ] = $dName;
								
								$this->mP[ ':sDate' ] = classModel::setDate( $this->mP[ ':wDay' ], $season[ 'start_date' ] );
								$this->mP[ ':eDate' ] = classModel::setDate( $this->mP[ ':wDay' ], $season[  'end_date' ] );
								
								$this->mP[ ':sTime' ] 		= date( 'H:i:s', strtotime( sanitize::sani( $new, 'STRING' ) ) );			
								$this->mP[ ':eTime' ] 		= date( 'H:i:s', strtotime( '+'.$ct[ 'total_time' ].' minutes', strtotime( $this->mP[ ':sTime' ] ) ) ); 
								
								$r = classModel::add( $this->mP );
								
								switch( $r[ 'action' ] ) 
								{
									case 'N':
										echo '<div id=exist style="background:yellow;padding:5px;">';
										echo '<p align=right><a href="javascript:hide( \'exist\');" title="close">x</a></p>';
										echo '<p><b>Class was added!</b><p>';
											print_r( $this->mP );
											echo '<p>&nbsp;</p>';
										echo '</div>';
										break;
										
									case 'E':
										echo '<div id=exist style="background:yellow;padding:5px;">';
										echo '<p align=right><a href="javascript:hide( \'exist\');" title="close">x</a></p>';
											echo '<p><b>Class already exist:</b></p>';
											print_r( $this->mP );
											echo '<p>You can see view it <a href="'.Link::Build( 'program-'.$this->mP[ ':pID' ].'/category-'.$this->mP[ ':cID' ].'/class-group-'.$this->mP[ ':tID' ].'/class-info/'.$r[ 'cID' ] ).'" target="_blank">here</a>';
											echo '<p>&nbsp;</p>';
										echo '</div>';
										break;
										
									default:
										echo '<div style="background:red;padding:5px;"><p><b>There was an error!</b><br/> We could not add your class</p></div>';
								}
							}
						}
					}
				}
				
				$e_index = 'tgp_'.$this->mP[ ':tID' ].'_exist';
				
				
				//grab all existing times for existing classes
				if( isset( $_POST[ $e_index ] ) )
				{
					foreach( $_POST[ $e_index ] AS $exist )
					{
							list( $wDay, $time ) = explode( '_', $exist );
							
							$this->mP[ ':wDay' ] = sanitize::sani( $wDay, 'STRING' );
								
							$this->mP[ ':sDate' ] = classModel::setDate( $this->mP[ ':wDay' ], $season[ 'start_date' ] );
							$this->mP[ ':eDate' ] = classModel::setDate( $this->mP[ ':wDay' ], $season[  'end_date' ] );
							
							$this->mP[ ':sTime' ] 		= date( 'H:i:s', strtotime( sanitize::sani( $time, 'STRING' ) ) );			
							$this->mP[ ':eTime' ] 		= date( 'H:i:s', strtotime( '+'.$ct[ 'total_time' ].' minutes', strtotime( $this->mP[ ':sTime' ] ) ) ); 
							
							$r = classModel::add( $this->mP );
							
							switch( $r[ 'action' ] ) 
							{
								case 'N':
									echo '<div style="background:green;padding:5px;">';
										echo '<p><b>Class Was added!</b></p>';
										print_r( $this->mP );
										echo '<p>&nbsp;</p>';
									echo '</div>';
									break;
									
								case 'E':
									echo '<div id=exist style="background:yellow;padding:5px;">';
									echo '<p align=right><a href="javascript:hide( \'exist\');" title="close">x</a></p>';
										echo '<p><b>Class already exist:</b></p>';
										print_r( $this->mP );
										echo '<p>You can see view it <a href="'.Link::Build( 'program-'.$this->mP[ ':pID' ].'/category-'.$this->mP[ ':cID' ].'/class-group-'.$this->mP[ ':tID' ].'/class-info/'.$r[ 'cID' ] ).'" target="_blank">here</a>';
										echo '<p>&nbsp;</p>';
									echo '</div>';
									break;
									
								default:
									echo '<div style="background:red;padding:5px;"><p><b>There was an error!</b><br/> We could not add your class</p>';
							}
					}
				}
				
			}		
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>