<?php
class classSignUp
{
	public $mP = array( 'relation' => '' );
	public $mReq = array( 'relation' => true );
	public $mErrors = array( 'relation' => false );
	public $mClassInfo;
	
	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_class_id' ] ) || !isset( $_GET[ 'option' ] ) )
		{
			header( 'Location:'.Link::Build( 'index.php?action=weekly' ) );
			exit;
		}
		
		$this->mClassID = sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
		$this->mSeasonPart = sanitize::sani( $_GET[ 'option' ], 'STRING' );		
		
		if( isset( $_POST[ 'tgp_class_sign_up' ] ) )
			$this->redirect();
	}
	
	public function init()
	{
		$this->mClassInfo = classModel::get( array( ':cID' => $this->mClassID ) );
		
		$this->setClassInfo();
	}
	
	
	private function redirect()
	{		
		if( !isset( $_POST[ 'tgp_class_sign_up' ] ) )
			return;
		
		$this->mP = sanitize::filterInputs( 'POST', array( 'relation' => FILTER_SANITIZE_STRING ) );
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );

		//load the class info and who is registering the student		
		$_SESSION[ 'class_info' ] = array( 'class_id' => $this->mClassID, 'class_part' => $this->mSeasonPart );	
		
		
		
		switch( $this->mP[ 'relation' ] )
		{
			case 'PG':
				$_SESSION[ 'register_who' ] = 'Parent/Legal Guardian';
				header( 'Location:'.Link::Build( 'index.php?action=classSignChild&signChild' ) );
				exit;
				
			case 'M':
				$_SESSION[ 'register_who' ] = 'Myself';
				header( 'Location:'.Link::Build( 'index.php?action=classSignAdult&signAdult' ) );
				exit;
					
			case 'C' || 'R':
				$_SESSION[ 'register_who' ] = 'Relative/Caregiver';
				header( 'Location:'.Link::Build( 'index.php?action=classSignChild&signChild' ) );
				exit;
						
			default:
				return;
		}
		
	}	
	
	private function setCLassInfo()
	{
		$c = &$this->mClassInfo;
		
		$c[ 'start_time' ] = date( 'g:ia', strtotime( $c[ 'start_time' ] ) );
		
		switch( $this->mSeasonPart )
		{
			case 'First':
				$c[ 'begin' ] = date( 'M jS, Y', strtotime( $c[ 'start_date' ] ) );
				$c[ 'end' ] = date( 'M jS, Y', strtotime( '+8 Weeks', strtotime( $c[ 'start_date' ] ) ) );
				$c[ 'Price' ] = $c[ '9WeekPrice' ];
				break;
				
			case 'Last':
				$c[ 'begin' ] = date( 'M jS, Y', strtotime( $c[ 'start_date' ] ) );
				$c[ 'end' ] = date( 'M jS, Y', strtotime( '+9 Weeks', strtotime( $c[ 'start_date' ] ) ) );
				$c[ 'Price' ] = $c[ '9WeekPrice' ];
				break;
				
			default:
				$c[ 'begin' ] = date( 'M jS, Y', strtotime( $c[ 'start_date' ] ) );
				$c[ 'end' ] = date( 'M jS, Y', strtotime( $c[ 'end_date' ] ) );
				$c[ 'Price' ] = $c[ 'price' ];
		}
	}
}
?>