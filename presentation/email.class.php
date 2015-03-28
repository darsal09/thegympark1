<?php
class email
{
	public $mFilters;
	public $mP = array( ':subject' => '', ':message' => '');
	public $mErrors = array( ':subject' => false, ':message' => false );
	public $mAddress;
	
	public  $mMenu = array();
	public $mSkip = false;
	public $mValue = 0;
	
	private $_mRequired = array( ':subject' => true, ':message' => true );
	
	public function __construct()
	{
		if( isset( $_GET[ 'status' ] ) )
			if( sanitize::sani( $_GET[ 'status' ], 'INTIGER' ) == 1 )
				echo '<h1 class=successful>Email was sent!</h1>';	
		
		if( isset( $_GET ) )
			$this->getValues();
			
		if( isset( $_POST[ 'tgp_email_send' ] ) )
			$this->sendEmail();
	}
	
	public function init()
	{
		$this->mFilters = newsletters::getFilters();
		
		$this->setMenu();
		$this->mAddress = Link::Build( '' );
	}
	
	private function setMenu()
	{
		$this->mMenu[ sizeof( $this->mMenu ) ] = array( 'link' => Link::Build( 'admin' ), 'title' => 'Admin');
	}
	
	private function sendEmail()
	{
		if( !isset( $_POST[ 'tgp_email_send' ] ) )
			return;
			
		$this->mP[ ':subject' ] = sanitize::sani( $_POST[ 'tgp_email_subject' ], 'STRING' );
		$this->mP[ ':message' ] = $_POST[ 'tgp_email_message' ];
		
		switch( sanitize::sani( $_POST[ 'tgp_email_filters' ], 'STRING' ) )
		{
			case 'Age': //already tested and ready to go
				$flag = emails::sendEmailToAge( sanitize::sani( $_POST[ 'tgp_age_start' ], 'INTIGER' ), sanitize::sani( $_POST[ 'tgp_age_end' ], 'INTIGER' ), $this->mP );
				break;
			
			case 'Category': //already tested and ready to go
				$flag = emails::sendEmailToCategory( $_POST[ 'tgp_category' ], $this->mP );
				break;
				
			case 'Class': //already tested and is working fine
				$flag = emails::sendEmailToClass( $_POST[ 'tgp_class' ], $this->mP );
				break;
				
			case 'Class Title': //already tested and is working fine
				$flag = emails::sendEmailToClassTitle( $_POST[ 'tgp_classtitle' ], $this->mP );
				break;
				
			case 'Day': //already tested and is workingfine
				$flag = emails::sendEmailToDay( $_POST[ 'tgp_newsletter_days' ], $this->mP );
				break;
				
			case 'Program': //already tested and is working fine
				$flat = emails::sendEmailToPrograms( $_POST[ 'tgp_program' ], $this->mP );
				break;
				
			case 'Month': //tested and is working fine. This filter collects months range to send emails to those people whose birthday's fall between the month range
				$flag = emails::sendEmailToMonth( sanitize::sani( $_POST[ 'tgp_newsletter_month_start' ], 'INTIGER' ), sanitize::sani( $_POST[ 'tgp_newsletter_month_end' ], 'INTIGER' ), $this->mP );
				break;

			case 'Single': //tested and is workingfine
			
				$this->mP[ ':email' ] = sanitize::sani( $_POST[ 'tgp_filter_single_email' ], 'STRING' );
				$this->mP[ ':name' ] = sanitize::sani( $_POST[ 'tgp_filter_single_name' ], 'STRING'  );
				
				list( $first, $last ) = explode( ' ', $this->mP[ ':name' ] );
				
				$this->mP[ ':sID' ] = 0;
				
				$sID = student::getID( array( ':first' => $first, ':last' => $last, ':email' => $this->mP[ ':email' ] ) );				
				
				if( $sID > 0 )
					$this->mP[ ':sID' ] = $sID; 
					
				emails::sendSingle( $this->mP );				
				break;
				
			case 'Time': //tested and is workingfine
				$flag = emails::sendEmailToTime( sanitize::sani( $_POST[ 'tgp_filter_start_time' ], 'STRING' ), sanitize::sani( $_POST[ 'tgp_filter_end_time' ], 'STRING' ), $this->mP );
				break;
				
			default:
				helepr:redirect( 'admin/email' );
		}
		
		//header( 'Location:'.Link::Build( 'index.php?action=email&status=1' ) );
		//exit;
		
	}
	
	private function getValues()
	{
		if( isset( $_GET[ 'tgp_program_id' ] ) )
		{
			$this->mType = 'Program';
			$this->mName = 'tgp_program';
			$this->mValue = sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' );
			$this->mSkip = true;
		}

		if( isset( $_GET[ 'tgp_category_id' ] ) )
		{
			$this->mType = 'Category';
			$this->mName = 'tgp_category';
			$this->mValue = sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' );
			$this->mSkip = true;
		}
		
		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
		{
			$this->mType = 'Class Title';
			$this->mName = 'tgp_classtitle';
			$this->mValue = sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );
			$this->mSkip = true;
		}
		
		if( isset( $_GET[ 'tgp_class_id' ] ) )
		{
			$this->mType = 'Class';
			$this->mName = 'tgp_class';
			$this->mValue = sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
			$this->mSkip = true;
		}
	}
	
	public function __destruct()
	{
		
	}
}
?>