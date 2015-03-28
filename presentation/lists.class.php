<?php
require_once BUSINESS_DIR.'/MCAPI.class.php';
require_once BUSINESS_DIR.'/listModel.class.php';

class lists
{
	public $mLID;
	public $mList;
	public $mLinkToAddMember;
	
	public function __construct()
	{
		if( !isset( $_GET[ 'list_id' ] ) )
		{
			header( 'Location:index.php?action=mailchimp' );
			exit;
		}
		
		$this->mLID = sanitize::sani( $_GET[ 'list_id' ], 'STRING' );
		
		if( isset( $_GET[ 'option' ] ) )
			$this->options();
	}
	
	public function init()
	{
		$this->mList = listModel::getMembers( $this->mLID );
		$this->mHistory = listModel::growthHistory( $this->mLID );		
		$this->setLinks();
	}
	
	private function setLinks()
	{
		$L = &$this->mList[ 'data' ];
		$size = sizeof( $L );

		for( $i = 0; $i < $size; $i++ )
		{
			$L[ $i ][ 'remove' ] = Link::Build( 'index.php?list_id='.$this->mLID.'&member_email='.$L[ $i ][ 'email' ].'&action=list&option=remove' );
			$L[ $i ][ 'update' ] = Link::Build( 'index.php?list_id='.$this->mLID.'&member_email='.$L[ $i ][ 'email' ].'&action=list&option=update' );
		}
		
		$this->mLinkToAddMember = Link::Build( 'index.php?list_id='.$this->mLID.'&action=addMember' );

	}
	
	private function options( )
	{
		if( !isset( $_GET[ 'option' ] ) )
			return;
			
		$email = sanitize::sani( $_GET[ 'member_email' ], 'STRING' );
		
		switch( sanitize::sani( $_GET[ 'option' ], 'STRING' ) )
		{
			case 'remove':
				listModel::unsubscribeMember( $this->mLID, $email );
				break;
				
			case 'update':
				header( 'Location:'.Link::Build( 'index.php?list_id='.$this->mLID.'&member_email='.$email.'&action=updateMember' ) );
				exit;
				break;
				
			default:
				//
		}
	}
}
?>