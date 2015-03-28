<?php
class kids
{
	public $mHasKids = false;
	
	public function __construct()
	{
		
	}
	
	public function init()
	{
		$this->mKids = family::getMembers();
		
		$this->mSex = array( 'M' => 'Male', 'F' => 'Female' );
		
		$this->mLinkToAddChild = Link::Build( 'index.php?action=addMyChild' );
		$this->mLinkToAddFamily = Link::Build( 'index.php?action=addMyFamily' );
		
		$this->setLinks();
	}
	
	private function setLinks()
	{
		$K = &$this->mKids;
		$size = sizeof( $K );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$K[ $i ][ 'link' ] = Link::Build( 'my-members/'.$K[ $i ][ 'id' ] );
			$K[ $i ][ 'edit' ] = Link::Build( 'my-members/'.$K[ $i ][ 'id' ].'/edit' );
			$K[ $i ][ 'register' ] = Link::Build( 'my-members/'.$K[ $i ][ 'id' ].'/registerToClass' );
		}
			
	}
	
	
}
?>