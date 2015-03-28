<?php
require_once BUSINESS_DIR.'/listModel.class.php';

class member
{
	public function __construct()
	{
		if( !isset( $_GET[ 'list_id' ] ) && !isset( $_GET[ 'member_email' ] ) )
		{
			header( 'Location:index.php?action=mailChimp' );
			exit;
		}
		
		$this->mLID = sanitize::sani( $_GET[ 'list_id' ], 'STRING' );
		$this->mEmail = sanitize::sani( $_GET[ 'member_email' ], 'EMAIL' );
		
		if( isset( $_POST[ 'mailchimp_update_member' ] ) )
			$this->update();
	}
	
	public function init()
	{
		$this->mMember = listModel::getMember( $this->mLID, $this->mEmail );		
	}
	
	private function update()
	{
		if( !isset( $_POST[ 'mailchimp_update_member' ] ) )
			return;
			
		$id = sanitize::sani( $_POST[ 'member_id' ], 'STRING' );
		$fName = sanitize::sani( $_POST[ 'FNAME' ], 'STRING' );
		$lName = sanitize::sani( $_POST[ 'LNAME' ], 'STRING' );
		$email = sanitize::sani( $_POST[ 'email' ], 'EMAIL' );
		
		listModel::updateMember( $this->mLID, $id, $email, $fName, $lName );
	}

}
?>