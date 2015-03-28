<?php
class classSignChild
{	
	public $mP 		= array( 'first_name' => '', 'last_name' => '', 'dob' => '', 'gender' => '', 'parent1_name' => '', 'parent1_cell_phone' => '', 'parent1_work_phone' => '', 'parent1_email' => '', 'parent2_name' => '', 'parent2_cell_phone' => '', 'parent2_work_phone' => '', 'parent2_email' => '', 'street' => '', 'street1' => '', 'city' => '', 'state' => '', 'zip' => '' );
	public $mReq 	= array( 'first_name' => true, 'last_name' => true, 'dob' => true, 'gender' => true, 'parent1_name' => true, 'parent1_fields' => array( 'parent1_cell_phone', 'parent1_work_phone', 'parent1_email' ), 'parent2_name' => true, 'parent2_fields' => array( 'parent2_cell_phone', 'parent2_work_phone', 'parent2_email' ),  'street' => true, 'street1' => false, 'city' => true, 'state' => true, 'zip' => true );
	public $mErrors = array( 'first_name' => false, 'last_name' => false, 'dob' => false, 'gender' => false, 'parent1_name' => false, 'parent1_fields' => false, 'parent2_name' => false, 'parent2_fields' => false, 'street' => false, 'street1' => false, 'city' => false, 'state' => false, 'zip' => false );
	public $mClassInfo;
	public $mSeasonPart;
	
	public $mLinkTosign;
	
	private $_mClassID;
	
	public function __construct()
	{
		list( $this->_mClassID, $this->mSeasonPart ) = registrationHelper::hasClassInfo();
				
		if( isset( $_POST[ 'class_sign_up_child_step1' ] ) )
			$this->saveStep1();		
	}
	
	public function init()
	{
		$this->mLinkToSign = Link::Build( 'index.php?action=classSignUp' );
		$this->mClassInfo = classModel::get( array( ':cID' => $this->_mClassID ) );
		$this->mRelation = $_SESSION[ 'register_who' ];
		
		$this->setClassInfo();
		
	}
	
	private function saveStep1()
	{
		if( !isset( $_POST[ 'class_sign_up_child_step1' ] ) )
			return;
			
		$this->mP = sanitize::filterInputs( 'POST', array( 'first_name' => FILTER_SANITIZE_STRING, 'last_name' => FILTER_SANITIZE_STRING, 'dob' => FILTER_SANITIZE_STRING, 'gender' => FILTER_SANITIZE_STRING ) );
		
		
		$this->mErrors = sanitize::hasErrors( $this->mP, $this->mReq, $this->mErrors );
		
		if( in_array( true, $this->mErrors ) )
			return;
			
		$_SESSION[ 'participant_info' ] = $this->mP;
		
		header( 'Location:'.Link::Build( 'index.php?action=classSignChildStep2' ) );
		exit;
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