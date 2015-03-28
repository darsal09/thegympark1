<?php
class complete
{
	
	public $mClass;
	public $mParticipant;
	public $mPayment;
	public $mEmailSucceed = false;
	
	private $_mStudentID;
	private $_mClassID;
	public $mType;
	
	public function __construct()
	{
		if( !isset( $_SESSION[ 'complete' ] ) )
		{
			echo '<p class=error>There is an error in the registration process</p>';
			return;
		}
		
		if( isset( $_SESSION[ 'complete'][ 'student_id' ] ) )
			$this->_mStudentID = sanitize::sani( $_SESSION[ 'complete' ][ 'student_id' ], 'INTIGER' );
			
		if( isset( $_SESSION[ 'complete' ][ 'class_id' ] ) )
			$this->_mClassID = sanitize::sani( $_SESSION[ 'complete' ][ 'class_id' ], 'INTIGER' );
				
	}
	
	public function init()
	{
		
		$this->mClass = classModel::get( array( ':cID' => $this->_mClassID ) );
		$this->mParticipant = student::get( array( ':sID' => $this->_mStudentID ) );
		
		$this->mPayment = classModel::getPayment( array( ':cID' => $this->_mClassID, ':sID' => $this->_mStudentID ) );
		
		$this->setParameters();
	}
	
	public function setParameters()
	{
		$C = &$this->mClass;
		
		switch( sanitize::sani( $_SESSION[ 'complete' ][ 'class_part' ], 'STRING' ) )
		{
			case 'First':
				$C[ 'end_date' ] = date( 'Y-m-d', strtotime( '+8 weeks', strtotime( $C[ 'start_date' ] ) ) );
				break;
				
			case 'Last':
				$C[ 'start_date' ] = date( 'Y-m-d', strtotime( '+9 weeks', strtotime( $C[ 'start_date' ] ) ) );
				break;
				
			default:
				
		}
	}
}
?>