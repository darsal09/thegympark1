<?php
class openPlayAttendance extends Controller
{
	public $mOpenPlayID;
	protected $_mRequired = array( 'openplay_id' => true, 'class_id' => true, 'date' => true, 'student_id' => true );
	
	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_openplay_id' ]  ) )
			helper::redirect( 'open-plays' );
			
		parent::__construct();		
		
		$this->mOpenPlayID = sanitize::sani( $_GET[ 'tgp_openplay_id' ], 'INTIGER' );
		
	}
}
?>